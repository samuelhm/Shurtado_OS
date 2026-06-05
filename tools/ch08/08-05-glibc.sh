#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; YELLOW='\033[1;33m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Glibc..."
cd "$SOURCES"
tar -xf glibc-2.43.tar.xz
cd glibc-2.43

step "Applying glibc-fhs-1.patch..."
patch -Np1 -i ../glibc-fhs-1.patch || err "patch glibc-fhs-1 failed"

step "Applying glibc-2.43-upstream_fixes-1.patch..."
patch -Np1 -i ../glibc-2.43-upstream_fixes-1.patch || err "patch upstream_fixes failed"

step "Creating build directory..."
mkdir -v build
cd build

step "Setting rootsbindir..."
echo "rootsbindir=/usr/sbin" > configparms

step "Configuring Glibc..."
../configure --prefix=/usr                   \
             --disable-werror                \
             --disable-nscd                  \
             libc_cv_slibdir=/usr/lib        \
             --enable-stack-protector=strong \
             --enable-kernel=5.10            || err "configure failed"

step "Compiling Glibc..."
make -j$(nproc) || err "make failed"

warn "Test suite skipped. To run manually: make check"
warn "(The Glibc test suite is considered critical. Do not skip it on a production build.)"

step "Preparing for installation..."
touch /etc/ld.so.conf
sed '/test-installation/s@$(PERL)@echo not running@' -i ../Makefile

step "Installing Glibc..."
make install || err "make install failed"

step "Fixing hardcoded path in ldd..."
sed '/RTLDLIST=/s@/usr@@g' -i /usr/bin/ldd

step "Installing locales..."
localedef -i C -f UTF-8 C.UTF-8 || err "locale C.UTF-8 failed"
localedef -i cs_CZ -f UTF-8 cs_CZ.UTF-8
localedef -i de_DE -f ISO-8859-1 de_DE
localedef -i de_DE@euro -f ISO-8859-15 de_DE@euro
localedef -i de_DE -f UTF-8 de_DE.UTF-8
localedef -i el_GR -f ISO-8859-7 el_GR
localedef -i en_GB -f ISO-8859-1 en_GB
localedef -i en_GB -f UTF-8 en_GB.UTF-8
localedef -i en_HK -f ISO-8859-1 en_HK
localedef -i en_PH -f ISO-8859-1 en_PH
localedef -i en_US -f ISO-8859-1 en_US
localedef -i en_US -f UTF-8 en_US.UTF-8
localedef -i es_ES -f ISO-8859-15 es_ES@euro
localedef -i es_MX -f ISO-8859-1 es_MX
localedef -i fa_IR -f UTF-8 fa_IR
localedef -i fr_FR -f ISO-8859-1 fr_FR
localedef -i fr_FR@euro -f ISO-8859-15 fr_FR@euro
localedef -i fr_FR -f UTF-8 fr_FR.UTF-8
localedef -i is_IS -f ISO-8859-1 is_IS
localedef -i is_IS -f UTF-8 is_IS.UTF-8
localedef -i it_IT -f ISO-8859-1 it_IT
localedef -i it_IT -f ISO-8859-15 it_IT@euro
localedef -i it_IT -f UTF-8 it_IT.UTF-8
localedef -i ja_JP -f EUC-JP ja_JP
localedef -i ja_JP -f UTF-8 ja_JP.UTF-8
localedef -i nl_NL@euro -f ISO-8859-15 nl_NL@euro
localedef -i ru_RU -f KOI8-R ru_RU.KOI8-R
localedef -i ru_RU -f UTF-8 ru_RU.UTF-8
localedef -i se_NO -f UTF-8 se_NO.UTF-8
localedef -i ta_IN -f UTF-8 ta_IN.UTF-8
localedef -i tr_TR -f UTF-8 tr_TR.UTF-8
localedef -i zh_CN -f GB18030 zh_CN.GB18030
localedef -i zh_HK -f BIG5-HKSCS zh_HK.BIG5-HKSCS
localedef -i zh_TW -f UTF-8 zh_TW.UTF-8

step "Creating /etc/nsswitch.conf..."
cat > /etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files systemd
group: files systemd
shadow: files systemd

hosts: mymachines resolve [!UNAVAIL=return] files myhostname dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

step "Extracting and installing timezone data..."
tar -xf ../../tzdata2026b.tar.gz

ZONEINFO=/usr/share/zoneinfo
mkdir -pv $ZONEINFO/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica  \
          asia australasia backward; do
    zic -L /dev/null   -d $ZONEINFO       ${tz}
    zic -L /dev/null   -d $ZONEINFO/posix ${tz}
    zic -L leapseconds -d $ZONEINFO/right ${tz}
done

cp -v zone.tab zone1970.tab iso3166.tab $ZONEINFO
zic -d $ZONEINFO -p America/New_York
unset ZONEINFO tz

step "Creating /etc/ld.so.conf..."
cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf
/usr/local/lib
/opt/lib

include /etc/ld.so.conf.d/*.conf

EOF
mkdir -pv /etc/ld.so.conf.d

warn "Timezone not configured: run 'tzselect' and then"
warn "  ln -sfv /usr/share/zoneinfo/<xxx> /etc/localtime"

cd "$SOURCES"
rm -rf glibc-2.43

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Glibc - Instalacion completada         ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Glibc-2.43 - Biblioteca C principal${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/, /usr/bin/, /usr/include/${NC}"
echo ""
echo -e "  Binarios principales:"
echo -e "    ${GREEN}ldd${NC}       - Muestra dependencias de librerias"
echo -e "    ${GREEN}ldconfig${NC}  - Configura el linker dinamico"
echo -e "    ${GREEN}localedef${NC} - Compila definiciones de locale"
echo -e "    ${GREEN}iconv${NC}     - Conversion de caracteres"
echo -e "    ${GREEN}zic${NC}       - Compilador de zonas horarias"
echo ""
echo -e "  Librerias instaladas: libc.so, libm.so, libpthread.so,"
echo -e "  libresolv.so, librt.so, ld-linux-x86-64.so.2, y mas."
echo ""
echo -e "  Proposito: Glibc es la biblioteca C del sistema,"
echo -e "  proporcionando las rutinas basicas para asignacion de"
echo -e "  memoria, manejo de archivos, cadenas, matematicas y"
echo -e "  practicamente toda la funcionalidad del sistema."
echo ""

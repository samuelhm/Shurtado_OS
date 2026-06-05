#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }
check() { echo -e "${YELLOW}[CHECK]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting glibc-2.43..."
cd "$SOURCES"
tar -xf glibc-2.43.tar.xz
cd glibc-2.43

step "Creating LSB and dynamic loader symlinks..."
case $(uname -m) in
    i?86)   ln -sfv ld-linux.so.2 "$LFS/lib/ld-lsb.so.3" || err "symlink failed" ;;
    x86_64) ln -sfv ../lib/ld-linux-x86-64.so.2 "$LFS/lib64"             || err "symlink lib64 failed"
            ln -sfv ../lib/ld-linux-x86-64.so.2 "$LFS/lib64/ld-lsb-x86-64.so.3" || err "symlink lsb failed" ;;
esac

step "Applying glibc-fhs patch..."
patch -Np1 -i ../glibc-fhs-1.patch || err "FHS patch failed"

step "Applying glibc upstream fixes patch..."
patch -Np1 -i ../glibc-2.43-upstream_fixes-1.patch || err "upstream fixes patch failed"

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Setting rootsbindir to /usr/sbin..."
echo "rootsbindir=/usr/sbin" > configparms

step "Configuring Glibc..."
../configure                             \
      --prefix=/usr                      \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --disable-nscd                     \
      libc_cv_slibdir=/usr/lib           \
      --enable-kernel=5.10               || err "configure failed"

step "Compiling Glibc..."
make -j$(nproc) || err "make failed"

step "Installing Glibc (DESTDIR=\$LFS)..."
make DESTDIR=$LFS install || err "make install failed"

step "Fixing hardcoded path in ldd..."
sed '/RTLDLIST=/s@/usr@@g' -i "$LFS/usr/bin/ldd"

echo ""
echo -e "${YELLOW}----------------------------------------${NC}"
echo -e "${YELLOW}  Running sanity checks...${NC}"
echo -e "${YELLOW}----------------------------------------${NC}"

check "1/5: Checking dynamic linker interpreter..."
echo 'int main(){}' | $LFS_TGT-gcc -x c - -v -Wl,--verbose &> dummy.log
LD_OUT=$(readelf -l a.out | grep ': /lib')
echo "   $LD_OUT"
if echo "$LD_OUT" | grep -q '/lib'; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "Dynamic linker check FAILED"
fi

check "2/5: Checking start files (crt)..."
CRT_OUT=$(grep -E -o "$LFS/lib.*/S?crt[1in].*succeeded" dummy.log)
echo "   $CRT_OUT"
if echo "$CRT_OUT" | grep -q 'succeeded'; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "Start files check FAILED"
fi

check "3/5: Checking compiler header search paths..."
HDR_OUT=$(grep -B3 "^ $LFS/usr/include" dummy.log)
echo "$HDR_OUT"
if echo "$HDR_OUT" | grep -q "$LFS/usr/include"; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "Header search path check FAILED"
fi

check "4/5: Checking linker search paths..."
LNK_OUT=$(grep 'SEARCH.*/usr/lib' dummy.log | sed 's|; |\n|g')
echo "$LNK_OUT"
if echo "$LNK_OUT" | grep -q 'SEARCH_DIR'; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "Linker search path check FAILED"
fi

check "5/5: Checking correct libc..."
LIBC_OUT=$(grep "/lib.*/libc.so.6 " dummy.log)
echo "   $LIBC_OUT"
if echo "$LIBC_OUT" | grep -q 'succeeded'; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "libc check FAILED"
fi

check "6/5: Checking GCC uses correct dynamic linker..."
DL_OUT=$(grep found dummy.log)
echo "   $DL_OUT"
if echo "$DL_OUT" | grep -q 'ld-linux'; then
    echo -e "   ${GREEN}PASS${NC}"
else
    err "Dynamic linker in GCC check FAILED"
fi

echo ""
echo -e "${GREEN}  All sanity checks PASSED.${NC}"

step "Cleaning up test files..."
rm -v a.out dummy.log

cd "$SOURCES"
rm -rf glibc-2.43

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Glibc - Instalación completada        ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Glibc-2.43 (GNU C Library)${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/usr/{lib,bin,include}${NC}"
echo ""
echo -e "  Librerías principales:"
echo -e "    ${GREEN}libc.so.6${NC}        - La biblioteca C (malloc, printf, open, etc.)"
echo -e "    ${GREEN}libm.so.6${NC}         - Funciones matemáticas (sin, cos, sqrt)"
echo -e "    ${GREEN}libpthread.so.0${NC}   - Hilos POSIX"
echo -e "    ${GREEN}libdl.so.2${NC}        - Carga dinámica de librerías (dlopen)"
echo -e "    ${GREEN}libresolv.so.2${NC}    - Resolución DNS"
echo -e "    ${GREEN}libnss_*.so.2${NC}     - Name Service Switch (passwd, groups, hosts)"
echo -e "    ${GREEN}ld-linux-x86-64.so.2${NC} - Dynamic linker/loader"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ldd${NC}        - Muestra dependencias de librerías"
echo -e "    ${GREEN}ldconfig${NC}   - Configura enlaces del linker dinámico"
echo -e "    ${GREEN}sln${NC}        - Enlace simbólico estático (sin libc)"
echo -e "    ${GREEN}iconv${NC}       - Conversión de codificación de caracteres"
echo -e "    ${GREEN}iconvconfig${NC} - Caché de módulos de iconv"
echo -e "    ${GREEN}locale${NC}      - Información de locale"
echo -e "    ${GREEN}localedef${NC}   - Compilar definiciones de locale"
echo -e "    ${GREEN}getconf${NC}     - Obtener valores de configuración del sistema"
echo -e "    ${GREEN}getent${NC}      - Obtener entradas de bases de datos NSS"
echo -e "    ${GREEN}mtrace${NC}      - Depuración de malloc"
echo -e "    ${GREEN}sotruss${NC}     - Traza de llamadas a shared objects"
echo -e "    ${GREEN}tzselect${NC}    - Seleccionar zona horaria"
echo -e "    ${GREEN}zdump${NC}       - Volcado de zona horaria"
echo -e "    ${GREEN}zic${NC}         - Compilador de zona horaria"
echo -e "    ${GREEN}pldd${NC}        - Lista de objetos dinámicos de un proceso"
echo -e "    ${GREEN}gencat${NC}      - Generar catálogos de mensajes"
echo -e "    ${GREEN}pcprofiledump${NC} - Volcado de perfil de PC"
echo -e "    ${GREEN}spawni${NC}      - Helper interno de posix_spawn"
echo ""
echo -e "  Propósito: Es la biblioteca C del sistema. TODO programa"
echo -e "  en Linux enlaza contra libc. Provee malloc, printf, open,"
echo -e "  pthreads, DNS, locales, y el dynamic linker. Sin Glibc no"
echo -e "  hay sistema funcional."
echo ""

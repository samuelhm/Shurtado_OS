#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting tcl8.6.18-src..."
cd "$SOURCES"
tar -xf tcl8.6.18-src.tar.gz
cd tcl8.6.18

step "Configuring Tcl..."
SRCDIR=$(pwd)
cd unix
./configure --prefix=/usr --mandir=/usr/share/man --disable-rpath || err "configure failed"

step "Compiling Tcl..."
make -j$(nproc) || err "make failed"

step "Fixing tclConfig.sh paths..."
sed -e "s|$SRCDIR/unix|/usr/lib|"   \
    -e "s|$SRCDIR|/usr/include|"     \
    -i tclConfig.sh || err "sed tclConfig.sh failed"

step "Fixing tdbcConfig.sh paths..."
sed -e "s|$SRCDIR/unix/pkgs/tdbc1.1.13|/usr/lib/tdbc1.1.13|"      \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13/generic|/usr/include|"           \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13/library|/usr/lib/tcl8.6|"        \
    -e "s|$SRCDIR/pkgs/tdbc1.1.13|/usr/include|"                   \
    -i pkgs/tdbc1.1.13/tdbcConfig.sh || err "sed tdbcConfig.sh failed"

step "Fixing itclConfig.sh paths..."
sed -e "s|$SRCDIR/unix/pkgs/itcl4.3.7|/usr/lib/itcl4.3.7|"    \
    -e "s|$SRCDIR/pkgs/itcl4.3.7/generic|/usr/include|"         \
    -e "s|$SRCDIR/pkgs/itcl4.3.7|/usr/include|"                 \
    -i pkgs/itcl4.3.7/itclConfig.sh || err "sed itclConfig.sh failed"

unset SRCDIR

step "Installing Tcl..."
make install || err "make install failed"

step "Fixing library permissions..."
chmod 644 /usr/lib/libtclstub8.6.a || err "chmod libtclstub8.6.a failed"
chmod -v u+w /usr/lib/libtcl8.6.so || err "chmod libtcl8.6.so failed"

step "Installing private headers..."
make install-private-headers || err "install-private-headers failed"

step "Creating tclsh symlink..."
ln -sfv tclsh8.6 /usr/bin/tclsh || err "ln tclsh failed"

step "Renaming Thread man page..."
mv -v /usr/share/man/man3/Thread.3 /usr/share/man/man3/Tcl_Thread.3 || err "mv Thread.3 failed"

cd "$SOURCES"
rm -rf tcl8.6.18

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Tcl-8.6.18 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Tcl-8.6.18 - Tool Command Language${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/tclsh${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}tclsh${NC}     - Shell interactivo de Tcl"
echo -e "    ${GREEN}tclsh8.6${NC}  - Shell versionado"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libtcl8.6.so${NC}     - Biblioteca compartida de Tcl"
echo -e "    ${GREEN}libtclstub8.6.a${NC}  - Biblioteca stub (linking)"
echo -e "    ${GREEN}tdbc1.1.13${NC}       - Tcl Database Connectivity"
echo -e "    ${GREEN}itcl4.3.7${NC}        - Incremental Tcl (OOP)"
echo ""
echo -e "  Proposito: Tcl es un lenguaje de scripting embebible."
echo -e "  Es dependencia de Expect (para el test suite de GCC,"
echo -e "  Binutils, y otros). Incluye Tdbc para conectividad a"
echo -e "  bases de datos e Itcl para extensiones orientadas a objetos."
echo ""

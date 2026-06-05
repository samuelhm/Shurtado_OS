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

step "Extracting expect5.45.4..."
cd "$SOURCES"
tar -xf expect5.45.4.tar.gz
cd expect5.45.4

step "Applying gcc15 patch..."
patch -Np1 -i ../expect-5.45.4-gcc15-1.patch || err "patch failed"

step "Configuring Expect..."
./configure --prefix=/usr                     \
            --with-tcl=/usr/lib               \
            --enable-shared                   \
            --disable-rpath                   \
            --mandir=/usr/share/man           \
            --with-tclinclude=/usr/include || err "configure failed"

step "Compiling Expect..."
make -j$(nproc) || err "make failed"

step "Installing Expect..."
make install || err "make install failed"

step "Creating libexpect symlink..."
ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib || err "ln libexpect failed"

cd "$SOURCES"
rm -rf expect5.45.4

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Expect-5.45.4 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Expect-5.45.4 - Automatizacion de programas interactivos${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/expect${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}expect${NC} - Programa para automatizar tareas interactivas"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libexpect5.45.4.so${NC} - Biblioteca compartida de Expect"
echo ""
echo -e "  Proposito: Expect extiende Tcl para automatizacion de"
echo -e "  programas interactivos. Es usado principalmente por el"
echo -e "  framework de testing DejaGNU, que a su vez ejecuta los"
echo -e "  test suites de GCC, Binutils, y otras herramientas GNU."
echo ""

#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting grep-3.12..."
cd "$SOURCES"
tar -xf grep-3.12.tar.xz
cd grep-3.12

step "Configuring Grep..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess) || err "configure failed"

step "Compiling Grep..."
make -j$(nproc) || err "make failed"

step "Installing Grep..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf grep-3.12

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Grep-3.12 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Grep-3.12 - Pattern matching tool${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/grep${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}grep${NC}   - Busca patrones en archivos (POSIX BRE)"
echo -e "    ${GREEN}egrep${NC}   - grep con expresiones regulares extendidas (ERE)"
echo -e "    ${GREEN}fgrep${NC}   - grep con busqueda literal (sin regex)"
echo ""
echo -e "  Proposito: grep (Global Regular Expression Print) busca"
echo -e "  patrones de texto en archivos usando expresiones regulares."
echo -e "  Es una de las herramientas mas usadas en scripting y"
echo -e "  administracion de sistemas."
echo ""

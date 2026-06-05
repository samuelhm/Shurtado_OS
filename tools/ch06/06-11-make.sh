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

step "Extracting make-4.4.1..."
cd "$SOURCES"
tar -xf make-4.4.1.tar.gz
cd make-4.4.1

step "Configuring Make..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling Make..."
make -j$(nproc) || err "make failed"

step "Installing Make..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf make-4.4.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Make-4.4.1 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Make-4.4.1 - Build automation${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/make${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}make${NC}  - Controla la generacion de ejecutables y otros"
echo -e "            archivos a partir de fuentes mediante Makefiles"
echo ""
echo -e "  Proposito: Make es la herramienta de automatizacion de"
echo -e "  compilacion estandar en UNIX. Lee Makefiles que definen"
echo -e "  dependencias y reglas para construir programas. Es esencial"
echo -e "  para compilar practicamente cualquier software en Linux."
echo ""

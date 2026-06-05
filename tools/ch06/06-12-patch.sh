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

step "Extracting patch-2.8..."
cd "$SOURCES"
tar -xf patch-2.8.tar.xz
cd patch-2.8

step "Configuring Patch..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling Patch..."
make -j$(nproc) || err "make failed"

step "Installing Patch..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf patch-2.8

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Patch-2.8 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Patch-2.8 - Patch application tool${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/patch${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}patch${NC} - Aplica archivos .patch/.diff para modificar"
echo -e "            codigo fuente"
echo ""
echo -e "  Proposito: Patch aplica diferencias generadas por diff a"
echo -e "  archivos de texto. Es indispensable para aplicar parches"
echo -e "  de seguridad, bugfixes, y personalizaciones al codigo fuente"
echo -e "  de paquetes en LFS."
echo ""

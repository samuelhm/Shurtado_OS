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

step "Extracting diffutils-3.12..."
cd "$SOURCES"
tar -xf diffutils-3.12.tar.xz
cd diffutils-3.12

step "Configuring Diffutils..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            gl_cv_func_strcasecmp_works=yes \
            --build=$(./build-aux/config.guess) || err "configure failed"

step "Compiling Diffutils..."
make -j$(nproc) || err "make failed"

step "Installing Diffutils..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf diffutils-3.12

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Diffutils-3.12 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Diffutils-3.12 - File comparison tools${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}diff${NC}    - Compara archivos linea por linea"
echo -e "    ${GREEN}cmp${NC}     - Compara archivos byte por byte"
echo -e "    ${GREEN}diff3${NC}   - Compara 3 archivos entre si"
echo -e "    ${GREEN}sdiff${NC}   - Fusion interactiva de 2 archivos"
echo ""
echo -e "  Proposito: Herramientas para encontrar diferencias entre"
echo -e "  archivos y directorios. Esenciales para aplicar parches"
echo -e "  y para el sistema de control de versiones."
echo ""

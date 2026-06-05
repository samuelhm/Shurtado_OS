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

step "Extracting m4-1.4.21..."
cd "$SOURCES"
tar -xf m4-1.4.21.tar.xz
cd m4-1.4.21

step "Configuring M4..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling M4..."
make -j$(nproc) || err "make failed"

step "Installing M4..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf m4-1.4.21

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  M4-1.4.21 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}M4-1.4.21 - Macro processor${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}m4${NC} - Procesador de macros (expande macros en archivos de texto)"
echo ""
echo -e "  Proposito: M4 es un procesador de macros tradicional de UNIX."
echo -e "  Es requerido por varios paquetes del sistema (autoconf, bison,"
echo -e "  flex) que usan archivos .m4 para generar codigo fuente o scripts"
echo -e "  de configuracion."
echo ""

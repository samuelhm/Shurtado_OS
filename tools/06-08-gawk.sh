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

step "Extracting gawk-5.4.0..."
cd "$SOURCES"
tar -xf gawk-5.4.0.tar.xz
cd gawk-5.4.0

step "Disabling unneeded extras..."
sed -i 's/extras//' Makefile.in || err "sed failed"

step "Configuring Gawk..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling Gawk..."
make -j$(nproc) || err "make failed"

step "Installing Gawk..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf gawk-5.4.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gawk-5.4.0 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Gawk-5.4.0 - GNU awk text processor${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/gawk${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gawk${NC}   - Interprete del lenguaje AWK"
echo -e "    ${GREEN}awk${NC}    - Symlink a gawk"
echo ""
echo -e "  Proposito: Gawk (GNU awk) es un potente lenguaje de"
echo -e "  procesamiento de texto que opera sobre registros y campos."
echo -e "  Es usado extensivamente en scripts de configuracion,"
echo -e "  pruebas, y como parte del toolchain de construccion de LFS."
echo ""

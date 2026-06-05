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

step "Extracting sed-4.10..."
cd "$SOURCES"
tar -xf sed-4.10.tar.xz
cd sed-4.10

step "Configuring Sed..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess) || err "configure failed"

step "Compiling Sed..."
make -j$(nproc) || err "make failed"

step "Installing Sed..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf sed-4.10

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Sed-4.10 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Sed-4.10 - Stream editor${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/sed${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}sed${NC} - Editor de flujo: filtra y transforma texto"
echo -e "          usando expresiones regulares"
echo ""
echo -e "  Proposito: Sed (Stream EDitor) procesa texto linea por linea"
echo -e "  aplicando sustituciones, eliminaciones e inserciones. Junto"
echo -e "  con grep y awk forma la triada clasica de procesamiento de"
echo -e "  texto en UNIX. Los scripts de LFS lo usan extensivamente."
echo ""

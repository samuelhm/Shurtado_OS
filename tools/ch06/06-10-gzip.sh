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

step "Extracting gzip-1.14..."
cd "$SOURCES"
tar -xf gzip-1.14.tar.xz
cd gzip-1.14

step "Configuring Gzip..."
./configure --prefix=/usr --host=$LFS_TGT || err "configure failed"

step "Compiling Gzip..."
make -j$(nproc) || err "make failed"

step "Installing Gzip..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf gzip-1.14

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gzip-1.14 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Gzip-1.14 - File compression${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/gzip${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gzip${NC}      - Comprime/descomprime archivos .gz"
echo -e "    ${GREEN}gunzip${NC}     - Descomprime archivos .gz (alias de gzip -d)"
echo -e "    ${GREEN}zcat${NC}       - Muestra contenido de archivos .gz sin descomprimir"
echo -e "    ${GREEN}gzexe${NC}      - Crea ejecutables auto-descomprimibles"
echo -e "    ${GREEN}uncompress${NC}  - Descomprime archivos .Z (compatibilidad)"
echo ""
echo -e "  Proposito: Gzip es el compresor estandar en Linux usando el"
echo -e "  algoritmo DEFLATE. Todos los tarballs del sistema se"
echo -e "  distribuyen como .tar.gz o .tar.xz."
echo ""

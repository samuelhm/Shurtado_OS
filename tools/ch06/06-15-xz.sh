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

step "Extracting xz-5.8.3..."
cd "$SOURCES"
tar -xf xz-5.8.3.tar.xz
cd xz-5.8.3

step "Configuring Xz..."
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.8.3 || err "configure failed"

step "Compiling Xz..."
make -j$(nproc) || err "make failed"

step "Installing Xz..."
make DESTDIR=$LFS install || err "make install failed"

step "Removing harmful libtool archive..."
rm -v $LFS/usr/lib/liblzma.la || err "rm failed"

cd "$SOURCES"
rm -rf xz-5.8.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Xz-5.8.3 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Xz-5.8.3 - LZMA/XZ compression${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/xz${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}xz${NC}        - Comprime/descomprime archivos .xz y .lzma"
echo -e "    ${GREEN}unxz${NC}      - Descomprime archivos .xz"
echo -e "    ${GREEN}xzcat${NC}     - Muestra contenido de .xz sin descomprimir"
echo -e "    ${GREEN}lzma${NC}      - Comprime/descomprime formato LZMA legacy"
echo -e "    ${GREEN}unlzma${NC}    - Descomprime archivos .lzma"
echo -e "    ${GREEN}lzcat${NC}     - Muestra contenido de .lzma"
echo -e "    ${GREEN}lzmainfo${NC}  - Muestra info de archivos .lzma"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}liblzma.so${NC} - Biblioteca de compresion LZMA"
echo ""
echo -e "  Proposito: Xz implementa el algoritmo LZMA2, que ofrece mejor"
echo -e "  compresion que gzip/bzip2. Los tarballs de LFS se distribuyen"
echo -e "  como .tar.xz. liblzma es usada por systemd, kmod, y el kernel."
echo ""

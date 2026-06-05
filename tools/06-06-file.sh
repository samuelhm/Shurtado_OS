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

step "Extracting file-5.47..."
cd "$SOURCES"
tar -xf file-5.47.tar.gz
cd file-5.47

step "Building host file command (needed for signature generation)..."
mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib || err "host configure failed"
  make -j$(nproc) || err "host make failed"
popd

step "Configuring File..."
./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess) || err "configure failed"

step "Compiling File..."
make -j$(nproc) FILE_COMPILE=$(pwd)/build/src/file || err "make failed"

step "Installing File..."
make DESTDIR=$LFS install || err "make install failed"

step "Removing harmful libtool archive..."
rm -v $LFS/usr/lib/libmagic.la || err "rm failed"

cd "$SOURCES"
rm -rf file-5.47

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  File-5.47 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}File-5.47 - File type detection${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/file${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}file${NC}    - Determina el tipo de un archivo"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libmagic.so${NC} - Base de datos de firmas magicas"
echo ""
echo -e "  Proposito: File identifica el tipo de archivo examinando su"
echo -e "  contenido (magic bytes), no su extension. Es usado por"
echo -e "  innumerables scripts y programas del sistema."
echo ""

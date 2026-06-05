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

step "Extracting tar-1.35..."
cd "$SOURCES"
tar -xf tar-1.35.tar.xz
cd tar-1.35

step "Configuring Tar..."
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling Tar..."
make -j$(nproc) || err "make failed"

step "Installing Tar..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf tar-1.35

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Tar-1.35 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Tar-1.35 - Tape ARchiver${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/tar${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}tar${NC} - Crea, extrae y manipula archivos .tar"
echo ""
echo -e "  Proposito: Tar empaqueta multiples archivos en un solo"
echo -e "  archivo (tarball) preservando permisos y estructura de"
echo -e "  directorios. Es el formato universal de distribucion de"
echo -e "  codigo fuente en Linux (.tar.gz, .tar.xz, .tar.bz2)."
echo ""

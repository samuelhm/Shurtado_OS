#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Bzip2..."
cd "$SOURCES"
tar -xf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

step "Applying install_docs patch..."
patch -Np1 -i ../bzip2-1.0.8-install_docs-1.patch || err "patch failed"

step "Fixing symlink paths in Makefile..."
sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' Makefile

step "Fixing man page path in Makefile..."
sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile

step "Building shared library..."
make -f Makefile-libbz2_so || err "make libbz2_so failed"
make clean

step "Compiling Bzip2..."
make -j$(nproc) || err "make failed"

step "Installing Bzip2..."
make PREFIX=/usr install || err "make install failed"

step "Installing shared library..."
cp -av libbz2.so.* /usr/lib || err "cp libbz2.so.* failed"
ln -sfv libbz2.so.1.0.8 /usr/lib/libbz2.so
ln -sfv libbz2.so.1.0.8 /usr/lib/libbz2.so.1

step "Installing shared bzip2 binary..."
cp -v bzip2-shared /usr/bin/bzip2
for i in /usr/bin/{bzcat,bunzip2}; do
  ln -sfv bzip2 $i
done

step "Removing static library..."
rm -fv /usr/lib/libbz2.a

cd "$SOURCES"
rm -rf bzip2-1.0.8

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Bzip2 - Instalacion completada         ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Bzip2-1.0.8${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/lib/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}bzip2${NC}        - Compresor Burrows-Wheeler"
echo -e "    ${GREEN}bunzip2${NC}      - Descompresor (link a bzip2)"
echo -e "    ${GREEN}bzcat${NC}        - Descomprime a stdout"
echo -e "    ${GREEN}bzip2recover${NC} - Recupera archivos danados"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}libbz2.so${NC} - Compresion sin perdida"
echo ""
echo -e "  Proposito: Compresion de archivos con mejor ratio que"
echo -e "  gzip usando el algoritmo Burrows-Wheeler + Huffman."
echo ""

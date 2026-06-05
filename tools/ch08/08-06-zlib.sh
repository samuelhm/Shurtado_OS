#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Zlib..."
cd "$SOURCES"
tar -xf zlib-1.3.2.tar.gz
cd zlib-1.3.2

step "Configuring Zlib..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Zlib..."
make -j$(nproc) || err "make failed"

step "Installing Zlib..."
make install || err "make install failed"

step "Removing static library..."
rm -fv /usr/lib/libz.a

cd "$SOURCES"
rm -rf zlib-1.3.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Zlib - Instalacion completada          ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Zlib-1.3.2${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}libz.so${NC} - Compresion y descompresion (DEFLATE)"
echo ""
echo -e "  Proposito: Biblioteca de compresion usada por muchas"
echo -e "  aplicaciones (gzip, PNG, OpenSSH, etc.)."
echo ""

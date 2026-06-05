#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Zstd..."
cd "$SOURCES"
tar -xf zstd-1.5.7.tar.gz
cd zstd-1.5.7

step "Compiling Zstd..."
make -j$(nproc) prefix=/usr || err "make failed"

step "Installing Zstd..."
make prefix=/usr install || err "make install failed"

step "Removing static library..."
rm -v /usr/lib/libzstd.a

cd "$SOURCES"
rm -rf zstd-1.5.7

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Zstd - Instalacion completada          ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Zstd-1.5.7${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/lib/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}zstd${NC}      - Compresor/descompresor Zstandard"
echo -e "    ${GREEN}unzstd${NC}    - Descompresor (link a zstd)"
echo -e "    ${GREEN}zstdgrep${NC}  - grep sobre archivos Zstd"
echo -e "    ${GREEN}zstdless${NC}  - less sobre archivos Zstd"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}libzstd.so${NC} - Compresion Zstandard"
echo ""
echo -e "  Proposito: Algoritmo de compresion en tiempo real con"
echo -e "  alto ratio de compresion y decodificador muy rapido."
echo ""

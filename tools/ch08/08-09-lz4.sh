#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Lz4..."
cd "$SOURCES"
tar -xf lz4-1.10.0.tar.gz
cd lz4-1.10.0

step "Compiling Lz4..."
make -j$(nproc) BUILD_STATIC=no PREFIX=/usr || err "make failed"

step "Installing Lz4..."
make BUILD_STATIC=no PREFIX=/usr install || err "make install failed"

cd "$SOURCES"
rm -rf lz4-1.10.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Lz4 - Instalacion completada           ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Lz4-1.10.0${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/lib/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}lz4${NC}    - Compresor/descompresor LZ4"
echo -e "    ${GREEN}lz4c${NC}   - Compresor LZ4 (link a lz4)"
echo -e "    ${GREEN}unlz4${NC}  - Descompresor LZ4 (link a lz4)"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}liblz4.so${NC} - Compresion de alta velocidad LZ4"
echo ""
echo -e "  Proposito: Algoritmo de compresion ultra-rapido (>500 MB/s"
echo -e "  por nucleo). Puede combinarse con Zstandard para mayor"
echo -e "  velocidad."
echo ""

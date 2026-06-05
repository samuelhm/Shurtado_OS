#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Xz..."
cd "$SOURCES"
tar -xf xz-5.8.3.tar.xz
cd xz-5.8.3

step "Configuring Xz..."
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.3 || err "configure failed"

step "Compiling Xz..."
make -j$(nproc) || err "make failed"

step "Installing Xz..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf xz-5.8.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Xz - Instalacion completada            ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Xz-5.8.3${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/lib/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}xz${NC}     - Compresor/descompresor formato XZ/LZMA"
echo -e "    ${GREEN}unxz${NC}   - Descompresor XZ"
echo -e "    ${GREEN}xzdec${NC}  - Decodificador rapido XZ"
echo -e "    ${GREEN}lzma${NC}   - Compresor/descompresor formato LZMA"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}liblzma.so${NC} - Compresion Lempel-Ziv-Markov"
echo ""
echo -e "  Proposito: Compresion de archivos con mejor ratio que"
echo -e "  gzip y bzip2 usando el algoritmo LZMA2 (formato .xz)."
echo ""

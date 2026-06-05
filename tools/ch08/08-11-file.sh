#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting File..."
cd "$SOURCES"
tar -xf file-5.47.tar.gz
cd file-5.47

step "Configuring File..."
./configure --prefix=/usr || err "configure failed"

step "Compiling File..."
make -j$(nproc) || err "make failed"

step "Installing File..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf file-5.47

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  File - Instalacion completada          ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}File-5.47${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/lib/${NC}"
echo ""
echo -e "  Binario instalado:"
echo -e "    ${GREEN}file${NC} - Determina el tipo de un archivo"
echo ""
echo -e "  Libreria instalada:"
echo -e "    ${GREEN}libmagic.so${NC} - Reconocimiento de numeros magicos"
echo ""
echo -e "  Proposito: Utilidad que clasifica archivos examinando"
echo -e "  su contenido (magic numbers, tipo de archivo, etc.)."
echo ""

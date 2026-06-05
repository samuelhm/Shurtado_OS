#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting diffutils-3.12..."
cd "$SOURCES"
tar -xf diffutils-3.12.tar.xz
cd diffutils-3.12

step "Configuring Diffutils..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Diffutils..."
make -j$(nproc) || err "make failed"

step "Installing Diffutils..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf diffutils-3.12

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Diffutils-3.12 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GNU Diffutils-3.12${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}cmp${NC}   - Compara dos archivos byte por byte"
echo -e "    ${GREEN}diff${NC}  - Muestra diferencias entre archivos/directorios"
echo -e "    ${GREEN}diff3${NC} - Compara tres archivos linea por linea"
echo -e "    ${GREEN}sdiff${NC} - Fusiona dos archivos interactivamente"
echo ""
echo -e "  Proposito: Diffutils proporciona herramientas para mostrar"
echo -e "  diferencias entre archivos y directorios. Esencial para"
echo -e "  desarrollo (patches, control de versiones) y administracion"
echo -e "  del sistema (comparar configuraciones)."
echo ""

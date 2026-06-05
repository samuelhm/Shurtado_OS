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

step "Extracting packaging-26.2..."
cd "$SOURCES"
tar -xf packaging-26.2.tar.gz
cd packaging-26.2

step "Building packaging wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps "$PWD" || err "pip3 wheel failed"

step "Installing packaging..."
pip3 install --no-index --find-links dist packaging || err "pip3 install failed"

cd "$SOURCES"
rm -rf packaging-26.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  packaging-26.2 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}packaging-26.2 - Core utilities para paquetes Python${NC}"
echo -e "  Ubicacion:  ${BLUE}Python site-packages (via pip3)${NC}"
echo ""
echo -e "  Proposito: packaging proporciona utilidades core para"
echo -e "  trabajar con versiones de paquetes Python, especificadores,"
echo -e "  marcadores de entorno y tags. Es una dependencia"
echo -e "  fundamental del ecosistema pip/setuptools."
echo ""

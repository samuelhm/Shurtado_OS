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

step "Extracting flit_core-3.12.0..."
cd "$SOURCES"
tar -xf flit_core-3.12.0.tar.gz
cd flit_core-3.12.0

step "Building flit_core wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps "$PWD" || err "pip3 wheel failed"

step "Installing flit_core..."
pip3 install --no-index --find-links dist flit_core || err "pip3 install failed"

cd "$SOURCES"
rm -rf flit_core-3.12.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  flit_core-3.12.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}flit_core-3.12.0 - Build backend simplificado para Python${NC}"
echo -e "  Ubicacion:  ${BLUE}Python site-packages (via pip3)${NC}"
echo ""
echo -e "  Proposito: flit_core es un backend de build minimalista"
echo -e "  para paquetes Python. Es requerido para construir otros"
echo -e "  modulos Python (packaging, wheel) usando pip3 desde el"
echo -e "  arbol de fuentes, sin dependencias externas."
echo ""

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

step "Extracting wheel-0.47.0..."
cd "$SOURCES"
tar -xf wheel-0.47.0.tar.gz
cd wheel-0.47.0

step "Building wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps "$PWD" || err "pip3 wheel failed"

step "Installing wheel..."
pip3 install --no-index --find-links dist wheel || err "pip3 install failed"

cd "$SOURCES"
rm -rf wheel-0.47.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  wheel-0.47.0 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}wheel-0.47.0 - Built-package format para Python${NC}"
echo -e "  Ubicacion:  ${BLUE}Python site-packages (via pip3)${NC}"
echo ""
echo -e "  Proposito: wheel es el formato estandar de paquete binario"
echo -e "  para Python (.whl). Es una dependencia esencial del"
echo -e "  ecosistema pip para construir e instalar paquetes"
echo -e "  precompilados, reemplazando el antiguo formato egg."
echo ""

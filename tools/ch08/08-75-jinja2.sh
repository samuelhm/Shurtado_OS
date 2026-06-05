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

step "Extracting Jinja2-3.1.6..."
cd "$SOURCES"
tar -xf jinja2-3.1.6.tar.gz
cd jinja2-3.1.6

step "Building Jinja2 wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD || err "wheel build failed"

step "Installing Jinja2..."
pip3 install --no-index --find-links dist Jinja2 || err "install failed"

cd "$SOURCES"
rm -rf jinja2-3.1.6

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Jinja2-3.1.6 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Jinja2-3.1.6 - Motor de plantillas Python${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/python3.*/site-packages/jinja2/${NC}"
echo ""
echo -e "  Modulo Python instalado:"
echo -e "    ${GREEN}jinja2${NC} - Motor de plantillas con sintaxis expressiva"
echo ""
echo -e "  Proposito: Jinja2 es un motor de plantillas moderno y"
echo -e "  potente para Python. Es usado extensivamente por systemd"
echo -e "  para generar archivos de configuracion, servicios y"
echo -e "  documentacion a partir de plantillas."
echo ""

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

step "Extracting MarkupSafe-3.0.3..."
cd "$SOURCES"
tar -xf markupsafe-3.0.3.tar.gz
cd markupsafe-3.0.3

step "Building MarkupSafe wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD || err "wheel build failed"

step "Installing MarkupSafe..."
pip3 install --no-index --find-links dist Markupsafe || err "install failed"

cd "$SOURCES"
rm -rf markupsafe-3.0.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  MarkupSafe-3.0.3 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}MarkupSafe-3.0.3 - Escapado seguro de HTML${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/python3.*/site-packages/markupsafe/${NC}"
echo ""
echo -e "  Modulo Python instalado:"
echo -e "    ${GREEN}markupsafe${NC} - Escapado de strings para HTML/XML"
echo ""
echo -e "  Proposito: MarkupSafe implementa un objeto string que"
echo -e "  escapa caracteres peligrosos para su inclusion segura en"
echo -e "  HTML y XML. Es una dependencia de Jinja2, el motor de"
echo -e "  plantillas usado por systemd y otras herramientas."
echo ""

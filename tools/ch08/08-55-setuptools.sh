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

step "Extracting setuptools-82.0.1..."
cd "$SOURCES"
tar -xf setuptools-82.0.1.tar.gz
cd setuptools-82.0.1

step "Building Setuptools wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD || err "pip3 wheel failed"

step "Installing Setuptools..."
pip3 install --no-index --find-links dist setuptools || err "pip3 install failed"

cd "$SOURCES"
rm -rf setuptools-82.0.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Setuptools-82.0.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Setuptools-82.0.1${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/python3.14/site-packages/${NC}"
echo ""
echo -e "  Modulos instalados:"
echo -e "    ${GREEN}setuptools${NC}         - Sistema de empaquetado Python"
echo -e "    ${GREEN}pkg_resources${NC}     - API de recursos de paquetes"
echo -e "    ${GREEN}_distutils_hack${NC}   - Compatibilidad con distutils"
echo ""
echo -e "  Proposito: Setuptools es una herramienta para descargar,"
echo -e "  construir, instalar, actualizar y desinstalar paquetes"
echo -e "  Python. Es requerido por meson, ninja y otras herramientas"
echo -e "  del ecosistema Python en LFS."
echo ""

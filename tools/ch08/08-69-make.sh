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

step "Extracting make-4.4.1..."
cd "$SOURCES"
tar -xf make-4.4.1.tar.gz
cd make-4.4.1

step "Configuring Make..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Make..."
make -j$(nproc) || err "make failed"

step "Installing Make..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf make-4.4.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Make-4.4.1 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Make-4.4.1 - Automatizacion de compilacion${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/make${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}make${NC} - Utilidad de automatizacion de builds"
echo ""
echo -e "  Proposito: GNU Make determina automaticamente que piezas"
echo -e "  de un programa necesitan recompilarse y ejecuta los"
echo -e "  comandos para hacerlo. Es la herramienta de build por"
echo -e "  excelencia en sistemas Unix/Linux."
echo ""

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

step "Extracting sed-4.10..."
cd "$SOURCES"
tar -xf sed-4.10.tar.xz
cd sed-4.10

step "Configuring Sed..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Sed..."
make -j$(nproc) || err "make failed"

step "Generating HTML documentation..."
make html || err "make html failed"

step "Installing Sed..."
make install || err "make install failed"

step "Installing HTML documentation..."
install -vDm644 doc/sed.html -t /usr/share/doc/sed-4.10 || err "install doc failed"

cd "$SOURCES"
rm -rf sed-4.10

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Sed-4.10 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Sed-4.10 - Stream Editor${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/sed${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}sed${NC} - Editor de flujo que filtra y transforma texto"
echo ""
echo -e "  Proposito: Sed es un editor de flujo (stream editor)."
echo -e "  Lee texto de entrada, aplica comandos de edicion, y"
echo -e "  escribe el resultado. Es esencial en scripts de shell"
echo -e "  y en el sistema de build de muchos paquetes."
echo ""

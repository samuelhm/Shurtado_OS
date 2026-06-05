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

step "Extracting bc-7.0.3..."
cd "$SOURCES"
tar -xf bc-7.0.3.tar.xz
cd bc-7.0.3

step "Configuring Bc..."
CC='gcc -std=c99' ./configure --prefix=/usr -G -O3 -r || err "configure failed"

step "Compiling Bc..."
make -j$(nproc) || err "make failed"

step "Installing Bc..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf bc-7.0.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Bc-7.0.3 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Bc-7.0.3 - Calculadora de precision arbitraria${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/bc${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}bc${NC} - Calculadora numerica interactiva de precision arbitraria"
echo -e "    ${GREEN}dc${NC} - Calculadora de notacion polaca inversa (RPN)"
echo ""
echo -e "  Proposito: Bc es un lenguaje de procesamiento numerico de"
echo -e "  precision arbitraria. Es utilizado en scripts del kernel"
echo -e "  Linux para generacion de constantes de tiempo y otros"
echo -e "  calculos matematicos durante la compilacion."
echo ""

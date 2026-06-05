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

step "Extracting m4-1.4.21..."
cd "$SOURCES"
tar -xf m4-1.4.21.tar.xz
cd m4-1.4.21

step "Configuring M4..."
./configure --prefix=/usr || err "configure failed"

step "Compiling M4..."
make -j$(nproc) || err "make failed"

step "Installing M4..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf m4-1.4.21

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  M4-1.4.21 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}M4-1.4.21 - Macro processor${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/m4${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}m4${NC} - Procesador de macros UNIX"
echo ""
echo -e "  Proposito: M4 es un procesador de macros usado por"
echo -e "  autoconf y otras herramientas de build. Transforma"
echo -e "  texto de entrada segun macros definidas. Esencial"
echo -e "  para el sistema de build del toolchain GNU."
echo ""

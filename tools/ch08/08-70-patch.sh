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

step "Extracting patch-2.8..."
cd "$SOURCES"
tar -xf patch-2.8.tar.xz
cd patch-2.8

step "Configuring Patch..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Patch..."
make -j$(nproc) || err "make failed"

step "Installing Patch..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf patch-2.8

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Patch-2.8 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Patch-2.8 - Aplica archivos de diferencias${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/patch${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}patch${NC} - Aplica archivos diff/patch a codigo fuente"
echo ""
echo -e "  Proposito: Patch toma un archivo de diferencias (generado"
echo -e "  por diff) y lo aplica a un archivo original, produciendo"
echo -e "  una version modificada. Es esencial para aplicar parches"
echo -e "  de seguridad y personalizaciones a paquetes."
echo ""

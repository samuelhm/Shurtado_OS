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

step "Extracting psmisc-23.7..."
cd "$SOURCES"
tar -xf psmisc-23.7.tar.xz
cd psmisc-23.7

step "Configuring Psmisc..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Psmisc..."
make -j$(nproc) || err "make failed"

step "Installing Psmisc..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf psmisc-23.7

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Psmisc-23.7 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Psmisc-23.7 - Utilidades de procesos${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}fuser${NC}    - Identifica procesos usando un archivo/socket"
echo -e "    ${GREEN}killall${NC}  - Envia senales a procesos por nombre"
echo -e "    ${GREEN}pstree${NC}   - Muestra arbol de procesos en ejecucion"
echo -e "    ${GREEN}peekfd${NC}   - Inspecciona descriptores de archivo de un proceso"
echo ""
echo -e "  Proposito: Psmisc proporciona utilidades para gestionar"
echo -e "  procesos del sistema. fuser, killall y pstree son"
echo -e "  herramientas esenciales para administracion del sistema."
echo ""

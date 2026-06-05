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

step "Extracting gperf-3.3..."
cd "$SOURCES"
tar -xf gperf-3.3.tar.gz
cd gperf-3.3

step "Configuring Gperf..."
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.3 || err "configure failed"

step "Compiling Gperf..."
make -j$(nproc) || err "make failed"

step "Installing Gperf..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf gperf-3.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gperf-3.3 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Gperf-3.3 - Generador de funciones hash perfectas${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/gperf${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gperf${NC} - Genera funciones hash perfectas en C/C++"
echo ""
echo -e "  Proposito: Gperf genera funciones hash perfectas (sin"
echo -e "  colisiones) a partir de conjuntos de claves conocidas."
echo -e "  Es usado por varios paquetes como GCC y systemd para"
echo -e "  busquedas ultra-rapidas de palabras clave en tiempo O(1)."
echo ""

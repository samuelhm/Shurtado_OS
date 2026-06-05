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

step "Extracting iproute2-7.0.0..."
cd "$SOURCES"
tar -xf iproute2-7.0.0.tar.xz
cd iproute2-7.0.0

step "Disabling arpd (requires Berkeley DB, not in LFS)..."
sed -i /ARPD/d Makefile || err "sed failed"
rm -fv man/man8/arpd.8 || err "rm arpd.8 failed"

step "Compiling IPRoute2..."
make NETNS_RUN_DIR=/run/netns -j$(nproc) || err "make failed"

step "Installing IPRoute2..."
make SBINDIR=/usr/sbin install || err "make install failed"

cd "$SOURCES"
rm -rf iproute2-7.0.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  IPRoute2-7.0.0 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}IPRoute2-7.0.0${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/sbin/ip${NC}"
echo ""
echo -e "  Binarios principales instalados:"
echo -e "    ${GREEN}ip${NC}     - Gestion de rutas, enlaces, direcciones, tuneles"
echo -e "    ${GREEN}tc${NC}     - Control de trafico y QoS"
echo -e "    ${GREEN}ss${NC}     - Muestra conexiones de red activas"
echo -e "    ${GREEN}bridge${NC} - Configuracion de puentes de red"
echo -e "    ${GREEN}lnstat${NC} - Estadisticas de red de Linux"
echo -e "    ${GREEN}nstat${NC}  - Muestra estadisticas de red"
echo ""
echo -e "  Proposito: IPRoute2 es el conjunto de herramientas moderno"
echo -e "  para configuracion de red en Linux. Reemplaza net-tools"
echo -e "  (ifconfig, route, arp). Proporciona control avanzado sobre"
echo -e "  enrutamiento, túneles, QoS, y namespaces de red."
echo ""

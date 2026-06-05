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

step "Extracting procps-ng-4.0.6..."
cd "$SOURCES"
tar -xf procps-ng-4.0.6.tar.xz
cd procps-ng-4.0.6

step "Configuring procps-ng..."
./configure --prefix=/usr \
            --docdir=/usr/share/doc/procps-ng-4.0.6 \
            --disable-static \
            --disable-kill \
            --enable-watch8bit \
            --with-systemd || err "configure failed"

step "Compiling procps-ng..."
make -j$(nproc) || err "make failed"

step "Installing procps-ng..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf procps-ng-4.0.6

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Procps-ng-4.0.6 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Procps-ng-4.0.6 - Utilidades de monitoreo de procesos${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ps${NC}       - Lista procesos en ejecucion"
echo -e "    ${GREEN}top${NC}      - Monitor interactivo de procesos"
echo -e "    ${GREEN}free${NC}     - Muestra uso de memoria"
echo -e "    ${GREEN}vmstat${NC}   - Estadisticas de memoria virtual"
echo -e "    ${GREEN}uptime${NC}   - Tiempo desde el ultimo arranque"
echo -e "    ${GREEN}watch${NC}    - Ejecuta un comando periodicamente"
echo -e "    ${GREEN}pidof${NC}    - Encuentra el PID de un proceso por nombre"
echo -e "    ${GREEN}sysctl${NC}   - Configura parametros del kernel en runtime"
echo -e "    ${GREEN}pmap${NC}     - Mapa de memoria de un proceso"
echo -e "    ${GREEN}slabtop${NC}  - Muestra informacion de slab del kernel"
echo ""
echo -e "  Proposito: Procps-ng proporciona utilidades esenciales para"
echo -e "  monitorear y gestionar procesos del sistema. ps, top, free"
echo -e "  y sysctl son comandos fundamentales en la administracion"
echo -e "  diaria de cualquier sistema Linux."
echo ""

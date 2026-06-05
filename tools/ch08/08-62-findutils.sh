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

step "Extracting findutils-4.10.0..."
cd "$SOURCES"
tar -xf findutils-4.10.0.tar.xz
cd findutils-4.10.0

step "Configuring Findutils..."
./configure --prefix=/usr --localstatedir=/var/lib/locate || err "configure failed"

step "Compiling Findutils..."
make -j$(nproc) || err "make failed"

step "Installing Findutils..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf findutils-4.10.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Findutils-4.10.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GNU Findutils-4.10.0${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}find${NC}     - Busca archivos en arboles de directorios"
echo -e "    ${GREEN}locate${NC}   - Busca archivos usando base de datos indexada"
echo -e "    ${GREEN}updatedb${NC} - Actualiza la base de datos de locate"
echo -e "    ${GREEN}xargs${NC}    - Ejecuta comandos sobre listas de archivos"
echo ""
echo -e "  Proposito: Findutils proporciona herramientas para buscar"
echo -e "  archivos por nombre, tipo, tamano, fecha y otros criterios."
echo -e "  locate ofrece busquedas rapidas via indice, y xargs permite"
echo -e "  procesar grandes listas de archivos eficientemente."
echo ""

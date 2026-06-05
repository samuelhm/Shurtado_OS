#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting findutils-4.10.0..."
cd "$SOURCES"
tar -xf findutils-4.10.0.tar.xz
cd findutils-4.10.0

step "Configuring Findutils..."
./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess) || err "configure failed"

step "Compiling Findutils..."
make -j$(nproc) || err "make failed"

step "Installing Findutils..."
make DESTDIR=$LFS install || err "make install failed"

cd "$SOURCES"
rm -rf findutils-4.10.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Findutils-4.10.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Findutils-4.10.0 - File search utilities${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}find${NC}     - Busca archivos en un arbol de directorios"
echo -e "    ${GREEN}locate${NC}    - Busca archivos en una base de datos indexada"
echo -e "    ${GREEN}updatedb${NC}  - Actualiza la base de datos de locate"
echo -e "    ${GREEN}xargs${NC}     - Ejecuta un comando con argumentos desde stdin"
echo ""
echo -e "  Proposito: Findutils proporciona herramientas de busqueda"
echo -e "  de archivos. find recorre recursivamente el sistema de"
echo -e "  archivos, locate usa una BD pre-indexada, y xargs permite"
echo -e "  procesar listas de archivos que exceden el limite de"
echo -e "  argumentos de linea de comandos."
echo ""

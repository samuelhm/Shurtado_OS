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

step "Extracting less-702..."
cd "$SOURCES"
tar -xf less-702.tar.gz
cd less-702

step "Configuring less..."
./configure --prefix=/usr --sysconfdir=/etc || err "configure failed"

step "Compiling less..."
make -j$(nproc) || err "make failed"

step "Installing less..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf less-702

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Less-702 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Less-702 - Terminal pager${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/less${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}less${NC}       - Visor de archivos de texto (paginador)"
echo -e "    ${GREEN}lessecho${NC}   - Expande metacaracteres igual que less"
echo -e "    ${GREEN}lesskey${NC}    - Personalizador de bindings de teclas"
echo ""
echo -e "  Proposito: Less es un paginador de terminal que permite"
echo -e "  navegar archivos de texto hacia adelante y atras. Es"
echo -e "  usado por man, git, Perl y muchas herramientas como"
echo -e "  visor por defecto. Soporta busqueda con regex."
echo ""

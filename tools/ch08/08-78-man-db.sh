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

step "Extracting man-db-2.13.1..."
cd "$SOURCES"
tar -xf man-db-2.13.1.tar.xz
cd man-db-2.13.1

step "Configuring man-db..."
./configure --prefix=/usr \
            --docdir=/usr/share/doc/man-db-2.13.1 \
            --sysconfdir=/etc \
            --disable-setuid \
            --enable-cache-owner=bin \
            --with-browser=/usr/bin/lynx \
            --with-vgrind=/usr/bin/vgrind \
            --with-grap=/usr/bin/grap || err "configure failed"

step "Compiling man-db..."
make -j$(nproc) || err "make failed"

step "Installing man-db..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf man-db-2.13.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Man-DB-2.13.1 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Man-DB-2.13.1 - Visor de paginas de manual${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/man${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}man${NC}       - Visor de paginas de manual"
echo -e "    ${GREEN}manpath${NC}   - Muestra la ruta de busqueda de man"
echo -e "    ${GREEN}whatis${NC}    - Busca descripciones de paginas man"
echo -e "    ${GREEN}apropos${NC}   - Busca paginas man por palabra clave"
echo -e "    ${GREEN}mandb${NC}     - Crea/actualiza la base de datos de man"
echo -e "    ${GREEN}catman${NC}    - Preformatea paginas man"
echo ""
echo -e "  Proposito: Man-DB es la implementacion moderna del"
echo -e "  clasico comando man. Indexa y muestra paginas de manual"
echo -e "  del sistema, siendo la herramienta fundamental de"
echo -e "  documentacion en sistemas Unix/Linux."
echo ""

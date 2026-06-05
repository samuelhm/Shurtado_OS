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

step "Extracting attr-2.5.2..."
cd "$SOURCES"
tar -xf attr-2.5.2.tar.gz
cd attr-2.5.2

step "Configuring Attr..."
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.2 || err "configure failed"

step "Compiling Attr..."
make -j$(nproc) || err "make failed"

step "Installing Attr..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf attr-2.5.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Attr-2.5.2 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Attr-2.5.2 - Extended Attributes${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/attr, /usr/bin/getfattr, /usr/bin/setfattr${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}attr${NC}      - Extiende atributos en objetos del sistema de archivos"
echo -e "    ${GREEN}getfattr${NC}  - Obtiene atributos extendidos"
echo -e "    ${GREEN}setfattr${NC}  - Establece atributos extendidos"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libattr.so${NC} - Funciones para manipular atributos extendidos"
echo ""
echo -e "  Proposito: Attr proporciona utilidades y una libreria para"
echo -e "  administrar atributos extendidos en objetos del sistema"
echo -e "  de archivos. Necesario para ACL y otras herramientas."
echo ""

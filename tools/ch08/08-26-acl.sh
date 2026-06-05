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

step "Extracting acl-2.3.2..."
cd "$SOURCES"
tar -xf acl-2.3.2.tar.xz
cd acl-2.3.2

step "Configuring Acl..."
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/acl-2.3.2 || err "configure failed"

step "Compiling Acl..."
make -j$(nproc) || err "make failed"

step "Installing Acl..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf acl-2.3.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Acl-2.3.2 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Acl-2.3.2 - Access Control Lists${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/chacl, /usr/bin/getfacl, /usr/bin/setfacl${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}chacl${NC}    - Cambia la ACL de un archivo o directorio"
echo -e "    ${GREEN}getfacl${NC}  - Obtiene las ACL de archivos"
echo -e "    ${GREEN}setfacl${NC}  - Establece las ACL de archivos"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libacl.so${NC} - Funciones para manipular Access Control Lists"
echo ""
echo -e "  Proposito: Acl proporciona utilidades y una libreria para"
echo -e "  administrar listas de control de acceso (ACL), que definen"
echo -e "  permisos mas granulares que los tradicionales POSIX."
echo ""

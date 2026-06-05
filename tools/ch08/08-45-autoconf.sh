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

step "Extracting autoconf-2.73..."
cd "$SOURCES"
tar -xf autoconf-2.73.tar.xz
cd autoconf-2.73

step "Configuring Autoconf..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Autoconf..."
make -j$(nproc) || err "make failed"

step "Installing Autoconf..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf autoconf-2.73

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Autoconf-2.73 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Autoconf-2.73 - Generador de scripts configure${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/autoconf${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}autoconf${NC}    - Genera scripts configure desde configure.ac"
echo -e "    ${GREEN}autoreconf${NC}   - Regenera archivos de build automaticamente"
echo -e "    ${GREEN}autoheader${NC}   - Genera plantillas config.h.in"
echo -e "    ${GREEN}autoscan${NC}     - Analiza fuentes y sugiere configure.ac"
echo -e "    ${GREEN}autoupdate${NC}   - Actualiza configure.ac obsoletos"
echo -e "    ${GREEN}ifnames${NC}      - Lista identificadores de preprocesador"
echo ""
echo -e "  Proposito: Autoconf produce scripts shell que configuran"
echo -e "  automaticamente paquetes de codigo fuente para adaptarse"
echo -e "  a diferentes sistemas UNIX. Esencial para compilar"
echo -e "  software que usa el sistema de build GNU."
echo ""

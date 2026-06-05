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

step "Extracting texinfo-7.3..."
cd "$SOURCES"
tar -xf texinfo-7.3.tar.xz
cd texinfo-7.3

step "Configuring Texinfo..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Texinfo..."
make -j$(nproc) || err "make failed"

step "Installing Texinfo..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf texinfo-7.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Texinfo-7.3 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Texinfo-7.3 - Sistema de documentacion${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}makeinfo${NC}  - Convierte .texi -> Info/HTML/DocBook"
echo -e "    ${GREEN}info${NC}      - Visor de paginas Info"
echo -e "    ${GREEN}install-info${NC} - Instala entradas en el directorio Info"
echo -e "    ${GREEN}texi2dvi${NC}  - Convierte .texi -> DVI/PDF"
echo -e "    ${GREEN}texi2any${NC}  - Conversor generico Texinfo"
echo ""
echo -e "  Proposito: Texinfo es el formato de documentacion estandar"
echo -e "  de GNU. La mayoria de paquetes del sistema documentan su"
echo -e "  uso en paginas Info generadas con makeinfo."
echo ""

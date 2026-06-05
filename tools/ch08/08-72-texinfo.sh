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

step "Installing TeX data..."
make TEXMF=/usr/share/texmf install-tex || err "install-tex failed"

cd "$SOURCES"
rm -rf texinfo-7.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Texinfo-7.3 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Texinfo-7.3 - Sistema de documentacion GNU${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/makeinfo${NC}, ${BLUE}/usr/bin/info${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}makeinfo${NC}  - Convierte fuentes .texi a Info/HTML/DocBook"
echo -e "    ${GREEN}info${NC}      - Lector de paginas de documentacion Info"
echo -e "    ${GREEN}install-info${NC} - Instala entradas en el directorio Info"
echo -e "    ${GREEN}texi2dvi${NC}  - Convierte fuentes .texi a DVI/PDF"
echo ""
echo -e "  Proposito: Texinfo es el sistema oficial de documentacion"
echo -e "  del proyecto GNU. Produce documentacion en multiples"
echo -e "  formatos (Info, HTML, PDF) desde una unica fuente .texi."
echo ""

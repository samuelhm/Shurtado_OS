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

step "Extracting groff-1.24.1..."
cd "$SOURCES"
tar -xf groff-1.24.1.tar.gz
cd groff-1.24.1

step "Configuring Groff..."
PAGE=A4 ./configure --prefix=/usr || err "configure failed"

step "Compiling Groff (single-threaded, as required)..."
make -j1 || err "make failed"

step "Installing Groff..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf groff-1.24.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Groff-1.24.1 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Groff-1.24.1${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/groff${NC}"
echo ""
echo -e "  Binarios principales instalados:"
echo -e "    ${GREEN}groff${NC}   - Frontend del sistema de formateo de documentos"
echo -e "    ${GREEN}troff${NC}   - Procesador de texto/formateo tipografico"
echo -e "    ${GREEN}nroff${NC}   - Formateo para terminal (emula nroff clasico)"
echo -e "    ${GREEN}grops${NC}   - Driver de salida PostScript"
echo -e "    ${GREEN}gropdf${NC}  - Driver de salida PDF"
echo -e "    ${GREEN}grohtml${NC} - Driver de salida HTML"
echo -e "    ${GREEN}man${NC}     - Macro package para paginas de manual"
echo ""
echo -e "  Proposito: Groff es el sistema de formateo de documentos"
echo -e "  estandar en Unix/Linux. Es fundamental para renderizar"
echo -e "  paginas de manual (man), documentacion tecnica y textos"
echo -e "  con formato tipografico avanzado."
echo ""

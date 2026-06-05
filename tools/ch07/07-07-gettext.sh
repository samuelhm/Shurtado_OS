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

step "Extracting gettext-1.0..."
cd "$SOURCES"
tar -xf gettext-1.0.tar.xz
cd gettext-1.0

step "Configuring Gettext..."
./configure --disable-shared || err "configure failed"

step "Compiling Gettext..."
make -j$(nproc) || err "make failed"

step "Installing msgfmt, msgmerge, xgettext..."
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin || err "install failed"

cd "$SOURCES"
rm -rf gettext-0.25.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gettext-1.0 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Gettext-0.25.1 - Herramientas i18n${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}msgfmt${NC}   - Compila archivos .po -> .mo"
echo -e "    ${GREEN}msgmerge${NC} - Fusiona traducciones con plantillas"
echo -e "    ${GREEN}xgettext${NC} - Extrae cadenas traducibles del codigo"
echo ""
echo -e "  Proposito: Solo 3 binarios minimos para soportar la"
echo -e "  compilacion de paquetes con i18n en el capitulo 8."
echo -e "  No se instalan librerias compartidas."
echo ""

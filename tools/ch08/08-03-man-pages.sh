#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Man-pages..."
cd "$SOURCES"
tar -xf man-pages-6.18.tar.xz
cd man-pages-6.18

step "Removing crypt man pages (Libxcrypt provides better ones)..."
rm -v man3/crypt* || err "rm failed"

step "Installing Man-pages..."
make -R GIT=false prefix=/usr install || err "make install failed"

cd "$SOURCES"
rm -rf man-pages-6.18

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Man-pages - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Man-pages-6.18${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/share/man/${NC}"
echo ""
echo -e "  Archivos instalados: mas de 2400 paginas de manual"
echo ""
echo -e "  Proposito: Documentacion de funciones C, archivos de"
echo -e "  dispositivo y archivos de configuracion del sistema."
echo ""

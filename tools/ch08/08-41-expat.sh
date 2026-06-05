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

step "Extracting expat-2.8.1..."
cd "$SOURCES"
tar -xf expat-2.8.1.tar.xz
cd expat-2.8.1

step "Configuring Expat..."
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.8.1 || err "configure failed"

step "Compiling Expat..."
make -j$(nproc) || err "make failed"

step "Installing Expat..."
make install || err "make install failed"

step "Installing documentation..."
install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.8.1 || err "install doc failed"

cd "$SOURCES"
rm -rf expat-2.8.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Expat-2.8.1 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Expat-2.8.1 - Parser XML basado en streams${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libexpat.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}xmlwf${NC} - Validador de documentos XML (well-formedness)"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libexpat.so${NC} - Biblioteca parser XML con API C"
echo ""
echo -e "  Proposito: Expat es un parser XML orientado a streams"
echo -e "  escrito en C. Es usado por Python, Perl, CMake, D-Bus,"
echo -e "  Mesa, y muchos otros paquetes que necesitan procesar XML."
echo ""

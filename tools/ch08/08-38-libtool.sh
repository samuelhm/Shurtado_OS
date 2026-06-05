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

step "Extracting libtool-2.5.4..."
cd "$SOURCES"
tar -xf libtool-2.5.4.tar.xz
cd libtool-2.5.4

step "Configuring Libtool..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Libtool..."
make -j$(nproc) || err "make failed"

step "Installing Libtool..."
make install || err "make install failed"

step "Removing static libltdl..."
rm -fv /usr/lib/libltdl.a || err "rm failed"

cd "$SOURCES"
rm -rf libtool-2.5.4

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libtool-2.5.4 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Libtool-2.5.4 - Soporte de librerias compartidas${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/libtool${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}libtool${NC}    - Script de soporte de librerias compartidas"
echo -e "    ${GREEN}libtoolize${NC} - Prepara paquetes para usar libtool"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libltdl.so${NC} - Carga dinamica de modulos (dlopen wrapper)"
echo ""
echo -e "  Proposito: Libtool abstrae la creacion de librerias"
echo -e "  compartidas entre plataformas. Es usado por el build"
echo -e "  system de muchos paquetes GNU (autotools/libtool combo)."
echo ""

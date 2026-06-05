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

step "Extracting libffi-3.5.2..."
cd "$SOURCES"
tar -xf libffi-3.5.2.tar.gz
cd libffi-3.5.2

step "Configuring libffi..."
./configure --prefix=/usr          \
            --disable-static        \
            --with-gcc-arch=native || err "configure failed"

step "Compiling libffi..."
make -j$(nproc) || err "make failed"

step "Installing libffi..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf libffi-3.5.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libffi-3.5.2 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Libffi-3.5.2 - Foreign Function Interface${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libffi.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libffi.so${NC}  - Interfaz portatil de llamadas a funciones nativas"
echo ""
echo -e "  Proposito: libffi permite a programas llamar funciones"
echo -e "  definidas en tiempo de ejecucion sin conocer su firma"
echo -e "  en tiempo de compilacion. Es usada por Python (ctypes),"
echo -e "  GLib (GObject), y otros lenguajes para FFI."
echo ""

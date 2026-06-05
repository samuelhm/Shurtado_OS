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

step "Extracting elfutils-0.195..."
cd "$SOURCES"
tar -xf elfutils-0.195.tar.bz2
cd elfutils-0.195

step "Configuring elfutils..."
./configure --prefix=/usr               \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy || err "configure failed"

step "Compiling lib and libelf..."
make -C lib -j$(nproc) || err "make lib failed"
make -C libelf -j$(nproc) || err "make libelf failed"

step "Installing libelf..."
make -C libelf install || err "make install failed"

step "Installing pkg-config file..."
install -vm644 config/libelf.pc /usr/lib/pkgconfig

step "Removing static library..."
rm /usr/lib/libelf.a

cd "$SOURCES"
rm -rf elfutils-0.195

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libelf-0.195 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Elfutils-0.195 - Libreria de lectura/escritura ELF${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libelf.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libelf.so${NC}  - Lee y escribe archivos en formato ELF"
echo ""
echo -e "  Proposito: libelf permite leer, modificar y crear archivos"
echo -e "  en formato ELF (Executable and Linkable Format), el formato"
echo -e "  estandar de binarios en Linux. Es requerida por el kernel"
echo -e "  y herramientas como objtool para el build del kernel."
echo ""

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

step "Extracting mpfr-4.2.2..."
cd "$SOURCES"
tar -xf mpfr-4.2.2.tar.xz
cd mpfr-4.2.2

step "Configuring MPFR..."
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.2 || err "configure failed"

step "Compiling MPFR..."
make -j$(nproc) || err "make failed"

step "Generating HTML documentation..."
make html || err "make html failed"

step "Installing MPFR..."
make install || err "make install failed"

step "Installing HTML documentation..."
make install-html || err "make install-html failed"

cd "$SOURCES"
rm -rf mpfr-4.2.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  MPFR-4.2.2 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}MPFR-4.2.2 - Multiple Precision Floating-Point${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libmpfr.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libmpfr.so${NC} - Funciones matematicas de precision multiple"
echo ""
echo -e "  Proposito: MPFR es una libreria C para calculos de punto"
echo -e "  flotante con precision multiple y redondeo correcto."
echo -e "  Es una dependencia de GCC y otras herramientas de"
echo -e "  computacion cientifica."
echo ""

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

step "Extracting mpc-1.4.1..."
cd "$SOURCES"
tar -xf mpc-1.4.1.tar.xz
cd mpc-1.4.1

step "Configuring MPC..."
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.4.1 || err "configure failed"

step "Compiling MPC..."
make -j$(nproc) || err "make failed"

step "Generating HTML documentation..."
make html || err "make html failed"

step "Installing MPC..."
make install || err "make install failed"

step "Installing HTML documentation..."
make install-html || err "make install-html failed"

cd "$SOURCES"
rm -rf mpc-1.4.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  MPC-1.4.1 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}MPC-1.4.1 - Multiple Precision Complex${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libmpc.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libmpc.so${NC} - Aritmetica de numeros complejos con precision arbitraria"
echo ""
echo -e "  Proposito: MPC es una libreria C para la aritmetica de"
echo -e "  numeros complejos con precision arbitrariamente alta y"
echo -e "  redondeo correcto. Es una dependencia de GCC."
echo ""

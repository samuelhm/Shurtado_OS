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

step "Extracting gmp-6.3.0..."
cd "$SOURCES"
tar -xf gmp-6.3.0.tar.xz
cd gmp-6.3.0

step "Fixing configure for modern compilers..."
sed -i '/long long t1;/,+1s/()/(...)/' configure || err "sed configure failed"

step "Configuring GMP..."
./configure --prefix=/usr                           \
            --enable-cxx                            \
            --disable-static                        \
            --docdir=/usr/share/doc/gmp-6.3.0 || err "configure failed"

step "Compiling GMP..."
make -j$(nproc) || err "make failed"

step "Generating HTML documentation..."
make html || err "make html failed"

step "Installing GMP..."
make install || err "make install failed"

step "Installing HTML documentation..."
make install-html || err "make install-html failed"

cd "$SOURCES"
rm -rf gmp-6.3.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GMP-6.3.0 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GMP-6.3.0 - GNU Multiple Precision Arithmetic Library${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libgmp.so${NC}    - Aritmetica de enteros de precision arbitraria"
echo -e "    ${GREEN}libgmpxx.so${NC}  - Bindings C++ para GMP"
echo ""
echo -e "  Proposito: GMP es una libreria para aritmetica de precision"
echo -e "  arbitraria con enteros, racionales y flotantes. Es dependencia"
echo -e "  obligada de GCC (para calculos de constantes en tiempo de"
echo -e "  compilacion), MPFR, MPC, y software criptografico. Sin GMP"
echo -e "  no se puede compilar GCC."
echo ""

#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting gcc-16.1.0 (for libstdc++)..."
cd "$SOURCES"
tar -xf gcc-16.1.0.tar.xz
cd gcc-16.1.0

step "Creating build directory for libstdc++..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring Libstdc++..."
../libstdc++-v3/configure      \
    --host=$LFS_TGT            \
    --build=$(../config.guess) \
    --prefix=/usr              \
    --disable-multilib         \
    --disable-nls              \
    --disable-libstdcxx-pch    \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/16.1.0 || err "configure failed"

step "Compiling Libstdc++..."
make -j$(nproc) || err "make failed"

step "Installing Libstdc++ (DESTDIR=\$LFS)..."
make DESTDIR=$LFS install || err "make install failed"

step "Removing harmful libtool archive files..."
rm -v "$LFS/usr/lib/lib"{stdc++,stdc++exp,stdc++fs,supc++}".la" || err "rm .la failed"

cd "$SOURCES"
rm -rf gcc-16.1.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libstdc++ - Instalación completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Libstdc++ (de GCC-16.1.0)${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/usr/lib/${NC}"
echo ""
echo -e "  Librerías instaladas:"
echo -e "    ${GREEN}libstdc++.so.6${NC}   - Biblioteca estándar de C++"
echo -e "                              (iostream, string, vector, map, etc.)"
echo -e "    ${GREEN}libstdc++fs.a${NC}    - Extensión de filesystem (std::filesystem)"
echo -e "    ${GREEN}libstdc++exp.a${NC}   - Soporte experimental de C++"
echo -e "    ${GREEN}libsupc++.a${NC}      - Soporte de runtime C++ (excepciones, RTTI)"
echo ""
echo -e "  Headers instalados en:"
echo -e "    ${GREEN}\$LFS/tools/$LFS_TGT/include/c++/16.1.0/${NC}"
echo ""
echo -e "  Propósito: Es la biblioteca estándar de C++. Todo programa"
echo -e "  escrito en C++ enlaza contra libstdc++. Provee iostream,"
echo -e "  contenedores STL, algoritmos, strings, y soporte de runtime"
echo -e "  (excepciones, RTTI). GCC Pass 2 la necesita para compilarse"
echo -e "  a sí mismo (partes de GCC están escritas en C++)."
echo ""

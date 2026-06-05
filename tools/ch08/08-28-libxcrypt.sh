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

step "Extracting libxcrypt-4.5.2..."
cd "$SOURCES"
tar -xf libxcrypt-4.5.2.tar.xz
cd libxcrypt-4.5.2

step "Patching: fixing glibc-2.43+ compatibility..."
sed -i '/strchr/s/const//' lib/crypt-{sm3,gost}-yescrypt.c || err "sed failed"

step "Configuring Libxcrypt..."
./configure --prefix=/usr                \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
            --disable-static             \
            --disable-failure-tokens || err "configure failed"

step "Compiling Libxcrypt..."
make -j$(nproc) || err "make failed"

step "Installing Libxcrypt..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf libxcrypt-4.5.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libxcrypt-4.5.2 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Libxcrypt-4.5.2 - Password Hashing Library${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libcrypt.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libcrypt.so${NC} - Funciones modernas para hashing de contrasenas"
echo ""
echo -e "  Proposito: Libxcrypt es una libreria moderna para hashing"
echo -e "  unidireccional de contrasenas. Reemplaza a la libcrypt"
echo -e "  obsoleta de Glibc con algoritmos seguros como yescrypt,"
echo -e "  bcrypt, y SHA-512."
echo ""

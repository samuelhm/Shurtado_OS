#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libgpg-error-1.61"
TAR="$PKG.tar.bz2"
URL="https://www.gnupg.org/ftp/gcrypt/libgpg-error/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building $PKG..."
./configure --prefix=/usr --sysconfdir=/etc || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"
install -v -m644 -D README /usr/share/doc/libgpg-error-1.61/README

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libgpg-error.so${NC}"
echo -e "  Programas:  ${GREEN}gpg-error, gpgrt-config, yat2m${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Codigos de error comunes para GnuPG."
echo -e "  Requerido por libgcrypt."
echo ""

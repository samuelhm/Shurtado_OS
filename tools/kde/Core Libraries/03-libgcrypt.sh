#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libgcrypt-1.12.2"
TAR="$PKG.tar.bz2"
URL="https://www.gnupg.org/ftp/gcrypt/libgcrypt/$TAR"

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
./configure --prefix=/usr || err "configure failed"
make || err "make failed"
make -C doc html                                                       2>/dev/null || true
makeinfo --html --no-split -o doc/gcrypt_nochunks.md doc/gcrypt.texi   2>/dev/null || true
makeinfo --plaintext       -o doc/gcrypt.txt           doc/gcrypt.texi 2>/dev/null || true

step "Installing $PKG..."
make install || err "make install failed"
install -v -dm755   /usr/share/doc/libgcrypt-1.12.2
install -v -m644    README doc/{README.apichanges,fips*,libgcrypt*} \
                    /usr/share/doc/libgcrypt-1.12.2
install -v -dm755   /usr/share/doc/libgcrypt-1.12.2/html
[ -d doc/gcrypt.html ] && install -v -m644 doc/gcrypt.html/* \
                    /usr/share/doc/libgcrypt-1.12.2/html 2>/dev/null || true
[ -f doc/gcrypt_nochunks.md ] && install -v -m644 doc/gcrypt_nochunks.md \
                    /usr/share/doc/libgcrypt-1.12.2 2>/dev/null || true
[ -f doc/gcrypt.txt ] && install -v -m644 doc/gcrypt.txt \
                    /usr/share/doc/libgcrypt-1.12.2 2>/dev/null || true
[ -f doc/gcrypt.texi ] && install -v -m644 doc/gcrypt.texi \
                    /usr/share/doc/libgcrypt-1.12.2 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libgcrypt.so${NC}"
echo -e "  Programas:  ${GREEN}dumpsexp, hmac256, mpicalc${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Libreria criptografica de proposito general."
echo -e "  Basada en el codigo de GnuPG."
echo ""

#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
LIBSASS="libsass-3.6.6"
LIBSASS_TAR="$LIBSASS.tar.gz"
LIBSASS_URL="https://github.com/sass/libsass/archive/3.6.6/$LIBSASS_TAR"

SASSC="sassc-3.6.2"
SASSC_TAR="$SASSC.tar.gz"
SASSC_URL="https://github.com/sass/sassc/archive/3.6.2/$SASSC_TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading libsass + sassc..."
cd "$SOURCES"
[ -f "$LIBSASS_TAR" ] || wget "$LIBSASS_URL"
[ -f "$LIBSASS_TAR" ] || err "libsass download failed"
[ -f "$SASSC_TAR" ] || wget "$SASSC_URL"
[ -f "$SASSC_TAR" ] || err "sassc download failed"

step "Extracting sassc..."
rm -rf "$SASSC"
tar -xf "$SASSC_TAR"
cd "$SASSC"

step "Building libsass..."
tar -xf ../$LIBSASS_TAR
pushd $LIBSASS
autoreconf -fi || err "libsass autoreconf failed"
./configure --prefix=/usr --disable-static || err "libsass configure failed"
make || err "libsass make failed"
step "Installing libsass..."
make install || err "libsass install failed"
popd

step "Building sassc..."
autoreconf -fi || err "sassc autoreconf failed"
./configure --prefix=/usr || err "sassc configure failed"
make || err "sassc make failed"
step "Installing sassc..."
make install || err "sassc install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$SASSC"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  libsass + sassc - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libsass.so${NC}"
echo -e "  Programa:   ${GREEN}sassc${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib${NC}"
echo ""
echo -e "  Proposito: Pre-procesador CSS (Sass)."
echo -e "  Requerido por KDE Plasma (breeze-gtk theme)."
echo ""

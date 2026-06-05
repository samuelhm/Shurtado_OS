#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="jasper-version-4.2.9"
TAR="jasper-version-4.2.9.tar.gz"
URL="https://github.com/jasper-software/jasper/archive/version-4.2.9/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading jasper 4.2.9..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting jasper..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building jasper..."
mkdir BUILD && cd BUILD
cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D JAS_ENABLE_DOC=NO            \
      -D ALLOW_IN_SOURCE_BUILD=YES    \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/jasper-4.2.9 \
      .. || err "cmake failed"
make || err "make failed"

step "Installing jasper..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  jasper-4.2.9 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libjasper.so${NC}"
echo -e "  Programas:  ${GREEN}jasper, imgcmp, imginfo${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Codec JPEG-2000 de referencia."
echo -e "  Requerido por Qt para imagenes JPEG-2000."
echo ""

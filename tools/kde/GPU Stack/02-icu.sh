#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="icu4c-78.3-sources"
PKG_DIR="icu"
TAR="icu4c-78.3-sources.tgz"
URL="https://github.com/unicode-org/icu/releases/download/release-78.3/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading ICU 78.3..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting ICU..."
rm -rf "$PKG_DIR"
tar -xf "$TAR"
cd "$PKG_DIR"

step "Building ICU..."
cd source
./configure --prefix=/usr || err "configure failed"
make -j$(nproc) || err "make failed"

step "Installing ICU..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG_DIR"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  ICU 78.3 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libicudata.so, libicui18n.so, libicuuc.so${NC}"
echo -e "              ${GREEN}libicuio.so, libicutu.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Soporte Unicode y globalizacion (i18n)."
echo -e "  Requerido por libxml2, Qt6, y muchas aplicaciones."
echo ""

#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libvorbis-1.3.7"
TAR="$PKG.tar.xz"
URL="https://downloads.xiph.org/releases/vorbis/$TAR"

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
./configure --prefix=/usr --disable-static || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"
install -v -m644 doc/Vorbis* /usr/share/doc/libvorbis-1.3.7

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libvorbis.so, libvorbisenc.so,${NC}"
echo -e "              ${GREEN}libvorbisfile.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Codec de audio Ogg Vorbis (patent-free)."
echo -e "  Requerido por FFmpeg, libcanberra, y apps de audio."
echo ""

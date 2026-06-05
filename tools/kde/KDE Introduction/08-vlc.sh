#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="vlc-3.0.23"
TAR="$PKG.tar.xz"
URL="https://download.videolan.org/vlc/3.0.23/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Fixing gst-plugins-base build issue..."
sed -i 's/gstvideopool.h/video.h/' modules/codec/gstreamer/gstvlcvideopool.h

step "Building $PKG..."
BUILDCC=gcc ./configure --prefix=/usr || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make docdir=/usr/share/doc/vlc-3.0.23 install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Libs:       ${BLUE}libvlc.so, libvlccore.so${NC}"
echo -e "  Plugins:    ${BLUE}/usr/lib/vlc/plugins${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/multimedia/vlc.md${NC}"
echo ""

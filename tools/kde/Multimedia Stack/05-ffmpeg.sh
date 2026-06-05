#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="ffmpeg-8.1.1"
TAR="$PKG.tar.xz"
URL="https://ffmpeg.org/releases/$TAR"
PATCH_URL="https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-8.1.1-chromium_method-1.patch"
PATCH_FILE="ffmpeg-8.1.1-chromium_method-1.patch"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"
[ -f "$PATCH_FILE" ] || wget "$PATCH_URL"
[ -f "$PATCH_FILE" ] || err "download patch failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Applying patch..."
patch -Np1 -i "/sources/$PATCH_FILE" || err "patch failed"

step "Building $PKG..."
./configure --prefix=/usr        \
            --enable-gpl         \
            --enable-version3    \
            --enable-nonfree     \
            --disable-static     \
            --enable-shared      \
            --disable-debug      \
            --ignore-tests=enhanced-flv-av1,enhanced-flv-multitrack \
            --docdir=/usr/share/doc/ffmpeg-8.1.1 || err "configure failed"
make || err "make failed"
gcc tools/qt-faststart.c -o tools/qt-faststart

step "Installing $PKG..."
make install || err "make install failed"
install -v -m755    tools/qt-faststart /usr/bin
install -v -m755 -d           /usr/share/doc/ffmpeg-8.1.1
install -v -m644    doc/*.txt /usr/share/doc/ffmpeg-8.1.1

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libavcodec, libavformat, libavutil,${NC}"
echo -e "              ${GREEN}libswscale, libswresample, libavfilter${NC}"
echo -e "  Programas:  ${GREEN}ffmpeg, ffplay, ffprobe, qt-faststart${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/ && /usr/bin/${NC}"
echo ""
echo -e "  Proposito: Framework de conversion audio/video."
echo -e "  Requerido por Pipewire y apps multimedia."
echo ""

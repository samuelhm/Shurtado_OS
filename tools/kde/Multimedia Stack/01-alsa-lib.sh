#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="alsa-lib-1.2.16"
UCM_PKG="alsa-ucm-conf-1.2.16"
TAR="$PKG.tar.bz2"
UCM_TAR="$UCM_PKG.tar.bz2"
URL="https://www.alsa-project.org/files/pub/lib/$TAR"
UCM_URL="https://www.alsa-project.org/files/pub/lib/$UCM_TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"
[ -f "$UCM_TAR" ] || wget "$UCM_URL"
[ -f "$UCM_TAR" ] || err "download UCM config failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building $PKG..."
./configure --prefix=/usr || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"
tar -C /usr/share/alsa --strip-components=1 -xf "/sources/$UCM_TAR"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libasound.so, libatopology.so${NC}"
echo -e "  Programa:   ${GREEN}aserver${NC}"
echo -e "  Config:     ${BLUE}/usr/share/alsa/${NC}"
echo ""
echo -e "  Proposito: API de sonido ALSA para aplicaciones."
echo -e "  Requerido por PulseAudio, Pipewire, y apps de audio."
echo ""

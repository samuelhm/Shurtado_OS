#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="pulseaudio-17.0"
TAR="$PKG.tar.xz"
URL="https://www.freedesktop.org/software/pulseaudio/releases/$TAR"

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
mkdir build && cd build
meson setup --prefix=/usr       \
            --buildtype=release \
            -D database=gdbm    \
            -D doxygen=false    \
            -D bluez5=disabled  \
            -D tests=false      \
            .. || err "meson setup failed"
ninja || err "ninja failed"

step "Installing $PKG..."
ninja install || err "ninja install failed"
rm -f /usr/share/dbus-1/system.d/pulseaudio-system.conf

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libpulse.so, libpulse-mainloop-glib.so,${NC}"
echo -e "              ${GREEN}libpulse-simple.so, libpulsecommon-17.0.so${NC}"
echo -e "  Programa:   ${GREEN}pulseaudio, pactl, pacmd, paplay${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/ && /usr/bin/${NC}"
echo ""
echo -e "  Proposito: Servidor de sonido para aplicaciones POSIX."
echo -e "  Requerido por Pipewire (compatibilidad) y apps de audio."
echo ""

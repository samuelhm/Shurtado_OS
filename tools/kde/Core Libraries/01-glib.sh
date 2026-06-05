#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="glib-2.88.1"
GI_PKG="gobject-introspection-1.86.0"
TAR="$PKG.tar.xz"
GI_TAR="$GI_PKG.tar.xz"
URL="https://download.gnome.org/sources/glib/2.88/$TAR"
GI_URL="https://download.gnome.org/sources/gobject-introspection/1.86/$GI_TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"
[ -f "$GI_TAR" ] || wget "$GI_URL"
[ -f "$GI_TAR" ] || err "download GObject Introspection failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building $PKG (without introspection)..."
mkdir build && cd build
meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D introspection=disabled \
      -D glib_debug=disabled    \
      -D man-pages=enabled      \
      -D sysprof=disabled       || err "meson setup failed"
ninja || err "ninja failed"

step "Installing $PKG (first pass)..."
ninja install || err "ninja install failed"

step "Building GObject Introspection..."
cd /sources/$PKG
tar xf /sources/$GI_TAR
meson setup gobject-introspection-1.86.0 gi-build \
            --prefix=/usr --buildtype=release     || err "GI meson setup failed"
ninja -C gi-build || err "GI ninja failed"

step "Installing GObject Introspection..."
ninja -C gi-build install || err "GI ninja install failed"

step "Rebuilding GLib with introspection enabled..."
cd build
meson configure -D introspection=enabled || err "meson reconfigure failed"
ninja || err "ninja rebuild failed"

step "Installing $PKG (final)..."
ninja install || err "ninja final install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG + GObject Introspection - OK${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libglib-2.0, libgio-2.0, libgobject-2.0,${NC}"
echo -e "              ${GREEN}libgmodule-2.0, libgirepository-2.0${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Core de tipos, eventos, threading, I/O."
echo -e "  GObject Introspection genera bindings para lenguajes."
echo ""

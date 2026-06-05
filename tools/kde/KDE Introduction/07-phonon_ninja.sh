#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="phonon-4.12.0"
TAR="$PKG.tar.xz"
URL="https://download.kde.org/stable/phonon/4.12.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building $PKG (ninja backend)..."
mkdir build && cd build

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PHONON_BUILD_QT5=OFF      \
      -G Ninja -W no-dev ..        || err "cmake failed"
ninja || err "ninja failed"

step "Installing $PKG..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG (ninja) - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Backend:    ${BLUE}cmake + Ninja${NC}"
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Libs:       ${BLUE}libphonon4qt6.so, libphonon4qt6experimental.so${NC}"
echo -e "  Nota:       Requiere phonon-backend-vlc en runtime"
echo -e "  Fuente:     ${BLUE}docs/blfs/kde/phonon.md${NC}"
echo ""

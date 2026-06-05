#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="qtkeychain-0.16.0"
TAR="$PKG.tar.gz"
URL="https://github.com/frankosterfeld/qtkeychain/archive/0.16.0/$TAR"

: "${QT6DIR:=/opt/qt6}"

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

cmake -D CMAKE_INSTALL_PREFIX="$QT6DIR" \
      -D CMAKE_BUILD_TYPE=Release       \
      -D BUILD_WITH_QT6=ON              \
      -D BUILD_TESTING=OFF              \
      -W no-dev ..                      || err "cmake failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}$QT6DIR${NC}"
echo -e "  Libs:       ${BLUE}libqt6keychain.so${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/kde/qtkeychain.md${NC}"
echo ""

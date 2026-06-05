#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="extra-cmake-modules-6.26.0"
TAR="$PKG.tar.xz"
URL="https://download.kde.org/stable/frameworks/6.26/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Applying fixes..."
sed -i '/"lib64"/s/64//' kde-modules/KDEInstallDirsCommon.cmake

sed -e '/PACKAGE_INIT/i set(SAVE_PACKAGE_PREFIX_DIR "${PACKAGE_PREFIX_DIR}")' \
    -e '/^include/a set(PACKAGE_PREFIX_DIR "${SAVE_PACKAGE_PREFIX_DIR}")' \
    -i ECMConfig.cmake.in

step "Building $PKG..."
mkdir build && cd build

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_WITH_QT6=ON         \
      -D DOC_INSTALL_DIR=/usr/share/doc/extra-cmake-modules-6.26.0 \
      .. || err "cmake failed"
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
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Modulos:    ${BLUE}/usr/share/ECM${NC}"
echo -e "  Nota:       Instalado en /usr (no /opt/kf6)"
echo -e "  Fuente:     ${BLUE}docs/blfs/kde/extra-cmake-modules.md${NC}"
echo ""

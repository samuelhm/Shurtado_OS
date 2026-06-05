#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="qca-2.3.10"
TAR="$PKG.tar.xz"
URL="https://download.kde.org/stable/qca/2.3.10/$TAR"
PATCH="qca-2.3.10-openssl4_fixes-1.patch"
PATCH_URL="https://www.linuxfromscratch.org/patches/blfs/svn/$PATCH"

: "${QT6DIR:=/opt/qt6}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ]   || wget "$URL"
[ -f "$TAR" ]   || err "download failed"
[ -f "$PATCH" ] || wget "$PATCH_URL"
[ -f "$PATCH" ] || err "patch download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Applying openssl4 patch..."
patch -Np1 -i ../"$PATCH" || err "patch failed"

step "Fixing CA certificate location..."
sed -i 's@cert.pem@certs/ca-bundle.crt@' CMakeLists.txt

step "Building $PKG..."
mkdir build && cd build

cmake -D CMAKE_INSTALL_PREFIX="$QT6DIR"     \
      -D CMAKE_BUILD_TYPE=Release           \
      -D QT6=ON                             \
      -D QCA_INSTALL_IN_QT_PREFIX=ON        \
      -D QCA_MAN_INSTALL_DIR:PATH=/usr/share/man \
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
echo -e "  Prefijo:    ${BLUE}$QT6DIR${NC}"
echo -e "  Libs:       ${BLUE}libqca-qt6.so${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/general/qca.md${NC}"
echo ""

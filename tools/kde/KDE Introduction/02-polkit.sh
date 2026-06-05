#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="polkit-127"
TAR="$PKG.tar.gz"
URL="https://github.com/polkit-org/polkit/archive/127/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Creating polkitd user/group..."
groupadd -fg 27 polkitd 2>/dev/null || true
useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27 \
        -g polkitd -s /bin/false polkitd 2>/dev/null || true

step "Building $PKG..."
mkdir build && cd build

meson setup ..                    \
      --prefix=/usr               \
      --buildtype=release         \
      -D man=true                 \
      -D session_tracking=logind  \
      -D tests=true               || err "meson setup failed"
ninja || err "ninja failed"

step "Installing $PKG..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Libs:       ${BLUE}libpolkit-agent-1.so, libpolkit-gobject-1.so${NC}"
echo -e "  Servicio:   ${BLUE}polkitd${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/postlfs/polkit.md${NC}"
echo ""

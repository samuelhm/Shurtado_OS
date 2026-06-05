#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="qt-everywhere-src-6.11.1"
TAR="$PKG.tar.xz"
URL="https://download.qt.io/archive/qt/6.11/6.11.1/single/$TAR"
PATCH="qt-everywhere-src-6.11.1-openssl4_fix-1.patch"
PATCH_URL="https://www.linuxfromscratch.org/patches/blfs/svn/$PATCH"
QT6PREFIX="/opt/qt6"

: "${QT6DIR:=$QT6PREFIX}"

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
patch -Np1 -i ../"$PATCH" -d qtbase/ || err "patch failed"

step "Removing unneeded components..."
rm -rf qtwebengine qt3d qtquick3dphysics qtopcua

step "Configuring Qt6 (prefix=$QT6PREFIX)..."
./configure -prefix "$QT6PREFIX" \
            -release             \
            -sysconfdir /etc/xdg \
            -dbus-linked         \
            -openssl-linked      \
            -system-sqlite       \
            -nomake examples     \
            -no-rpath            \
            -no-sbom             \
            -journald            || err "configure failed"

step "Building Qt6 (this will take a while)..."
ninja || err "ninja build failed"

step "Installing Qt6..."
ninja install || err "ninja install failed"

step "Removing build dir references from .prl files..."
find "$QT6PREFIX"/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;

step "Installing icons and desktop entries..."
pushd qttools/src

install -v -Dm644 assistant/assistant/images/assistant-128.png       \
                  /usr/share/pixmaps/assistant-qt6.png
install -v -Dm644 designer/src/designer/images/designer.png          \
                  /usr/share/pixmaps/designer-qt6.png
install -v -Dm644 linguist/linguist/images/icons/linguist-128-32.png \
                  /usr/share/pixmaps/linguist-qt6.png
install -v -Dm644 qdbus/qdbusviewer/images/qdbusviewer-128.png       \
                  /usr/share/pixmaps/qdbusviewer-qt6.png
popd

cat > /usr/share/applications/assistant-qt6.desktop << "EOF"
[Desktop Entry]
Name=Qt6 Assistant
Comment=Shows Qt6 documentation and examples
Exec=/opt/qt6/bin/assistant
Icon=assistant-qt6.png
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;Documentation;
EOF

cat > /usr/share/applications/designer-qt6.desktop << "EOF"
[Desktop Entry]
Name=Qt6 Designer
GenericName=Interface Designer
Comment=Design GUIs for Qt6 applications
Exec=/opt/qt6/bin/designer
Icon=designer-qt6.png
MimeType=application/x-designer;
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;
EOF

cat > /usr/share/applications/linguist-qt6.desktop << "EOF"
[Desktop Entry]
Name=Qt6 Linguist
Comment=Add translations to Qt6 applications
Exec=/opt/qt6/bin/linguist
Icon=linguist-qt6.png
MimeType=text/vnd.trolltech.linguist;application/x-linguist;
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;
EOF

cat > /usr/share/applications/qdbusviewer-qt6.desktop << "EOF"
[Desktop Entry]
Name=Qt6 QDbusViewer
GenericName=D-Bus Debugger
Comment=Debug D-Bus applications
Exec=/opt/qt6/bin/qdbusviewer
Icon=qdbusviewer-qt6.png
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;Debugger;
EOF

step "Configuring ld.so.conf..."
cat >> /etc/ld.so.conf << "EOF"

# Begin Qt addition
/opt/qt6/lib
# End Qt addition
EOF
ldconfig

step "Creating /etc/profile.d/qt6.sh..."
cat > /etc/profile.d/qt6.sh << "EOF"
# Begin /etc/profile.d/qt6.sh

QT6DIR=/opt/qt6

pathappend $QT6DIR/bin           PATH
pathappend $QT6DIR/lib/pkgconfig PKG_CONFIG_PATH

export QT6DIR

# End /etc/profile.d/qt6.sh
EOF

step "Configuring sudoers for QT6DIR..."
cat > /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT6DIR
EOF

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Qt 6.11.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}$QT6PREFIX${NC}"
echo -e "  Config:     ${BLUE}/etc/profile.d/qt6.sh${NC}"
echo -e "  Libs:       ${BLUE}/etc/ld.so.conf${NC}"
echo -e "  Sudoers:    ${BLUE}/etc/sudoers.d/qt${NC}"
echo ""
echo -e "  Fuente:     ${BLUE}docs/blfs/x/qt6.md${NC}"
echo ""

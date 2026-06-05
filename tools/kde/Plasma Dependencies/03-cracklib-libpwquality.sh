#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
CRACK_PKG="cracklib-2.10.3"
CRACK_TAR="$CRACK_PKG.tar.xz"
CRACK_URL="https://github.com/cracklib/cracklib/releases/download/v2.10.3/$CRACK_TAR"
WORDS_URL="https://github.com/cracklib/cracklib/releases/download/v2.10.3/cracklib-words-2.10.3.xz"

PWQ_PKG="libpwquality-1.4.5"
PWQ_TAR="$PWQ_PKG.tar.bz2"
PWQ_URL="https://github.com/libpwquality/libpwquality/releases/download/$PWQ_PKG/$PWQ_TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

# ==================== CrackLib ====================
step "Downloading $CRACK_PKG..."
cd "$SOURCES"
[ -f "$CRACK_TAR" ] || wget "$CRACK_URL"
[ -f "$CRACK_TAR" ] || err "cracklib download failed"
[ -f "cracklib-words-2.10.3.xz" ] || wget "$WORDS_URL"

step "Building $CRACK_PKG..."
rm -rf "$CRACK_PKG"
tar -xf "$CRACK_TAR"
cd "$CRACK_PKG"
./configure --prefix=/usr               \
            --disable-static            \
            --with-default-dict=/usr/lib/cracklib/pw_dict || err "configure failed"
make || err "make failed"

step "Installing $CRACK_PKG..."
make install || err "make install failed"

step "Setting up CrackLib dictionary..."
xzcat ../cracklib-words-2.10.3.xz > /usr/share/dict/cracklib-words
ln -v -sf cracklib-words /usr/share/dict/words
echo $(hostname) >> /usr/share/dict/cracklib-extra-words
install -v -m755 -d /usr/lib/cracklib
create-cracklib-dict /usr/share/dict/cracklib-words \
                     /usr/share/dict/cracklib-extra-words

cd "$SOURCES"
rm -rf "$CRACK_PKG"

# ==================== libpwquality ====================
step "Downloading $PWQ_PKG..."
cd "$SOURCES"
[ -f "$PWQ_TAR" ] || wget "$PWQ_URL"
[ -f "$PWQ_TAR" ] || err "libpwquality download failed"

step "Building $PWQ_PKG..."
rm -rf "$PWQ_PKG"
tar -xf "$PWQ_TAR"
cd "$PWQ_PKG"
./configure --prefix=/usr                      \
            --disable-static                   \
            --with-securedir=/usr/lib/security \
            --disable-python-bindings          || err "configure failed"
make || err "make failed"
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD/python

step "Installing $PWQ_PKG..."
make install || err "make install failed"
pip3 install --no-index --find-links dist --no-user pwquality

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PWQ_PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  CrackLib + libpwquality - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libcrack.so, libpwquality.so, pam_pwquality.so${NC}"
echo -e "  Programas:  ${GREEN}cracklib-check, pwscore, pwmake${NC}"
echo -e "  Dict:       ${BLUE}/usr/lib/cracklib/pw_dict${NC}"
echo ""
echo -e "  Proposito: Verificacion de calidad de contraseñas."
echo -e "  Requerido por KDE Plasma (kscreenlocker)."
echo ""

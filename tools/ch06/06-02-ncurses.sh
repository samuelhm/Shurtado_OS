#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting ncurses-6.6..."
cd "$SOURCES"
tar -xf ncurses-6.6.tar.gz
cd ncurses-6.6

step "Building host tic program..."
mkdir build
pushd build
  ../configure --prefix=$LFS/tools AWK=gawk || err "host configure failed"
  make -j$(nproc) -C include || err "make -C include failed"
  make -j$(nproc) -C progs tic || err "make -C progs tic failed"
  install -m755 progs/tic $LFS/tools/bin || err "install tic failed"
popd

step "Configuring Ncurses..."
./configure --prefix=/usr                \
            --host=$LFS_TGT              \
            --build=$(./config.guess)    \
            --mandir=/usr/share/man      \
            --with-manpage-format=normal \
            --with-shared                \
            --without-normal             \
            --with-cxx-shared            \
            --without-debug              \
            --without-ada                \
            --disable-stripping          \
            AWK=gawk || err "configure failed"

step "Compiling Ncurses..."
make -j$(nproc) || err "make failed"

step "Installing Ncurses..."
make DESTDIR=$LFS install || err "make install failed"

step "Creating libncurses.so symlink..."
ln -sv libncursesw.so $LFS/usr/lib/libncurses.so || err "symlink failed"

step "Patching curses.h for wide-char compatibility..."
sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i $LFS/usr/include/curses.h || err "sed curses.h failed"

cd "$SOURCES"
rm -rf ncurses-6.6

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Ncurses-6.6 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Ncurses-6.6 - Terminal handling library${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/lib/${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libncursesw.so${NC}    - Biblioteca principal (wide-char)"
echo -e "    ${GREEN}libncurses.so${NC}     - Symlink a libncursesw.so"
echo -e "    ${GREEN}libncurses++.so${NC}   - Bindings C++"
echo -e "    ${GREEN}libpanelw.so${NC}      - Soporte de paneles"
echo -e "    ${GREEN}libmenuw.so${NC}       - Soporte de menus"
echo -e "    ${GREEN}libformw.so${NC}       - Soporte de formularios"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}tic${NC}       - Compilador de entradas terminfo"
echo -e "    ${GREEN}infocmp${NC}   - Compara/visualiza entradas terminfo"
echo -e "    ${GREEN}tput${NC}       - Inicializa terminal o consulta terminfo"
echo -e "    ${GREEN}clear${NC}      - Limpia la pantalla del terminal"
echo -e "    ${GREEN}toe${NC}        - Lista las entradas terminfo disponibles"
echo ""
echo -e "  Proposito: Ncurses es la biblioteca que permite a los programas"
echo -e "  controlar terminales de texto de forma portable (colores,"
echo -e "  posicionamiento del cursor, ventanas, menus). Es necesaria"
echo -e "  para Bash, Vim, Less, y practicamente cualquier programa"
echo -e "  interactivo de terminal."
echo ""

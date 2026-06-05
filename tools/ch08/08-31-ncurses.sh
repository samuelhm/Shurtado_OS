#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting ncurses-6.6..."
cd "$SOURCES"
tar -xf ncurses-6.6.tar.gz
cd ncurses-6.6

step "Configuring Ncurses..."
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-shared           \
            --without-debug         \
            --without-normal        \
            --with-cxx-shared       \
            --enable-pc-files       \
            --with-pkg-config-libdir=/usr/lib/pkgconfig || err "configure failed"

step "Compiling Ncurses..."
make -j$(nproc) || err "make failed"

step "Installing to dest directory (avoid overwriting in-use library)..."
make DESTDIR=$PWD/dest install || err "make DESTDIR install failed"

step "Patching curses.h for wide-character ABI..."
sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i dest/usr/include/curses.h || err "sed failed"

step "Copying dest to / ..."
cp --remove-destination -av dest/* / || err "cp failed"

step "Creating compatibility symlinks for non-wide libraries..."
for lib in ncurses form panel menu ; do
    ln -sfv lib${lib}w.so /usr/lib/lib${lib}.so
    ln -sfv ${lib}w.pc    /usr/lib/pkgconfig/${lib}.pc
done
ln -sfv libncursesw.so /usr/lib/libcurses.so

cd "$SOURCES"
rm -rf ncurses-6.6

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Ncurses-6.6 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Ncurses-6.6 - Terminal Handling Library${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libncursesw.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}tic${NC}      - Compilador de entradas terminfo"
echo -e "    ${GREEN}infocmp${NC}  - Compara/imprime descripciones terminfo"
echo -e "    ${GREEN}clear${NC}    - Limpia la pantalla del terminal"
echo -e "    ${GREEN}reset${NC}    - Reinicializa el terminal"
echo -e "    ${GREEN}tput${NC}     - Inicializa terminal o consulta terminfo"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libncursesw.so${NC}  - Manejo de pantalla wide-char"
echo -e "    ${GREEN}libformw.so${NC}     - Manejo de formularios"
echo -e "    ${GREEN}libmenuw.so${NC}     - Manejo de menus"
echo -e "    ${GREEN}libpanelw.so${NC}    - Manejo de paneles"
echo ""
echo -e "  Proposito: Ncurses proporciona librerias para manejo"
echo -e "  independiente del terminal de pantallas de caracteres."
echo -e "  Es usada por muchos programas interactivos como vim,"
echo -e "  less, screen, y el menuconfig del kernel."
echo ""

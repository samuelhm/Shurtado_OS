#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Readline..."
cd "$SOURCES"
tar -xf readline-8.3.tar.gz
cd readline-8.3

step "Fixing .old library backup behavior..."
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install

step "Removing rpath from shared libraries..."
sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf

step "Applying upstream fix for input.c..."
sed -e '270a\
     else\
       chars_avail = 1;'      \
    -e '288i\   result = -1;' \
    -i.orig input.c

step "Configuring Readline..."
./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/readline-8.3 || err "configure failed"

step "Compiling Readline..."
make SHLIB_LIBS="-lncursesw" -j$(nproc) || err "make failed"

step "Installing Readline..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf readline-8.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Readline - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Readline-8.3${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/, /usr/include/readline/${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libreadline.so${NC} - Edicion de linea de comandos"
echo -e "    ${GREEN}libhistory.so${NC}  - Historial de comandos"
echo ""
echo -e "  Proposito: Biblioteca que proporciona edicion de linea"
echo -e "  de comandos e historial para shells y otras aplicaciones"
echo -e "  interactivas (Bash, GDB, etc.)."
echo ""

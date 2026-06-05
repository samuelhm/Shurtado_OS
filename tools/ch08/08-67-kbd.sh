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

step "Extracting kbd-2.10.0..."
cd "$SOURCES"
tar -xf kbd-2.10.0.tar.xz
cd kbd-2.10.0

step "Applying backspace patch..."
patch -Np1 -i ../kbd-2.10.0-backspace-1.patch || err "patch failed"

step "Fixing resizecons config..."
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

step "Configuring kbd..."
./configure --prefix=/usr --disable-vlock || err "configure failed"

step "Compiling kbd..."
make -j$(nproc) || err "make failed"

step "Installing kbd..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf kbd-2.10.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Kbd-2.10.0 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Kbd-2.10.0 - Utilidades de teclado${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}loadkeys${NC}   - Carga mapa de teclado de consola"
echo -e "    ${GREEN}dumpkeys${NC}   - Vuelca tabla de traduccion de teclado"
echo -e "    ${GREEN}showkey${NC}    - Muestra scancodes/keycodes de teclas"
echo -e "    ${GREEN}setfont${NC}    - Cambia fuente de consola"
echo -e "    ${GREEN}kbdinfo${NC}    - Obtiene informacion de la consola"
echo -e "    ${GREEN}openvt${NC}     - Abre un nuevo terminal virtual"
echo -e "    ${GREEN}chvt${NC}       - Cambia el terminal virtual activo"
echo -e "    ${GREEN}deallocvt${NC}  - Libera terminales virtuales no usados"
echo ""
echo -e "  Proposito: Kbd proporciona herramientas para gestionar"
echo -e "  mapas de teclado y fuentes de la consola Linux. Incluye"
echo -e "  loadkeys/dumpkeys para layouts de teclado y setfont/showconsolefont"
echo -e "  para la tipografia de la terminal virtual."
echo ""

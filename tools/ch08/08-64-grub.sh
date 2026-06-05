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

step "Extracting grub-2.14..."
cd "$SOURCES"
tar -xf grub-2.14.tar.xz
cd grub-2.14

step "Unsetting compiler flags (critical for bootloader)..."
unset {C,CPP,CXX,LD}FLAGS

step "Fixing linker option bug..."
sed 's/--image-base/--nonexist-linker-option/' -i configure || err "sed failed"

step "Configuring GRUB for BIOS..."
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-efiemu  \
            --disable-werror || err "configure failed"

step "Compiling GRUB..."
make -j$(nproc) || err "make failed"

step "Installing GRUB..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf grub-2.14

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GRUB-2.14 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GRUB-2.14 - GRand Unified Bootloader${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/sbin/, /usr/lib/grub/${NC}"
echo ""
echo -e "  Binarios principales instalados:"
echo -e "    ${GREEN}grub-install${NC}      - Instala GRUB en un dispositivo"
echo -e "    ${GREEN}grub-mkconfig${NC}     - Genera grub.cfg automaticamente"
echo -e "    ${GREEN}grub-mkrescue${NC}     - Crea imagen booteable de rescate"
echo -e "    ${GREEN}grub-probe${NC}        - Prueba informacion de dispositivos"
echo -e "    ${GREEN}grub-editenv${NC}      - Edita el bloque de entorno"
echo -e "    ${GREEN}grub-set-default${NC}  - Configura entrada por defecto"
echo ""
echo -e "  Proposito: GRUB es el gestor de arranque que permite"
echo -e "  seleccionar y cargar el sistema operativo al encender la"
echo -e "  computadora. Soporta BIOS y UEFI, multiples sistemas de"
echo -e "  archivos, y configuracion dinamica del menu de arranque."
echo ""

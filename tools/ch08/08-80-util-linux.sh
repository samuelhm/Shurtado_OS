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

step "Extracting util-linux-2.42.1..."
cd "$SOURCES"
tar -xf util-linux-2.42.1.tar.xz
cd util-linux-2.42.1

step "Configuring util-linux..."
./configure --bindir=/usr/bin \
            --libdir=/usr/lib \
            --runstatedir=/run \
            --sbindir=/usr/sbin \
            --disable-chfn-chsh \
            --disable-login \
            --disable-nologin \
            --disable-su \
            --disable-setpriv \
            --disable-runuser \
            --disable-pylibmount \
            --disable-liblastlog2 \
            --disable-static \
            --without-python \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.42.1 || err "configure failed"

step "Compiling util-linux..."
make -j$(nproc) || err "make failed"

step "Installing util-linux..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf util-linux-2.42.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Util-linux-2.42.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Util-linux-2.42.1 - Coleccion de utilidades Linux${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}, ${BLUE}/usr/sbin/${NC}"
echo ""
echo -e "  Binarios principales:"
echo -e "    ${GREEN}mount${NC} / ${GREEN}umount${NC}  - Monta y desmonta filesystems"
echo -e "    ${GREEN}fdisk${NC} / ${GREEN}sfdisk${NC}  - Particionado de discos"
echo -e "    ${GREEN}swapon${NC} / ${GREEN}swapoff${NC} - Activa/desactiva swap"
echo -e "    ${GREEN}losetup${NC}      - Configura dispositivos loop"
echo -e "    ${GREEN}blkid${NC}        - Localiza atributos de block devices"
echo -e "    ${GREEN}lsblk${NC}        - Lista dispositivos de bloque"
echo -e "    ${GREEN}findmnt${NC}      - Busca filesystems montados"
echo -e "    ${GREEN}hwclock${NC}      - Reloj de hardware (RTC)"
echo -e "    ${GREEN}dmesg${NC}        - Examina buffer del kernel"
echo -e "    ${GREEN}agetty${NC}       - Gestiona ttys de login"
echo -e "    ${GREEN}logger${NC}       - Envia mensajes al syslog"
echo -e "    ${GREEN}script${NC}       - Graba sesiones de terminal"
echo ""
echo -e "  Proposito: Util-linux es una coleccion esencial de"
echo -e "  utilidades estandar para sistemas Linux. Incluye"
echo -e "  herramientas para filesystems (mount, fdisk), terminales"
echo -e "  (agetty), logs (dmesg, logger) y muchas mas operaciones"
echo -e "  fundamentales del sistema."
echo ""

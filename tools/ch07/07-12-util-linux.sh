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

step "Creating /var/lib/hwclock..."
mkdir -pv /var/lib/hwclock || err "mkdir failed"

step "Configuring Util-linux..."
./configure --libdir=/usr/lib     \
            --runstatedir=/run    \
            --disable-chfn-chsh   \
            --disable-login       \
            --disable-nologin     \
            --disable-su          \
            --disable-setpriv     \
            --disable-runuser     \
            --disable-pylibmount  \
            --disable-static      \
            --disable-liblastlog2 \
            --without-python      \
            ADJTIME_PATH=/var/lib/hwclock/adjtime \
            --docdir=/usr/share/doc/util-linux-2.42.1 || err "configure failed"

step "Compiling Util-linux..."
make -j$(nproc) || err "make failed"

step "Installing Util-linux..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf util-linux-2.42.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Util-linux-2.42.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Util-linux-2.42.1 - Utilidades del sistema${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/ + /usr/sbin/${NC}"
echo ""
echo -e "  Binarios principales instalados:"
echo -e "    ${GREEN}mount${NC}     - Monta filesystems"
echo -e "    ${GREEN}umount${NC}    - Desmonta filesystems"
echo -e "    ${GREEN}fdisk${NC}     - Particionador de discos"
echo -e "    ${GREEN}swapon${NC}    - Activa swap"
echo -e "    ${GREEN}losetup${NC}   - Dispositivos loop"
echo -e "    ${GREEN}hwclock${NC}   - Reloj de hardware"
echo -e "    ${GREEN}blkid${NC}     - Identifica dispositivos de bloque"
echo -e "    ${GREEN}findmnt${NC}   - Lista filesystems montados"
echo -e "    ${GREEN}lsblk${NC}     - Lista dispositivos de bloque"
echo -e "    ${GREEN}dmesg${NC}     - Buffer de mensajes del kernel"
echo -e "    ${GREEN}agetty${NC}    - Terminal de login en consola"
echo -e "    ${GREEN}wall${NC}      - Envia mensaje a todos los usuarios"
echo -e "    ${GREEN}more${NC}      - Paginador de texto"
echo -e "    ${GREEN}column${NC}    - Formatea texto en columnas"
echo -e "    ${GREEN}flock${NC}     - Bloqueo de archivos para scripting"
echo -e "    ${GREEN}logger${NC}    - Escribe en syslog"
echo -e "    ${GREEN}uuidgen${NC}   - Genera UUIDs"
echo -e "    ${GREEN}whereis${NC}   - Localiza binarios/fuentes/man"
echo ""
echo -e "  Proposito: Util-linux es una coleccion esencial de utilidades"
echo -e "  de sistema. Sin el no hay mount/umount, fdisk, login, ni"
echo -e "  acceso basico a dispositivos de bloque. Es absolutamente"
echo -e "  critico para que el sistema arranque y funcione."
echo ""

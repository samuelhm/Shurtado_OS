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

step "Extracting dbus-1.16.2..."
cd "$SOURCES"
tar -xf dbus-1.16.2.tar.xz
cd dbus-1.16.2

step "Creating build directory..."
mkdir build
cd build

step "Configuring D-Bus (meson)..."
meson setup --prefix=/usr --buildtype=release --wrap-mode=nofallback .. || err "meson setup failed"

step "Compiling D-Bus..."
ninja || err "ninja build failed"

step "Installing D-Bus..."
ninja install || err "ninja install failed"

step "Creating machine-id symlink..."
ln -sfv /etc/machine-id /var/lib/dbus

cd "$SOURCES"
rm -rf dbus-1.16.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  D-Bus-1.16.2 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}D-Bus-1.16.2 - Sistema de comunicacion entre procesos${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/dbus-daemon${NC}, ${BLUE}/usr/lib/libdbus-1.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}dbus-daemon${NC}  - Demonio de bus de mensajes"
echo -e "    ${GREEN}dbus-send${NC}    - Envia mensajes al bus"
echo -e "    ${GREEN}dbus-monitor${NC} - Monitoriza trafico del bus"
echo -e "    ${GREEN}dbus-uuidgen${NC} - Genera UUIDs para el bus"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libdbus-1.so${NC} - API de cliente D-Bus"
echo ""
echo -e "  Proposito: D-Bus es un sistema IPC (comunicacion entre"
echo -e "  procesos) que permite a aplicaciones comunicarse entre"
echo -e "  si. Es usado por systemd, entornos de escritorio y"
echo -e "  servicios del sistema para coordinacion y notificaciones."
echo ""

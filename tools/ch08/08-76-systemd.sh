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

step "Extracting systemd-260.2..."
cd "$SOURCES"
tar -xf systemd-260.2.tar.gz
cd systemd-260.2

step "Patching udev rules (video group)..."
sed -e 's/GROUP="render"/GROUP="video"/' \
    -e 's/GROUP="sgx", //' \
    -i rules.d/50-udev-default.rules.in

step "Creating build directory..."
mkdir -p build
cd build

step "Configuring systemd (meson)..."
meson setup .. \
    --prefix=/usr \
    --buildtype=release \
    -D default-dnssec=no \
    -D firstboot=false \
    -D install-tests=false \
    -D ldconfig=false \
    -D sysusers=false \
    -D rpmmacrosdir=no \
    -D homed=disabled \
    -D man=disabled \
    -D mode=release \
    -D pamconfdir=no \
    -D dev-kvm-mode=0660 \
    -D nobody-group=nogroup \
    -D sysupdate=disabled \
    -D ukify=disabled \
    -D docdir=/usr/share/doc/systemd-260.2 || err "meson setup failed"

step "Compiling systemd..."
ninja || err "ninja build failed"

step "Installing systemd..."
ninja install || err "ninja install failed"

step "Installing systemd man pages..."
tar -xf ../../systemd-man-pages-260.2.tar.xz \
    --no-same-owner --strip-components=1 \
    -C /usr/share/man || err "man page install failed"

step "Configuring machine ID..."
systemd-machine-id-setup || err "machine-id-setup failed"

step "Setting default systemd presets..."
systemctl preset-all || err "systemctl preset-all failed"

cd "$SOURCES"
rm -rf systemd-260.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Systemd-260.2 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Systemd-260.2 - Sistema de inicio y gestor de servicios${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/systemctl${NC}, ${BLUE}/usr/lib/systemd/${NC}"
echo ""
echo -e "  Binarios principales:"
echo -e "    ${GREEN}systemctl${NC}     - Controla el sistema systemd y servicios"
echo -e "    ${GREEN}journalctl${NC}    - Consulta logs del sistema (journal)"
echo -e "    ${GREEN}loginctl${NC}      - Gestiona sesiones de usuario/seats"
echo -e "    ${GREEN}timedatectl${NC}   - Controla fecha, hora y zona horaria"
echo -e "    ${GREEN}udevadm${NC}       - Administrador del subsistema udev"
echo -e "    ${GREEN}systemd-analyze${NC} - Analiza rendimiento de arranque"
echo ""
echo -e "  Proposito: Systemd es el sistema de inicio y gestor de"
echo -e "  servicios de Linux. Proporciona arranque paralelo de"
echo -e "  servicios, manejo de dependencias, journal de logs,"
echo -e "  device management via udev, timers, sockets y mas."
echo -e "  Es el PID 1 del sistema y el componente mas critico."
echo ""

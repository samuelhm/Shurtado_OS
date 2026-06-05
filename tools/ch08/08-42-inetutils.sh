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

step "Extracting inetutils-2.8..."
cd "$SOURCES"
tar -xf inetutils-2.8.tar.gz
cd inetutils-2.8

step "Patching telnet build..."
sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c || err "sed failed"

step "Configuring Inetutils..."
./configure --prefix=/usr          \
            --bindir=/usr/bin      \
            --localstatedir=/var   \
            --disable-logger       \
            --disable-whois        \
            --disable-rcp          \
            --disable-rexec        \
            --disable-rlogin       \
            --disable-rsh          \
            --disable-servers || err "configure failed"

step "Compiling Inetutils..."
make -j$(nproc) || err "make failed"

step "Installing Inetutils..."
make install || err "make install failed"

step "Moving ifconfig to /sbin..."
mv -v /usr/{,s}bin/ifconfig || err "mv failed"

cd "$SOURCES"
rm -rf inetutils-2.8

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Inetutils-2.8 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Inetutils-2.8 - Utilidades de red basicas${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/sbin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ping${NC}       - Envia ICMP ECHO_REQUEST a hosts"
echo -e "    ${GREEN}ping6${NC}      - ping para IPv6"
echo -e "    ${GREEN}traceroute${NC} - Rastrea la ruta de paquetes a un host"
echo -e "    ${GREEN}ifconfig${NC}   - Configura interfaces de red (/usr/sbin)"
echo -e "    ${GREEN}hostname${NC}   - Muestra/establece el nombre del sistema"
echo -e "    ${GREEN}ftp${NC}        - Cliente FTP"
echo -e "    ${GREEN}telnet${NC}     - Cliente Telnet"
echo -e "    ${GREEN}tftp${NC}       - Cliente TFTP trivial"
echo -e "    ${GREEN}dnsdomainname${NC} - Muestra el dominio DNS del sistema"
echo ""
echo -e "  Proposito: Inetutils proporciona utilidades de red"
echo -e "  esenciales como ping, traceroute, ifconfig y hostname."
echo -e "  Los servidores (inetd, telnetd, etc.) se deshabilitan"
echo -e "  por seguridad; solo se instalan los clientes."
echo ""

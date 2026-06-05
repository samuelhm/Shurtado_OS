#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting shadow-4.19.4..."
cd "$SOURCES"
tar -xf shadow-4.19.4.tar.xz
cd shadow-4.19.4

step "Patching: removing duplicate man pages..."
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \; || err "sed failed"
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \; || err "sed failed"

step "Patching: YESCRYPT encryption and mail path..."
sed -e 's:#ENCRYPT_METHOD DES:ENCRYPT_METHOD YESCRYPT:' \
    -e 's:/var/spool/mail:/var/mail:'                   \
    -e '/PATH=/{s@/sbin:@@;s@/bin:@@}'                  \
    -i etc/login.defs || err "sed failed"

step "Configuring Shadow..."
touch /usr/bin/passwd
./configure --sysconfdir=/etc   \
            --disable-static    \
            --with-{b,yes}crypt \
            --without-libbsd    \
            --disable-logind    \
            --with-group-name-max-length=32 || err "configure failed"

step "Compiling Shadow..."
make -j$(nproc) || err "make failed"

step "Installing Shadow..."
make exec_prefix=/usr install || err "make install failed"

step "Installing man pages..."
make -C man install-man || err "make install-man failed"

step "Configuring: enabling shadowed passwords..."
pwconv || err "pwconv failed"
grpconv || err "grpconv failed"

step "Configuring: useradd defaults..."
mkdir -p /etc/default
useradd -D --gid 999 || err "useradd -D failed"

cd "$SOURCES"
rm -rf shadow-4.19.4

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Shadow-4.19.4 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Shadow-4.19.4 - Password and Account Management${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/passwd, /usr/bin/useradd, etc.${NC}"
echo ""
echo -e "  Binarios principales:"
echo -e "    ${GREEN}passwd${NC}   - Cambia contrasenas de usuarios"
echo -e "    ${GREEN}useradd${NC}  - Crea nuevos usuarios"
echo -e "    ${GREEN}usermod${NC}  - Modifica usuarios existentes"
echo -e "    ${GREEN}groupadd${NC} - Crea nuevos grupos"
echo -e "    ${GREEN}su${NC}       - Cambia de usuario"
echo -e "    ${GREEN}login${NC}    - Inicia sesion en el sistema"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libsubid.so${NC} - Manejo de rangos de ID subordinados"
echo ""
echo -e "  Proposito: Shadow proporciona programas para manejar"
echo -e "  contrasenas de forma segura usando shadow passwords."
echo -e "  Es esencial para la administracion de usuarios y grupos."
echo ""
echo -e "${YELLOW}[NOTE]${NC} Set root password manually with: ${BLUE}passwd root${NC}"
echo ""

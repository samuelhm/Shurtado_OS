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

step "Extracting pkgconf-2.5.1..."
cd "$SOURCES"
tar -xf pkgconf-2.5.1.tar.xz
cd pkgconf-2.5.1

step "Configuring Pkgconf..."
./configure --prefix=/usr                           \
            --disable-static                        \
            --docdir=/usr/share/doc/pkgconf-2.5.1 || err "configure failed"

step "Compiling Pkgconf..."
make -j$(nproc) || err "make failed"

step "Installing Pkgconf..."
make install || err "make install failed"

step "Creating pkg-config symlinks..."
ln -sv pkgconf /usr/bin/pkg-config || err "ln pkg-config failed"
ln -sv pkgconf.1 /usr/share/man/man1/pkg-config.1 || err "ln pkg-config.1 failed"

cd "$SOURCES"
rm -rf pkgconf-2.5.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Pkgconf-2.5.1 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Pkgconf-2.5.1 - Sistema de metadata pkg-config${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/pkgconf${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}pkgconf${NC}      - Implementacion de pkg-config"
echo -e "    ${GREEN}pkg-config${NC}   - Symlink compatibilidad POSIX"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libpkgconf.so${NC} - Biblioteca compartida de pkgconf"
echo ""
echo -e "  Proposito: Pkgconf es una implementacion moderna y ligera"
echo -e "  de pkg-config. Proporciona los flags de compilacion y"
echo -e "  enlace (-I/-L/-l) necesarios para usar librerias instaladas"
echo -e "  en el sistema. Es usado masivamente por scripts configure"
echo -e "  y sistemas de build (meson, cmake, autotools)."
echo ""

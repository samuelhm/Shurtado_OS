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

step "Extracting kmod-34.2..."
cd "$SOURCES"
tar -xf kmod-34.2.tar.xz
cd kmod-34.2

step "Configuring Kmod..."
mkdir -p build
cd build
meson setup --prefix=/usr .. --buildtype=release -D manpages=false || err "meson setup failed"

step "Compiling Kmod..."
ninja || err "ninja failed"

step "Installing Kmod..."
ninja install || err "ninja install failed"

step "Creating module utility symlinks..."
for target in depmod insmod modinfo modprobe rmmod; do
    ln -sfv ../bin/kmod /usr/sbin/$target || err "ln $target failed"
done
ln -sfv kmod /usr/bin/lsmod || err "ln lsmod failed"

cd "$SOURCES"
rm -rf kmod-34.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Kmod-34.2 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Kmod-34.2${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/kmod${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}kmod${NC}      - Gestor de modulos del kernel"
echo -e "    ${GREEN}depmod${NC}    - Crea archivo de dependencias de modulos"
echo -e "    ${GREEN}insmod${NC}    - Inserta modulos en el kernel"
echo -e "    ${GREEN}lsmod${NC}     - Lista modulos cargados"
echo -e "    ${GREEN}modinfo${NC}   - Muestra informacion de un modulo"
echo -e "    ${GREEN}modprobe${NC}  - Carga modulos con dependencias"
echo -e "    ${GREEN}rmmod${NC}     - Elimina modulos del kernel"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libkmod.so${NC} - API para carga/descarga de modulos"
echo ""
echo -e "  Proposito: Kmod proporciona bibliotecas y utilidades para"
echo -e "  cargar y descargar modulos del kernel Linux. Es requerido"
echo -e "  por udev/systemd para la deteccion automatica de hardware"
echo -e "  y carga de drivers."
echo ""

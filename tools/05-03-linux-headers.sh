#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting linux-7.0.10..."
cd "$SOURCES"
tar -xf linux-7.0.10.tar.xz
cd linux-7.0.10

step "Cleaning stale files..."
make mrproper || err "make mrproper failed"

step "Extracting user-visible kernel headers..."
make headers || err "make headers failed"

step "Removing non-header files from usr/include..."
find usr/include -type f ! -name '*.h' -delete || err "cleanup failed"

step "Copying headers to \$LFS/usr/include..."
cp -rv usr/include "$LFS/usr" || err "copy failed"

cd "$SOURCES"
rm -rf linux-7.0.10

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Linux API Headers - Instalación OK    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Linux-7.0.10 API Headers${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/usr/include/${NC}"
echo ""
echo -e "  Directorios de headers instalados:"
echo -e "    ${GREEN}asm/          ${NC} - Headers de arquitectura (x86_64)"
echo -e "    ${GREEN}asm-generic/  ${NC} - Headers genéricos de arquitectura"
echo -e "    ${GREEN}linux/        ${NC} - API del kernel (syscalls, tipos, constantes)"
echo -e "    ${GREEN}drm/          ${NC} - Direct Rendering Manager"
echo -e "    ${GREEN}misc/         ${NC} - Dispositivos misceláneos"
echo -e "    ${GREEN}mtd/          ${NC} - Memory Technology Devices"
echo -e "    ${GREEN}rdma/         ${NC} - Remote Direct Memory Access"
echo -e "    ${GREEN}scsi/         ${NC} - Small Computer System Interface"
echo -e "    ${GREEN}sound/        ${NC} - ALSA / sonido"
echo -e "    ${GREEN}video/        ${NC} - Framebuffer / video"
echo -e "    ${GREEN}xen/          ${NC} - Xen hypervisor"
echo ""
echo -e "  Propósito: Exponer la API del kernel Linux para que"
echo -e "  Glibc (la biblioteca C) pueda compilarse. Son los"
echo -e "  archivos .h que definen syscalls, estructuras y"
echo -e "  constantes del kernel que Glibc necesita envolver."
echo ""

#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

[ "$(whoami)" = "root" ] || err "Debes ejecutar como root dentro del chroot"

KERNEL_VERSION="7.0.10"
KERNEL_SRC="/sources/linux-${KERNEL_VERSION}"
DISK_DEV="/dev/nbd0"
KERNEL_BIN="vmlinuz-${KERNEL_VERSION}-shurtado"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 10b - Kernel Build + GRUB     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# ============================================================
# Verify prerequisites from 10a
# ============================================================
step "Verifying prerequisites..."
[ -d "$KERNEL_SRC" ] || err "$KERNEL_SRC not found. Run chapter-10a.sh first."
[ -f "$KERNEL_SRC/.config" ] || err "No .config in $KERNEL_SRC. Run chapter-10a.sh first."
if ! mountpoint -q /boot 2>/dev/null; then
    err "/boot not mounted. Mount it first: mount /dev/nbd0p2 /boot"
fi
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# Compile kernel
# ============================================================
cd "$KERNEL_SRC"

step "Compiling kernel (this takes ~2.5 SBU)..."
make -j$(nproc) || err "kernel make failed"

step "Installing kernel modules..."
make modules_install || err "modules_install failed"

# ============================================================
# Kernel installation (requisitos 42)
# ============================================================
step "Installing kernel to /boot..."

cp -v arch/x86/boot/bzImage /boot/${KERNEL_BIN}
cp -v System.map /boot/System.map-${KERNEL_VERSION}
cp -v .config /boot/config-${KERNEL_VERSION}

echo -e "   ${GREEN}Kernel binary:   /boot/${KERNEL_BIN}${NC}"
echo -e "   ${GREEN}System.map:      /boot/System.map-${KERNEL_VERSION}${NC}"
echo -e "   ${GREEN}Config:          /boot/config-${KERNEL_VERSION}${NC}"

step "Installing kernel sources to /usr/src/kernel-${KERNEL_VERSION}..."
make mrproper || true
mkdir -pv /usr/src/kernel-${KERNEL_VERSION}
cp -rv * /usr/src/kernel-${KERNEL_VERSION}/ || err "cp sources failed"
cp -v /boot/config-${KERNEL_VERSION} /usr/src/kernel-${KERNEL_VERSION}/.config

echo -e "   ${GREEN}Sources in: /usr/src/kernel-${KERNEL_VERSION}/${NC}"

cd /sources
rm -rf linux-${KERNEL_VERSION}

echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 10.4 - GRUB Boot Loader
# ============================================================
step "10.4: Installing GRUB bootloader..."

[ -b "$DISK_DEV" ] || err "$DISK_DEV not found. grub-install needs the raw disk device."
grub-install "$DISK_DEV" --target=i386-pc || err "grub-install failed"

step "Creating GRUB configuration..."
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod part_gpt
insmod ext2

set root=(hd0,2)

menuentry "LFS r13.0-131-systemd (shurtado)" {
    linux   /vmlinuz-7.0.10-shurtado root=/dev/vda4 ro
}
EOF
echo -e "   ${GREEN}PASS${NC}"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 10 - COMPLETADO               ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Kernel:       ${BLUE}/boot/${KERNEL_BIN}${NC}"
echo -e "  Sources:      ${BLUE}/usr/src/kernel-${KERNEL_VERSION}/${NC}"
echo -e "  Bootloader:   ${BLUE}GRUB (BIOS/GPT)${NC}"
echo -e "  Hostname:     ${BLUE}shurtado${NC}"
echo ""
echo -e "  Requisitos 42 cubiertos:"
echo -e "    ${GREEN}[x]${NC} Kernel >= 4.0 con -shurtado en el nombre"
echo -e "    ${GREEN}[x]${NC} vmlinuz-7.0.10-shurtado en /boot"
echo -e "    ${GREEN}[x]${NC} Sources en /usr/src/kernel-7.0.10"
echo -e "    ${GREEN}[x]${NC} 3+ particiones (/, /boot, swap)"
echo -e "    ${GREEN}[x]${NC} GRUB como bootloader"
echo -e "    ${GREEN}[x]${NC} systemd como init"
echo ""
echo -e "  Siguiente paso:"
echo -e "    ${BLUE}umount /boot${NC}              # desmontar /boot primero"
echo -e "    ${BLUE}exit${NC}                     # salir del chroot"
echo -e "    ${BLUE}make umount_lfs${NC}          # desmontar disco"
echo -e "    ${BLUE}make run${NC}                 # bootear VM"
echo ""

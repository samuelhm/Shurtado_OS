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
[ -d "/sources" ] || err "/sources no encontrado. Estas en el chroot?"

CONFIG_SRC="/root/scripts/kernel-config"
KERNEL_VERSION="7.0.10"
BOOT_DEV="/dev/nbd0p2"
KERNEL_SRC="/sources/linux-${KERNEL_VERSION}"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 10a - Fstab + Kernel Config   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# ============================================================
# 10.2 - /etc/fstab
# ============================================================
step "10.2: Creating /etc/fstab..."
cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type  options          dump  fsck order
/dev/vda4     /             ext4  defaults         1     1
/dev/vda2     /boot         ext4  defaults         0     2
/dev/vda3     swap          swap  pri=1            0     0

# End /etc/fstab
EOF
echo -e "   ${GREEN}PASS${NC}"
cat /etc/fstab

# ============================================================
# Mount /boot partition
# ============================================================
step "Mounting /boot partition..."
if mountpoint -q /boot 2>/dev/null; then
    echo -e "   ${YELLOW}/boot already mounted${NC}"
else
    [ -b "$BOOT_DEV" ] || err "$BOOT_DEV not found. Is NBD connected?"
    mount -v "$BOOT_DEV" /boot || err "mount /boot failed"
fi
echo -e "   ${GREEN}/boot mounted from $BOOT_DEV${NC}"

# ============================================================
# 10.3 - Linux Kernel: extract + configure
# ============================================================
step "Extracting Linux kernel ${KERNEL_VERSION}..."
cd /sources
tar -xf linux-${KERNEL_VERSION}.tar.xz
cd linux-${KERNEL_VERSION}

step "Cleaning kernel tree..."
make mrproper || err "make mrproper failed"

step "Copying kernel config..."
if [ -f "$CONFIG_SRC" ]; then
    cp -v "$CONFIG_SRC" .config
    echo -e "   ${GREEN}Using pre-configured kernel config from $CONFIG_SRC${NC}"
else
    echo -e "   ${YELLOW}No kernel-config found. Using make defconfig...${NC}"
    make defconfig || err "make defconfig failed"
fi

step "Resolving config with olddefconfig..."
make olddefconfig || err "make olddefconfig failed"
echo -e "   ${GREEN}PASS${NC}"

echo ""
echo -e "${YELLOW}=== Critical kernel options ===${NC}"
for opt in LOCALVERSION DEVTMPFS_MOUNT VIRTIO_BLK VIRTIO_NET VIRTIO_PCI EXT4_FS TMPFS DRM_VIRTIO_GPU DRM_BOCHS; do
    val=$(grep "^CONFIG_${opt}=" .config 2>/dev/null | head -1 || echo "NOT SET")
    echo -e "  ${opt}: ${GREEN}${val}${NC}"
done

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 10a - COMPLETADO              ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Kernel source: ${BLUE}${KERNEL_SRC}${NC}"
echo ""
echo -e "  ${YELLOW}OPCIONAL: Revisa la config del kernel ahora:${NC}"
echo -e "    ${BLUE}cd ${KERNEL_SRC} && make menuconfig${NC}"
echo ""
echo -e "  Cuando estes listo, ejecuta:"
echo -e "    ${BLUE}bash /root/scripts/chapter-10b.sh${NC}"
echo ""

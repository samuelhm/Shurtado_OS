#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }
check() { echo -e "${YELLOW}[CHECK]${NC} $*"; }

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DISK_IMG="$SCRIPT_DIR/../../ft_linux_disk.qcow2"
LFS_MOUNT="/mnt/lfs"
NBD_DEV="/dev/nbd0"
ROOT_PART="4"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 2 - Preparing the Host System${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

step "1/3: Checking host requirements..."
if [ -f "$SCRIPT_DIR/version-check.sh" ]; then
    bash "$SCRIPT_DIR/version-check.sh" || err "Host does NOT meet LFS requirements"
else
    step "version-check.sh not found, skipping."
fi
echo -e "   ${GREEN}PASS: Host meets LFS requirements${NC}"

step "2/3: Checking disk image..."
[ -f "$DISK_IMG" ] || err "$DISK_IMG not found. Create the disk image first."
echo -e "   ${GREEN}PASS: $DISK_IMG found${NC}"

step "3/3: Mounting disk to $LFS_MOUNT..."
if mountpoint -q "$LFS_MOUNT" 2>/dev/null; then
    echo -e "   ${YELLOW}$LFS_MOUNT already mounted.${NC}"
else
    if ! lsmod | grep -q nbd; then
        modprobe nbd max_part=8 || err "Failed to load nbd module"
    fi
    if lsblk -ndo SIZE "$NBD_DEV" 2>/dev/null | grep -qv '^0$'; then
        qemu-nbd -d "$NBD_DEV" 2>/dev/null || true
    fi
    qemu-nbd -c "$NBD_DEV" "$DISK_IMG" || err "qemu-nbd -c failed"
    sleep 0.5
    mkdir -pv "$LFS_MOUNT"
    mount "${NBD_DEV}p${ROOT_PART}" "$LFS_MOUNT" || err "mount failed"
    echo -e "   ${GREEN}PASS: Disk mounted at $LFS_MOUNT${NC}"
fi

step "Setting LFS variable..."
export LFS="$LFS_MOUNT"
echo -e "   LFS=$LFS"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 2 - COMPLETADO                ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Disco montado en: ${BLUE}$LFS_MOUNT${NC}"
echo -e "  Siguiente paso:   ${BLUE}bash tools/chapter-03.sh${NC}"
echo ""

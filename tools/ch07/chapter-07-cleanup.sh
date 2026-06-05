#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

[ "$(whoami)" = "root" ] || err "Debes ejecutar como root"

LFS="/mnt/lfs"
export LFS

DO_BACKUP=true
if [ "${1:-}" = "--no-backup" ]; then
    DO_BACKUP=false
    step "Backup desactivado (flag --no-backup)"
fi

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 7 - Cleanup and Backup        ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# ============================================================
# 7.13.1 - Cleaning (inside chroot)
# ============================================================
step "7.13.1: Cleaning temporary files (inside chroot)..."
chroot "$LFS" /usr/bin/env -i \
    HOME=/root              \
    PATH=/usr/bin:/usr/sbin \
    /bin/bash -c '
set -e
echo "  Removing docs..."
rm -rf /usr/share/{info,man,doc}/* 2>/dev/null || true
echo "  Removing .la files..."
find /usr/{lib,libexec} -name \*.la -delete 2>/dev/null || true
echo "  Removing /tools (no longer needed)..."
rm -rf /tools 2>/dev/null || true
echo "  Done."
' || err "Cleanup inside chroot failed"
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 7.13.2 - Unmount virtual filesystems
# ============================================================
step "7.13.2: Unmounting virtual filesystems..."
mountpoint -q $LFS/dev/shm 2>/dev/null && umount -v $LFS/dev/shm || true
umount -v $LFS/dev/pts 2>/dev/null || true
umount -v $LFS/dev     2>/dev/null || true
umount -v $LFS/proc    2>/dev/null || true
umount -v $LFS/sys     2>/dev/null || true
umount -v $LFS/run     2>/dev/null || true
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 7.13.2 - Backup (optional)
# ============================================================
if $DO_BACKUP; then
    BACKUP_FILE="$HOME/lfs-temp-tools-r13.0-131-systemd.tar.xz"

    step "7.13.2: Creating backup archive..."
    echo -e "   Destination: ${YELLOW}$BACKUP_FILE${NC}"
    echo -e "   ${YELLOW}This may take 10+ minutes...${NC}"

    DEFAULT_LFS=/mnt/lfs
    if [ "$LFS" != "$DEFAULT_LFS" ]; then
        echo -e "   Using LFS=$LFS"
    fi

    cd "$LFS"
    tar -cJpf "$BACKUP_FILE" . || err "Backup failed"
    echo -e "   ${GREEN}PASS: Backup created${NC}"

    BACKUP_SIZE=$(du -h "$BACKUP_FILE" | cut -f1)
    echo -e "   Size: ${GREEN}$BACKUP_SIZE${NC}"
else
    step "7.13.2: Skipping backup (--no-backup flag)"
fi

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 7 - Cleanup COMPLETADO        ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  El sistema temporal esta limpio y respaldado."
echo -e "  Para continuar con el Capitulo 8:"
echo ""
echo -e "  1. Re-monta los kernfs:"
echo -e "     ${BLUE}sudo bash tools/chapter-07.sh mount-only${NC} (TODO)"
echo -e "     o manualmente:"
echo -e "     ${BLUE}mount -v --bind /dev \$LFS/dev${NC}"
echo -e "     ${BLUE}mount -vt devpts devpts -o gid=5,mode=0620 \$LFS/dev/pts${NC}"
echo -e "     ${BLUE}mount -vt proc proc \$LFS/proc${NC}"
echo -e "     ${BLUE}mount -vt sysfs sysfs \$LFS/sys${NC}"
echo -e "     ${BLUE}mount -vt tmpfs tmpfs \$LFS/run${NC}"
echo ""
echo -e "  2. Re-entra al chroot:"
echo -e "     ${BLUE}chroot \"\$LFS\" /usr/bin/env -i \\"
echo -e "         HOME=/root TERM=\"\$TERM\" \\"
echo -e "         PS1='(lfs chroot) \u:\w\$ ' \\"
echo -e "         PATH=/usr/bin:/usr/sbin \\"
echo -e "         MAKEFLAGS=\"-j\$(nproc)\" \\"
echo -e "         TESTSUITEFLAGS=\"-j\$(nproc)\" \\"
echo -e "         /bin/bash --login${NC}"
echo ""
if $DO_BACKUP; then
    echo -e "  Backup guardado en: ${GREEN}$BACKUP_FILE${NC}"
    echo ""
fi

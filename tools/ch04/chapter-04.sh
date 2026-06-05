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

[ "$(whoami)" = "root" ] || err "Debes ejecutar este script como root: sudo bash tools/chapter-04.sh"

LFS_MOUNT="/mnt/lfs"
[ -n "$LFS_MOUNT" ] || LFS_MOUNT="/mnt/lfs"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 4 - Final Preparations        ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

step "1/5: Checking disk is mounted..."
mountpoint -q "$LFS_MOUNT" || err "$LFS_MOUNT not mounted. Run chapter-02.sh first."
echo -e "   ${GREEN}PASS: $LFS_MOUNT is mounted${NC}"

step "2/5: Creating directory layout..."
mkdir -pv $LFS_MOUNT/{etc,var} $LFS_MOUNT/usr/{bin,lib,sbin}
for i in bin lib sbin; do
  ln -sv usr/$i $LFS_MOUNT/$i
done
case $(uname -m) in
  x86_64) mkdir -pv $LFS_MOUNT/lib64 ;;
esac
mkdir -pv $LFS_MOUNT/tools
echo -e "   ${GREEN}PASS${NC}"

step "3/5: Creating lfs user..."
if id lfs &>/dev/null; then
    echo -e "   ${YELLOW}lfs user already exists.${NC}"
else
    groupadd lfs || err "groupadd failed"
    useradd -s /bin/bash -g lfs -m -k /dev/null lfs || err "useradd failed"
    echo -e "   ${GREEN}lfs user created.${NC}"
    echo -e "   ${YELLOW}Setting password for lfs...${NC}"
    passwd lfs
fi

step "4/5: Setting ownership..."
chown -v lfs $LFS_MOUNT/{usr{,/*},var,etc,tools} || err "chown failed"
case $(uname -m) in
  x86_64) chown -v lfs $LFS_MOUNT/lib64 ;;
esac
chown -v lfs $LFS_MOUNT/sources 2>/dev/null || true
echo -e "   ${GREEN}PASS${NC}"

step "5/5: Setting up lfs user environment..."
LFS_HOME=$(eval echo ~lfs)

# .bash_profile
cat > "$LFS_HOME/.bash_profile" << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF

# .bashrc
cat > "$LFS_HOME/.bashrc" << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
export MAKEFLAGS=-j$(nproc)
EOF

chown lfs:lfs "$LFS_HOME/.bash_profile" "$LFS_HOME/.bashrc"
echo -e "   ${GREEN}PASS: .bash_profile and .bashrc created${NC}"

step "Disabling host /etc/bash.bashrc interference..."
[ ! -e /etc/bash.bashrc ] || mv -v /etc/bash.bashrc /etc/bash.bashrc.NOUSE 2>/dev/null || true

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 4 - COMPLETADO                ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Usuario:        ${BLUE}lfs${NC}"
echo -e "  LFS mount:      ${BLUE}$LFS_MOUNT${NC}"
echo -e "  Environment:    ${BLUE}~lfs/.bashrc${NC}"
echo ""
echo -e "  Siguiente paso:"
echo -e "    ${BLUE}su - lfs${NC}"
echo -e "    ${BLUE}bash tools/chapter-05.sh${NC}"
echo ""

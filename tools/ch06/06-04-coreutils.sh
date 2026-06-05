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

step "Extracting coreutils-9.11..."
cd "$SOURCES"
tar -xf coreutils-9.11.tar.xz
cd coreutils-9.11

step "Configuring Coreutils..."
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --enable-install-program=hostname \
            --enable-no-install-program=kill,uptime || err "configure failed"

step "Compiling Coreutils..."
make -j$(nproc) || err "make failed"

step "Installing Coreutils..."
make DESTDIR=$LFS install || err "make install failed"

step "Moving chroot to final location..."
mv -v $LFS/usr/bin/chroot              $LFS/usr/sbin || err "mv chroot failed"
mkdir -pv $LFS/usr/share/man/man8 || err "mkdir man8 failed"
mv -v $LFS/usr/share/man/man1/chroot.1 $LFS/usr/share/man/man8/chroot.8 || err "mv man failed"
sed -i 's/"1"/"8"/'                    $LFS/usr/share/man/man8/chroot.8 || err "sed man failed"

cd "$SOURCES"
rm -rf coreutils-9.11

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Coreutils-9.11 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Coreutils-9.11 - GNU Core Utilities${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/ + \$LFS/usr/sbin/${NC}"
echo ""
echo -e "  Binarios principales:"
echo -e "    ${GREEN}cat, ls, cp, mv, rm, mkdir, rmdir${NC}"
echo -e "    ${GREEN}chmod, chown, chgrp, ln, touch${NC}"
echo -e "    ${GREEN}echo, printf, sleep, date, wc${NC}"
echo -e "    ${GREEN}chroot, head, tail, sort, uniq, cut${NC}"
echo -e "    ${GREEN}dd, df, du, id, whoami, groups${NC}"
echo -e "    Y ~90 binarios mas de utilidades basicas del sistema"
echo ""
echo -e "  Proposito: Coreutils proporciona los comandos basicos de"
echo -e "  manipulacion de archivos, texto y sistema que todo Linux"
echo -e "  necesita. Sin Coreutils no hay shell funcional."
echo ""

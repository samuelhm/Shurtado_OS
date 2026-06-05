#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

[ "$(whoami)" = "root" ] || err "Debes ejecutar como root dentro del chroot"
[ -d "/sources" ] || err "/sources no encontrado. Estas en el chroot?"

# This script is designed to be copied into the chroot
SOURCE_DIR="/root/scripts"
[ -d "$SOURCE_DIR" ] || err "$SOURCE_DIR no encontrado. Copia los scripts al chroot primero."

PACKAGES=(
    "08-03-man-pages.sh"
    "08-04-iana-etc.sh"
    "08-05-glibc.sh"
    "08-06-zlib.sh"
    "08-07-bzip2.sh"
    "08-08-xz.sh"
    "08-09-lz4.sh"
    "08-10-zstd.sh"
    "08-11-file.sh"
    "08-12-readline.sh"
    "08-13-pcre2.sh"
    "08-14-m4.sh"
    "08-15-bc.sh"
    "08-16-flex.sh"
    "08-17-tcl.sh"
    "08-18-expect.sh"
    "08-19-dejagnu.sh"
    "08-20-pkgconf.sh"
    "08-21-binutils.sh"
    "08-22-gmp.sh"
    "08-23-mpfr.sh"
    "08-24-mpc.sh"
    "08-25-attr.sh"
    "08-26-acl.sh"
    "08-27-libcap.sh"
    "08-28-libxcrypt.sh"
    "08-29-shadow.sh"
    "08-30-gcc.sh"
    "08-31-ncurses.sh"
    "08-32-sed.sh"
    "08-33-psmisc.sh"
    "08-34-gettext.sh"
    "08-35-bison.sh"
    "08-36-grep.sh"
    "08-37-bash.sh"
    "08-38-libtool.sh"
    "08-39-gdbm.sh"
    "08-40-gperf.sh"
    "08-41-expat.sh"
    "08-42-inetutils.sh"
    "08-43-less.sh"
    "08-44-perl.sh"
    "08-45-autoconf.sh"
    "08-46-automake.sh"
    "08-47-openssl.sh"
    "08-48-libelf.sh"
    "08-49-libffi.sh"
    "08-50-sqlite.sh"
    "08-51-python.sh"
    "08-52-flit-core.sh"
    "08-53-packaging.sh"
    "08-54-wheel.sh"
    "08-55-setuptools.sh"
    "08-56-ninja.sh"
    "08-57-meson.sh"
    "08-58-kmod.sh"
    "08-59-coreutils.sh"
    "08-60-diffutils.sh"
    "08-61-gawk.sh"
    "08-62-findutils.sh"
    "08-63-groff.sh"
    "08-64-grub.sh"
    "08-65-gzip.sh"
    "08-66-iproute2.sh"
    "08-67-kbd.sh"
    "08-68-libpipeline.sh"
    "08-69-make.sh"
    "08-70-patch.sh"
    "08-71-tar.sh"
    "08-72-texinfo.sh"
    "08-73-vim.sh"
    "08-74-markupsafe.sh"
    "08-75-jinja2.sh"
    "08-76-systemd.sh"
    "08-77-dbus.sh"
    "08-78-man-db.sh"
    "08-79-procps-ng.sh"
    "08-80-util-linux.sh"
)

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 8 - Installing Basic System   ${NC}"
echo -e "${GREEN}  Software (${#PACKAGES[@]} packages)              ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

TOTAL=${#PACKAGES[@]}
CURRENT=0
FAILED=""

for s in "${PACKAGES[@]}"; do
    CURRENT=$((CURRENT + 1))
    SCRIPT_PATH="$SOURCE_DIR/$s"

    [ -f "$SCRIPT_PATH" ] || {
        echo -e "${RED}[ERROR]${NC} Script not found: $SCRIPT_PATH"
        FAILED="$FAILED $s"
        break
    }

    echo ""
    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}  [$CURRENT/$TOTAL] Running: $s${NC}"
    echo -e "${BLUE}========================================${NC}"

    if bash "$SCRIPT_PATH"; then
        echo -e "${GREEN}  [$CURRENT/$TOTAL] $s - OK${NC}"
    else
        EXIT_CODE=$?
        echo ""
        echo -e "${RED}========================================${NC}"
        echo -e "${RED}  FALLO en paso $CURRENT/$TOTAL: $s${NC}"
        echo -e "${RED}  Exit code: $EXIT_CODE${NC}"
        echo -e "${RED}========================================${NC}"
        FAILED="$FAILED $s"
        break
    fi
done

if [ -z "$FAILED" ]; then
    echo ""
    echo -e "${GREEN}========================================${NC}"
    echo -e "${GREEN}  Capitulo 8 - COMPLETADO                ${NC}"
    echo -e "${GREEN}  ${#PACKAGES[@]} packages installed              ${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    echo -e "  Siguiente paso: Capitulo 9 (System Configuration)"
    echo ""
else
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}  Capitulo 8 - INCOMPLETO                ${NC}"
    echo -e "${RED}  Fallo en paso $CURRENT/$TOTAL: $FAILED ${NC}"
    echo -e "${RED}========================================${NC}"
    exit 1
fi

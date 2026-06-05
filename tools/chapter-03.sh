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

[ -n "$LFS" ] || err '$LFS not set. Run chapter-02.sh first.'
[ -d "$LFS/sources" ] || mkdir -pv "$LFS/sources"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 3 - Packages and Patches      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

SOURCES="$LFS/sources"
ARCH="$(uname -m)"
BASE_URL="https://www.linuxfromscratch.org/lfs/view/systemd"

# Lista de paquetes (version, tarball, md5)
# Extraidos del libro r13.0-131-systemd
declare -A PKGS
PKGS=(
  ["m4"]="1.4.21"
  ["ncurses"]="6.6"
  ["bash"]="5.3"
  ["coreutils"]="9.11"
  ["diffutils"]="3.12"
  ["file"]="5.47"
  ["findutils"]="4.10.0"
  ["gawk"]="5.4.0"
  ["grep"]="3.12"
  ["gzip"]="1.14"
  ["make"]="4.4.1"
  ["patch"]="2.8"
  ["sed"]="4.10"
  ["tar"]="1.35"
  ["xz"]="5.8.3"
  ["binutils"]="2.46.0"
  ["gcc"]="16.1.0"
  ["mpfr"]="4.2.2"
  ["gmp"]="6.3.0"
  ["mpc"]="1.4.1"
  ["linux"]="7.0.10"
  ["glibc"]="2.43"
  ["gettext"]="0.25.1"
  ["bison"]="3.8.2"
  ["perl"]="5.42.0"
  ["python"]="3.14.2"
  ["texinfo"]="7.3"
  ["util-linux"]="2.41"
  ["pkgconf"]="2.5.0"
)

step "1/2: Checking existing tarballs in $SOURCES..."
MISSING=""
for pkg in "${!PKGS[@]}"; do
    ver="${PKGS[$pkg]}"

    # Buscar tarball con el patron nombre-version.*
    found=""
    for ext in tar.xz tar.gz tar.bz2; do
        if [ -f "$SOURCES/${pkg}-${ver}.${ext}" ]; then
            found="${pkg}-${ver}.${ext}"
            break
        fi
    done

    if [ -n "$found" ]; then
        echo -e "   ${GREEN}[OK]${NC} $found"
    else
        echo -e "   ${YELLOW}[MISSING]${NC} ${pkg}-${ver}.tar.*"
        MISSING="$MISSING $pkg"
    fi
done

if [ -z "$MISSING" ]; then
    echo ""
    echo -e "   ${GREEN}All packages present.${NC}"
else
    echo ""
    echo -e "${YELLOW}========================================${NC}"
    echo -e "${YELLOW}  Faltan los siguientes paquetes:        ${NC}"
    echo -e "${YELLOW}  $MISSING${NC}"
    echo -e "${YELLOW}========================================${NC}"
    echo ""
    echo -e "  Descargalos manualmente desde:"
    echo -e "  ${BLUE}https://www.linuxfromscratch.org/lfs/view/systemd/chapter03/packages.html${NC}"
    echo ""
    echo -e "  Colocalos en: ${BLUE}$SOURCES/${NC}"
    echo ""
    echo -e "${YELLOW}  Re-ejecuta este script despues de descargarlos.${NC}"
    exit 1
fi

step "2/2: Setting permissions..."
chown -v lfs:lfs "$SOURCES"/*.tar.* 2>/dev/null || true
chmod -v a+wt "$SOURCES" || true

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 3 - COMPLETADO                ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquetes en:  ${BLUE}$SOURCES/${NC}"
echo -e "  Siguiente paso:   ${BLUE}sudo bash tools/chapter-04.sh${NC}"
echo ""

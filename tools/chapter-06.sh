#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$LFS" ]    || err "$LFS not found. Is the disk mounted?"
[ "$(whoami)" = "lfs" ] || err "You must be logged in as user lfs"

SCRIPTS=(
    "06-01-m4.sh"
    "06-02-ncurses.sh"
    "06-03-bash.sh"
    "06-04-coreutils.sh"
    "06-05-diffutils.sh"
    "06-06-file.sh"
    "06-07-findutils.sh"
    "06-08-gawk.sh"
    "06-09-grep.sh"
    "06-10-gzip.sh"
    "06-11-make.sh"
    "06-12-patch.sh"
    "06-13-sed.sh"
    "06-14-tar.sh"
    "06-15-xz.sh"
    "06-16-binutils-pass2.sh"
    "06-17-gcc-pass2.sh"
)

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 6 - Cross Compiling Temporary Tools${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

TOTAL=${#SCRIPTS[@]}
CURRENT=0
FAILED=""

for s in "${SCRIPTS[@]}"; do
    CURRENT=$((CURRENT + 1))
    SCRIPT_PATH="$SCRIPT_DIR/ch06/$s"

    [ -f "$SCRIPT_PATH" ] || {
        echo -e "${RED}[ERROR]${NC} Script not found: $SCRIPT_PATH"
        FAILED="$FAILED $s"
        break
    }

    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}  [$CURRENT/$TOTAL] Running: $s${NC}"
    echo -e "${BLUE}========================================${NC}"

    if bash "$SCRIPT_PATH"; then
        echo -e "${GREEN}  [$CURRENT/$TOTAL] $s - OK${NC}"
    else
        echo -e "${RED}========================================${NC}"
        echo -e "${RED}  FALLO en paso $CURRENT/$TOTAL: $s${NC}"
        echo -e "${RED}========================================${NC}"
        FAILED="$FAILED $s"
        break
    fi
    echo ""
done

if [ -z "$FAILED" ]; then
    echo ""
    echo -e "${GREEN}========================================${NC}"
    echo -e "${GREEN}  Capitulo 6 - COMPLETADO                ${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    echo -e "  Siguiente paso: Capitulo 7 (chroot)"
    echo -e "    ${BLUE}sudo bash tools/chapter-07.sh${NC} (proximamente)"
    echo ""
else
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}  Capitulo 6 - INCOMPLETO                ${NC}"
    echo -e "${RED}========================================${NC}"
    echo ""
    echo -e "${RED}  Fallo en: $FAILED${NC}"
    echo -e "  Corrige el error y re-ejecuta."
    exit 1
fi

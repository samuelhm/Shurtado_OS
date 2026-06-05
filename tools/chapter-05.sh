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
    "05-01-binutils-pass1.sh"
    "05-02-gcc-pass1.sh"
    "05-03-linux-headers.sh"
    "05-04-glibc.sh"
    "05-05-libstdcpp.sh"
)

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 5 - Compiling a Cross-Toolchain${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

TOTAL=${#SCRIPTS[@]}
CURRENT=0
FAILED=""

for s in "${SCRIPTS[@]}"; do
    CURRENT=$((CURRENT + 1))
    SCRIPT_PATH="$SCRIPT_DIR/$s"

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
    echo -e "${GREEN}  Capitulo 5 - COMPLETADO                ${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    echo -e "  Siguiente paso:"
    echo -e "    ${BLUE}bash tools/chapter-06.sh${NC}"
    echo ""
else
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}  Capitulo 5 - INCOMPLETO                ${NC}"
    echo -e "${RED}========================================${NC}"
    echo ""
    echo -e "${RED}  Fallo en: $FAILED${NC}"
    echo -e "  Corrige el error y re-ejecuta."
    exit 1
fi

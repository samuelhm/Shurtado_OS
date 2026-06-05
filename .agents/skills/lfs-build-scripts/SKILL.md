---
name: lfs-build-scripts
description: Template and conventions for creating LFS package installation scripts in tools/. Use when asked to write a build script for any LFS package (chapters 5-8).
---

# LFS Build Script Template

When the user asks for a script to install an LFS package (from chapters 5-8),
create it in `tools/` following this template. The script should be
self-contained, fail-safe, and informative.

## Naming Convention

`<CC>-<SS>-<package-name>.sh` where:
- `CC` — chapter number (zero-padded, e.g. `05`, `06`, `08`)
- `SS` — section order within the chapter (zero-padded, e.g. `01`, `02`, `03`)
- `<package-name>` — lowercase, words separated by hyphens

Examples:
- `05-01-binutils-pass1.sh` — Chapter 5, first package
- `05-02-gcc-pass1.sh` — Chapter 5, second package
- `06-03-bash.sh` — Chapter 6, third package
- `08-12-coreutils.sh` — Chapter 8, twelfth package

## Script Template

```bash
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

SOURCES="$LFS/sources"

## --- Prerequisites ---
[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?'

## --- If needed: check for specific host/user requirements ---
# [ "$(whoami)" = "root" ] && err "Do NOT run as root for this package"
# etc.

## --- Extract ---
step "Extracting <package>..."
cd "$SOURCES"
tar -xf <tarball>
cd <extracted-dir>

## --- Optional: apply patches ---
# step "Applying <patch-name>..."
# patch -Np1 -i ../<patch-file> || err "patch failed"

## --- Optional: special pre-configure steps ---
# ...

## --- Configure ---
step "Configuring <package>..."
# mkdir -v build && cd build
../configure <options> || err "configure failed"

## --- Compile ---
step "Compiling <package>..."
make -j$(nproc) || err "make failed"

## --- Install ---
step "Installing <package>..."
# make install
# or: make DESTDIR=$LFS install
# or: ...
make install || err "make install failed"

## --- Post-install steps ---
# ...

## --- Sanity checks (when applicable, e.g. Glibc) ---
# check "1/N: Checking ..."
# command || err "check failed"
# echo -e "   ${GREEN}PASS${NC}"

## --- Cleanup ---
cd "$SOURCES"
rm -rf <extracted-dir>

## --- Success Summary ---
echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  <Package> - Instalación completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Description${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/...${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}binary${NC} - What it does"
echo ""
echo -e "  Librerías instaladas:"
echo -e "    ${GREEN}libfoo${NC} - What it does"
echo ""
echo -e "  Propósito: One-paragraph explanation of what the"
echo -e "  package does and why it's needed."
echo ""
```

## Rules

1. **Always read the book chapter first** before writing the script — never
   guess configure flags or build steps.
2. Use `set -e` so the script exits on any error.
3. Each step starts with `step "description"` using the BLUE color helper.
4. Every command that can fail must be followed by `|| err "what failed"`.
5. The `err` function prints `[ERROR]` in RED and exits with code 1.
6. Clean up the extracted source directory at the end (`rm -rf`).
7. The success summary must explain:
   - What the package is (1 sentence)
   - Where it's installed
   - Key binaries produced and their purpose
   - Key libraries produced and their purpose
   - Overall purpose paragraph
8. For packages with sanity checks (like Glibc, Binutils, GCC), add numbered
   check steps with PASS/FAIL indicators.
9. Skip unnecessary comments. The step descriptions are self-documenting.
10. For `make`, always use `-j$(nproc)` unless the book explicitly says
    otherwise (e.g., Glibc may need `-j1` on failure).

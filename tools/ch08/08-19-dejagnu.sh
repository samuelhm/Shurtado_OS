#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting dejagnu-1.6.3..."
cd "$SOURCES"
tar -xf dejagnu-1.6.3.tar.gz
cd dejagnu-1.6.3

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring DejaGNU..."
../configure --prefix=/usr || err "configure failed"

step "Building HTML documentation..."
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi || err "makeinfo html failed"

step "Building plaintext documentation..."
makeinfo --plaintext -o doc/dejagnu.txt ../doc/dejagnu.texi || err "makeinfo text failed"

step "Installing DejaGNU..."
make install || err "make install failed"

step "Installing documentation..."
install -v -dm755 /usr/share/doc/dejagnu-1.6.3 || err "install doc dir failed"
install -v -m644 doc/dejagnu.html /usr/share/doc/dejagnu-1.6.3/ || err "install html failed"
install -v -m644 doc/dejagnu.txt /usr/share/doc/dejagnu-1.6.3/ || err "install txt failed"

cd "$SOURCES"
rm -rf dejagnu-1.6.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  DejaGNU-1.6.3 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}DejaGNU-1.6.3 - Framework de testing GNU${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/runtest${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}runtest${NC} - Ejecutor del framework de pruebas DejaGNU"
echo ""
echo -e "  Documentacion:"
echo -e "    ${GREEN}/usr/share/doc/dejagnu-1.6.3/dejagnu.html${NC}"
echo -e "    ${GREEN}/usr/share/doc/dejagnu-1.6.3/dejagnu.txt${NC}"
echo ""
echo -e "  Proposito: DejaGNU es un framework para ejecutar test"
echo -e "  suites de software GNU. Depende de Expect y Tcl, y es"
echo -e "  usado para validar GCC, Binutils, GDB, y muchas otras"
echo -e "  herramientas del toolchain. El comando 'runtest' ejecuta"
echo -e "  los test scripts definidos por cada paquete."
echo ""

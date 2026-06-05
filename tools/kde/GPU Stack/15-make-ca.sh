#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="make-ca-1.16.1"
TAR="$PKG.tar.gz"
URL="https://github.com/lfs-book/make-ca/archive/v1.16.1/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading make-ca 1.16.1..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting make-ca..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Fixing deprecated mktemp option..."
sed '/mktemp/s/-t //' -i make-ca

step "Installing make-ca..."
make install || err "make install failed"
install -vdm755 /etc/ssl/local

step "Generating CA certificates..."
/usr/sbin/make-ca -g || err "make-ca -g failed"

step "Enabling update-pki timer..."
systemctl enable update-pki.timer 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  make-ca 1.16.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Programa:   ${GREEN}make-ca${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/sbin/make-ca${NC}"
echo -e "  Certificados: ${BLUE}/etc/ssl/certs/${NC}"
echo ""
echo -e "  Proposito: Gestion de certificados CA (Mozilla)."
echo -e "  Requerido para conexiones TLS/SSL seguras."
echo ""

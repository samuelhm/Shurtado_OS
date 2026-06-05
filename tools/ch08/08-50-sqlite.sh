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

step "Extracting sqlite-3.53.1..."
cd "$SOURCES"
tar -xf sqlite-autoconf-3530100.tar.gz
cd sqlite-autoconf-3530100

step "Configuring SQLite..."
./configure --prefix=/usr                            \
            --disable-static                          \
            --enable-fts{4,5}                         \
            CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1   \
                      -D SQLITE_ENABLE_UNLOCK_NOTIFY=1     \
                      -D SQLITE_ENABLE_DBSTAT_VTAB=1       \
                      -D SQLITE_SECURE_DELETE=1"            \
            || err "configure failed"

step "Compiling SQLite..."
make LDFLAGS.rpath="" -j$(nproc) || err "make failed"

step "Installing SQLite..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf sqlite-autoconf-3530100

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  SQLite-3.53.1 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}SQLite-3.53.1 - Motor de base de datos SQL embebido${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/sqlite3, /usr/lib/libsqlite3.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}sqlite3${NC}    - Cliente SQL interactivo"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libsqlite3.so${NC} - Biblioteca SQL completa (FTS4, FTS5,"
echo -e "                     column metadata, unlock notify, dbstat, secure delete)"
echo ""
echo -e "  Proposito: SQLite es un motor de base de datos SQL ligero"
echo -e "  y autocontenido, sin servidor. Es usado por systemd,"
echo -e "  Python, y muchas aplicaciones para almacenamiento local"
echo -e "  de datos. Compilado con busqueda full-text (FTS4/5)"
echo -e "  y funcionalidades extendidas de depuracion y seguridad."
echo ""

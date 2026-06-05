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

[ "$(whoami)" = "root" ] || err "Debes ejecutar como root"

LFS="/mnt/lfs"
export LFS

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CHROOT_SCRIPTS="$LFS/root/scripts"

SKIP_SETUP=false
if [ "${1:-}" = "--skip-setup" ]; then
    SKIP_SETUP=true
fi

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 7 - Entering Chroot and      ${NC}"
echo -e "${GREEN}  Building Additional Temporary Tools   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

if $SKIP_SETUP; then
    echo -e "${YELLOW}  --skip-setup: Saltando 7.2 (chown) y 7.3 (kernfs)${NC}"
else
# ============================================================
# 7.2 - Changing Ownership
# ============================================================
step "7.2: Changing ownership to root:root..."
# Solo cambia si aun hay archivos de lfs; no falla si ya es root:root
chown --from lfs -R root:root $LFS/{usr,var,etc,tools} 2>/dev/null || true
case $(uname -m) in
  x86_64) chown --from lfs -R root:root $LFS/lib64 2>/dev/null || true ;;
esac
check "Verificando ownership..."
if find $LFS/{usr,var,etc,tools} -maxdepth 0 -user lfs 2>/dev/null | grep -q .; then
    err "Algunos directorios todavia pertenecen a lfs. Revisa manualmente."
fi
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 7.3 - Preparing Virtual Kernel File Systems
# ============================================================
step "7.3: Preparing virtual kernel file systems..."
mkdir -pv $LFS/{dev,proc,sys,run}

# 7.3.1 - Bind mount /dev
if ! mountpoint -q $LFS/dev 2>/dev/null; then
    mount -v --bind /dev $LFS/dev || err "bind mount /dev failed"
else
    echo -e "   ${YELLOW}$LFS/dev already mounted${NC}"
fi

# ============================================================
# 7.3 - Preparing Virtual Kernel File Systems
# ============================================================
step "7.3: Preparing virtual kernel file systems..."
mkdir -pv $LFS/{dev,proc,sys,run}

# 7.3.1 - Bind mount /dev
if ! mountpoint -q $LFS/dev 2>/dev/null; then
    mount -v --bind /dev $LFS/dev || err "bind mount /dev failed"
else
    echo -e "   ${YELLOW}$LFS/dev already mounted${NC}"
fi

# 7.3.2 - Mount virtual filesystems
if ! mountpoint -q $LFS/dev/pts 2>/dev/null; then
    mount -vt devpts devpts -o gid=5,mode=0620 $LFS/dev/pts || err "devpts failed"
else
    echo -e "   ${YELLOW}$LFS/dev/pts already mounted${NC}"
fi
if ! mountpoint -q $LFS/proc 2>/dev/null; then
    mount -vt proc proc $LFS/proc || err "proc failed"
else
    echo -e "   ${YELLOW}$LFS/proc already mounted${NC}"
fi
if ! mountpoint -q $LFS/sys 2>/dev/null; then
    mount -vt sysfs sysfs $LFS/sys || err "sysfs failed"
else
    echo -e "   ${YELLOW}$LFS/sys already mounted${NC}"
fi
if ! mountpoint -q $LFS/run 2>/dev/null; then
    mount -vt tmpfs tmpfs $LFS/run || err "run tmpfs failed"
else
    echo -e "   ${YELLOW}$LFS/run already mounted${NC}"
fi

# 7.3 - Handle /dev/shm
if [ -h $LFS/dev/shm ]; then
    install -v -d -m 1777 $LFS$(realpath /dev/shm) 2>/dev/null || true
elif ! mountpoint -q $LFS/dev/shm 2>/dev/null; then
    mount -vt tmpfs -o nosuid,nodev tmpfs $LFS/dev/shm || true
else
    echo -e "   ${YELLOW}$LFS/dev/shm already mounted${NC}"
fi
echo -e "   ${GREEN}PASS${NC}"
fi  # end SKIP_SETUP

# ============================================================
# Copy scripts into the chroot (so they're accessible inside)
# ============================================================
step "Copying package scripts into $CHROOT_SCRIPTS..."
rm -rf "$CHROOT_SCRIPTS"
mkdir -pv "$CHROOT_SCRIPTS"

SCRIPTS=(
    "07-07-gettext.sh"
    "07-08-bison.sh"
    "07-09-perl.sh"
    "07-10-python.sh"
    "07-11-texinfo.sh"
    "07-12-util-linux.sh"
)

for s in "${SCRIPTS[@]}"; do
    cp -v "$SCRIPT_DIR/$s" "$CHROOT_SCRIPTS/" || err "copy $s failed"
done
chmod +x "$CHROOT_SCRIPTS"/*.sh

# Create the in-chroot orchestrator
cat > "$CHROOT_SCRIPTS/run-in-chroot.sh" << 'RUNEOF'
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

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Inside chroot - Setting up environment ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# ============================================================
# 7.5 - Creating Directories
# ============================================================
step "7.5: Creating directory layout..."
mkdir -pv /{boot,home,mnt,opt,srv}
mkdir -pv /etc/{opt,sysconfig}
mkdir -pv /lib/firmware
mkdir -pv /media/{floppy,cdrom}
mkdir -pv /usr/{,local/}{include,src}
mkdir -pv /usr/lib/locale
mkdir -pv /usr/local/{bin,lib,sbin}
mkdir -pv /usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv /usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv /usr/{,local/}share/man/man{1..8}
mkdir -pv /var/{cache,local,log,mail,opt,spool}
mkdir -pv /var/lib/{color,misc,locate}
ln -sfv /run /var/run
ln -sfv /run/lock /var/lock
install -dv -m 0750 /root
install -dv -m 1777 /tmp /var/tmp
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 7.6 - Creating Essential Files and Symlinks
# ============================================================
step "7.6: Creating essential files and symlinks..."

ln -sfv /proc/self/mounts /etc/mtab

cat > /etc/hosts << "HOSTSEOF"
127.0.0.1  localhost $(hostname)
::1        localhost
HOSTSEOF

cat > /etc/passwd << "PASSWDEOF"
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/dev/null:/usr/bin/false
daemon:x:6:6:Daemon User:/dev/null:/usr/bin/false
messagebus:x:18:18:D-Bus Message Daemon User:/run/dbus:/usr/bin/false
systemd-journal-gateway:x:73:73:systemd Journal Gateway:/:/usr/bin/false
systemd-journal-remote:x:74:74:systemd Journal Remote:/:/usr/bin/false
systemd-journal-upload:x:75:75:systemd Journal Upload:/:/usr/bin/false
systemd-network:x:76:76:systemd Network Management:/:/usr/bin/false
systemd-resolve:x:77:77:systemd Resolver:/:/usr/bin/false
systemd-timesync:x:78:78:systemd Time Synchronization:/:/usr/bin/false
systemd-coredump:x:79:79:systemd Core Dumper:/:/usr/bin/false
uuidd:x:80:80:UUID Generation Daemon User:/dev/null:/usr/bin/false
systemd-oom:x:81:81:systemd Out Of Memory Daemon:/:/usr/bin/false
nobody:x:65534:65534:Unprivileged User:/dev/null:/usr/bin/false
PASSWDEOF

cat > /etc/group << "GROUPEOF"
root:x:0:
bin:x:1:daemon
sys:x:2:
kmem:x:3:
tape:x:4:
tty:x:5:
daemon:x:6:
floppy:x:7:
disk:x:8:
lp:x:9:
dialout:x:10:
audio:x:11:
video:x:12:
utmp:x:13:
clock:x:14:
cdrom:x:15:
adm:x:16:
messagebus:x:18:
systemd-journal:x:23:
input:x:24:
mail:x:34:
kvm:x:61:
systemd-journal-gateway:x:73:
systemd-journal-remote:x:74:
systemd-journal-upload:x:75:
systemd-network:x:76:
systemd-resolve:x:77:
systemd-timesync:x:78:
systemd-coredump:x:79:
uuidd:x:80:
systemd-oom:x:81:
wheel:x:97:
users:x:999:
nogroup:x:65534:
GROUPEOF

echo "tester:x:101:101::/home/tester:/bin/bash" >> /etc/passwd
echo "tester:x:101:" >> /etc/group
install -o tester -d /home/tester 2>/dev/null || true

if [ "${SKIP_SETUP:-}" != "1" ]; then
    step "7.5: Creating directory layout..."
    mkdir -pv /{boot,home,mnt,opt,srv}
    mkdir -pv /etc/{opt,sysconfig}
    mkdir -pv /lib/firmware
    mkdir -pv /media/{floppy,cdrom}
    mkdir -pv /usr/{,local/}{include,src}
    mkdir -pv /usr/lib/locale
    mkdir -pv /usr/local/{bin,lib,sbin}
    mkdir -pv /usr/{,local/}share/{color,dict,doc,info,locale,man}
    mkdir -pv /usr/{,local/}share/{misc,terminfo,zoneinfo}
    mkdir -pv /usr/{,local/}share/man/man{1..8}
    mkdir -pv /var/{cache,local,log,mail,opt,spool}
    mkdir -pv /var/lib/{color,misc,locate}
    ln -sfv /run /var/run
    ln -sfv /run/lock /var/lock
    install -dv -m 0750 /root
    install -dv -m 1777 /tmp /var/tmp
    echo -e "   ${GREEN}PASS${NC}"
else
    echo -e "   ${YELLOW}--skip-setup: Saltando 7.5 (dirs)${NC}"
fi

exec /usr/bin/bash --login << 'REEXECEOF'
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

step "Creating log files..."
touch /var/log/{btmp,lastlog,faillog,wtmp}
chgrp -v utmp /var/log/lastlog
chmod -v 664  /var/log/lastlog
chmod -v 600  /var/log/btmp
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 7.7-7.12 - Run package scripts
# ============================================================
SCRIPTS_DIR="/root/scripts"
PACKAGES=(
    "07-07-gettext.sh"
    "07-08-bison.sh"
    "07-09-perl.sh"
    "07-10-python.sh"
    "07-11-texinfo.sh"
    "07-12-util-linux.sh"
)

TOTAL=${#PACKAGES[@]}
CURRENT=0
FAILED=""

for s in "${PACKAGES[@]}"; do
    CURRENT=$((CURRENT + 1))
    SCRIPT_PATH="$SCRIPTS_DIR/$s"

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
    echo -e "${GREEN}  All chapter 7 packages installed!    ${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    echo -e "  Ahora ejecuta la limpieza y backup:"
    echo -e "    ${BLUE}exit${NC}                      # salir del chroot"
    echo -e "    ${BLUE}sudo bash tools/chapter-07-cleanup.sh${NC}"
    echo ""
else
    echo ""
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}  Chapter 7 incompleto - fallo en:     ${NC}"
    echo -e "${RED}  $FAILED${NC}"
    echo -e "${RED}========================================${NC}"
    echo ""
    echo -e "  Estas dentro del chroot. Corrige el error y re-ejecuta:"
    echo -e "    ${BLUE}bash /root/scripts/run-in-chroot.sh${NC}"
    exit 1
fi
REEXECEOF
RUNEOF

chmod +x "$CHROOT_SCRIPTS/run-in-chroot.sh"
echo -e "   ${GREEN}PASS: Scripts copied to $CHROOT_SCRIPTS${NC}"

# ============================================================
# 7.4 - Enter the CHROOT and run everything
# ============================================================
step "7.4: Entering chroot environment..."
echo ""
echo -e "${YELLOW}========================================${NC}"
echo -e "${YELLOW}  Entrando al chroot...                  ${NC}"
echo -e "${YELLOW}  Se ejecutaran 7.5-7.12 automaticamente ${NC}"
echo -e "${YELLOW}========================================${NC}"
echo ""

chroot "$LFS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    MAKEFLAGS="-j$(nproc)"      \
    TESTSUITEFLAGS="-j$(nproc)" \
    /bin/bash /root/scripts/run-in-chroot.sh

CHROOT_EXIT=$?

echo ""
if [ $CHROOT_EXIT -eq 0 ]; then
    echo -e "${GREEN}========================================${NC}"
    echo -e "${GREEN}  Capitulo 7 - COMPLETADO                ${NC}"
    echo -e "${GREEN}========================================${NC}"
    echo ""
    echo -e "  Siguiente paso:"
    echo -e "    ${BLUE}sudo bash tools/chapter-07-cleanup.sh${NC}"
    echo ""
else
    echo -e "${RED}========================================${NC}"
    echo -e "${RED}  Capitulo 7 - FALLO (exit $CHROOT_EXIT) ${NC}"
    echo -e "${RED}========================================${NC}"
    exit $CHROOT_EXIT
fi

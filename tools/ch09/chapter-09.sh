#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

[ "$(whoami)" = "root" ] || err "Debes ejecutar como root dentro del chroot"

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 9 - System Configuration      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# ============================================================
# 9.2.1 - Network DHCP
# ============================================================
step "9.2.1: Configuring network (DHCP)..."
mkdir -pv /etc/systemd/network

cat > /etc/systemd/network/10-eth-dhcp.network << "EOF"
[Match]
Name=en*
[Network]
DHCP=ipv4
[DHCPv4]
UseDomains=true
EOF

cat > /etc/systemd/network/10-wifi-dhcp.network << "EOF"
[Match]
Name=wl*
[Network]
DHCP=ipv4
[DHCPv4]
UseDomains=true
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.2.2 - Static DNS (8.8.8.8, 8.8.4.4)
# ============================================================
step "9.2.2: Configuring DNS (Google 8.8.8.8)..."
cat > /etc/resolv.conf << "EOF"
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF
# Disable systemd-resolved since we use static resolv.conf
systemctl disable systemd-resolved 2>/dev/null || true
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.2.3 - Hostname = shurtado (requisito 42)
# ============================================================
step "9.2.3: Setting hostname (shurtado)..."
echo "shurtado" > /etc/hostname
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.2.4 - /etc/hosts
# ============================================================
step "9.2.4: Configuring /etc/hosts..."
cat > /etc/hosts << "EOF"
127.0.0.1  localhost shurtado
::1        localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.5 - System Clock (host: Europe/Madrid)
# ============================================================
step "9.5: Configuring system clock..."
cat > /etc/adjtime << "EOF"
0.0 0 0.0
0
LOCAL
EOF
ln -sfv /usr/share/zoneinfo/Europe/Madrid /etc/localtime
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.6 - Console keymap (es) + font
# ============================================================
step "9.6: Configuring Linux console (keymap=es)..."
cat > /etc/vconsole.conf << "EOF"
KEYMAP=es
FONT=Lat2-Terminus16
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.7 - System Locale (es_ES.UTF-8)
# ============================================================
step "9.7: Installing and configuring locale (es_ES.UTF-8)..."
# Install locale if not present
if ! locale -a 2>/dev/null | grep -q 'es_ES.utf8\|es_ES.UTF-8'; then
    localedef -i es_ES -f UTF-8 es_ES.UTF-8 || err "localedef es_ES.UTF-8 failed"
fi

cat > /etc/locale.conf << "EOF"
LANG=es_ES.UTF-8
EOF

cat > /etc/profile << "EOF"
# Begin /etc/profile
for i in $(locale); do
  unset ${i%=*}
done
if [[ "$TERM" = linux ]]; then
  export LANG=C.UTF-8
else
  source /etc/locale.conf
  for i in $(locale); do
    key=${i%=*}
    if [[ -v $key ]]; then
      export $key
    fi
  done
fi
# End /etc/profile
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.8 - /etc/inputrc
# ============================================================
step "9.8: Creating /etc/inputrc..."
cat > /etc/inputrc << "EOF"
# Begin /etc/inputrc
set horizontal-scroll-mode Off
set meta-flag On
set input-meta On
set convert-meta Off
set output-meta On
set bell-style none
"\eOd": backward-word
"\eOc": forward-word
"\e[1~": beginning-of-line
"\e[4~": end-of-line
"\e[5~": beginning-of-history
"\e[6~": end-of-history
"\e[3~": delete-char
"\e[2~": quoted-insert
"\eOH": beginning-of-line
"\eOF": end-of-line
"\e[H": beginning-of-line
"\e[F": end-of-line
# End /etc/inputrc
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.9 - /etc/shells
# ============================================================
step "9.9: Creating /etc/shells..."
cat > /etc/shells << "EOF"
# Begin /etc/shells
/bin/sh
/bin/bash
# End /etc/shells
EOF
echo -e "   ${GREEN}PASS${NC}"

# ============================================================
# 9.10 - systemd optional tweaks
# ============================================================
step "9.10: systemd tweaks..."

# Disable screen clearing at boot
mkdir -pv /etc/systemd/system/getty@tty1.service.d
cat > /etc/systemd/system/getty@tty1.service.d/noclear.conf << "EOF"
[Service]
TTYVTDisallocate=no
EOF

# Disable tmpfs on /tmp (use disk)
ln -sfv /dev/null /etc/systemd/system/tmp.mount

echo -e "   ${GREEN}PASS${NC}"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Capitulo 9 - COMPLETADO                ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Hostname:       ${BLUE}shurtado${NC}"
echo -e "  Locale:         ${BLUE}es_ES.UTF-8${NC}"
echo -e "  Keymap:         ${BLUE}es${NC}"
echo -e "  Timezone:       ${BLUE}Europe/Madrid${NC}"
echo -e "  DNS:            ${BLUE}8.8.8.8 / 8.8.4.4${NC}"
echo -e "  Network:        ${BLUE}DHCP (en*/wl*)${NC}"
echo ""
echo -e "  Siguiente paso: Capitulo 10 (Kernel + GRUB)"
echo ""

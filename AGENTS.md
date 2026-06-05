# AGENTS.md — Linux From Scratch (LFS) + Beyond LFS (BLFS)

## Project Overview

This project builds a Linux from Scratch system using the **systemd** variant.

- **LFS Book**: `r13.0-131-systemd/` (version r13.0-131-systemd, June 2026)
- **BLFS Book**: `blfs-systemd/` (version r13.0-790, June 2026)
- **Disk image**: `ft_linux_disk.qcow2`
- **Disk layout**: GPT, 4 partitions: p1 BIOS boot (1M), p2 /boot (500M), p3 swap (4G), p4 / (55G)
- **VM script**: `run_qemu.sh`
- **Subject**: `en.subject.md` — 42 School requirements (mandatory + bonus)
- **Makefile**: `make help` for available targets

**Current phase: BLFS** (LFS base system is complete, now installing extra packages).

---

## CRITICAL RULE: Always Read the Book

**Before ANY action that touches the VM (via SSH), you MUST:**

1. Identify which BLFS package/chapter we are installing.
2. Read the relevant Markdown file(s) from `blfs-systemd/` to understand
   the exact commands, dependencies, and context.
3. Only then proceed with the action.

**This rule is ABSOLUTE.** Do NOT guess commands, paths, configure flags, or
dependencies. The BLFS book is the single source of truth.

---

## VM Access (CURRENT)

- **Always**: `ssh -p 2222 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@localhost`
- SSH key authentication configured — no password needed.
- The VM is the live running system. We do NOT mount the disk anymore.
- All package installation happens via SSH directly in the VM.
- `sshd.service` is enabled and starts at boot.

---

## BLFS Book Structure

| Part | Directory | Content |
|------|-----------|---------|
| I | `introduction/` | Conventions, building notes, systemd units |
| II | `postlfs/` | Config, security, filesystems, editors, shells |
| III | `general/` | Libraries, graphics, utilities, **programming tools** |
| IV | `basicnet/` | Networking |
| V | `server/` | Servers |
| VI | `x/` | Xorg, graphical libraries, WMs |
| VII | `kde/` | KDE |
| VIII | `gnome/` | GNOME |
| IX | `xfce/` | Xfce |
| X | `lxqt/` | LXQt |
| XI | `xsoft/` | Firefox, LibreOffice, etc. |
| XII | `multimedia/` | ALSA, Pipewire, codecs |
| XIII | `pst/` | Printing, scanning |

---

## Prohibited Actions

1. **Never SSH into the VM and run commands without reading the relevant BLFS chapter.**
2. **Never assume a package version, download URL, or configure flag.**
3. **Never skip steps in the BLFS book.**
4. **Never touch 42 School targets (`make 42*`).**

---

## Build Conventions (BLFS)

When installing any package from source on the VM:

1. **Read the BLFS `.md` file first** — never guess flags or versions.
2. **Check the build system help** — `./configure --help`, `meson setup --help`,
   `cmake -LH ..`, etc. Know your options before running configure.
3. **Always `--prefix=/usr`** — consistent with LFS conventions.
4. **`--disable-static`** — shared libs only (`.so`), no `.la` or `.a`.
5. **Dependencies first**: if `--with-foo` adds critical functionality,
   install `foo` rather than disabling it (e.g., PAM for sshd, curl for git).
6. **Prefer newer versions** — avoid deprecated/obsolete packages.
7. **Cleanup**: `rm -rf /sources/<extracted-dir>` after successful install.
   Keep the tarball.
8. Sources go in `/sources/`, extracted builds happen there.

Full details: see skill `blfs-package-install`.

---

## 42 School Requirements (from `en.subject.md`)

| Requirement | Detail |
|-------------|--------|
| Partitions | At least 3: `/`, `/boot`, swap (we use 4 with GPT: +BIOS boot) |
| Kernel version | ≥ 4.0, named `Linux kernel <version>-<student_login>` |
| Kernel binary | `/boot/vmlinuz-<linux_version>-<student_login>` |
| Kernel sources | `/usr/src/kernel-$(version)` |
| Hostname | Must be the student login (`shurtado`) |
| Module loader | udev |
| Init system | systemd |
| Bootloader | GRUB |
| Bonus | X server, WM/DE, extra software |

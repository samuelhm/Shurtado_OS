# AGENTS.md — Linux From Scratch (LFS) Build Environment

## Project Overview

This project builds a Linux from Scratch system using the **systemd** variant of
LFS book version **r13.0-131-systemd** (published June 2nd, 2026).

- **Book directory**: `r13.0-131-systemd/`
- **Disk image**: `ft_linux_disk.qcow2`
- **Disk layout**: GPT, 4 partitions: p1 BIOS boot (1M), p2 /boot (500M), p3 swap (4G), p4 / (55G)
- **Mount points**: `disk_mount/` (local convenience), `/mnt/lfs` (LFS standard)
- **VM script**: `run_qemu.sh`
- **Tools**: `tools/version-check.sh` — run to verify host meets LFS requirements
- **Subject**: `en.subject.md` — 42 School requirements (mandatory + bonus)
- **Makefile**: `make help` for available targets

---

## CRITICAL RULE: Always Read the Book

**Before ANY action that touches the disk image or the VM (via SSH or mount),
you MUST:**

1. Identify which step/stage of LFS we are currently at.
2. Read the relevant Markdown chapter(s) from `r13.0-131-systemd/` to understand
   the exact commands, environment, and context.
3. Only then proceed with the action.

**This rule is ABSOLUTE.** Do NOT guess commands, paths, or environment
variables. The LFS book is the single source of truth. Modifying the disk or
executing commands via SSH without reading the correct chapter first is
FORBIDDEN.

---

## Chapter Map

| Chapter | Title | What it covers |
|---------|-------|----------------|
| [Preface](r13.0-131-systemd/prologue/foreword.md) | Prerequisites & Architecture | Host requirements, LFS target architectures |
| [Ch. 1](r13.0-131-systemd/chapter01/chapter01.md) | Introduction | How to build LFS, changelog, resources, help |
| [Ch. 2](r13.0-131-systemd/chapter02/chapter02.md) | Preparing the Host System | Host tool checks, partitioning, filesystem, `$LFS` variable, mounting |
| [Ch. 3](r13.0-131-systemd/chapter03/chapter03.md) | Packages and Patches | Download list of packages and patches with verified versions |
| [Ch. 4](r13.0-131-systemd/chapter04/chapter04.md) | Final Preparations | `$LFS` directory layout, `lfs` user, build environment, SBUs |
| [Part III Intro](r13.0-131-systemd/partintro/partintro.md) | Cross-Compilation Basics | Toolchain theory, **general compilation instructions** (critical before Ch. 5) |
| [Ch. 5](r13.0-131-systemd/chapter05/chapter05.md) | Cross-Toolchain | binutils pass1, GCC pass1, Linux API headers, Glibc, Libstdc++ |
| [Ch. 6](r13.0-131-systemd/chapter06/chapter06.md) | Temporary Tools (Cross) | Cross-compile M4, Ncurses, Bash, Coreutils, etc. under `$LFS/tools` |
| [Ch. 7](r13.0-131-systemd/chapter07/chapter07.md) | Chroot + Temp Tools | Enter chroot, create virtual kernel filesystems, build Gettext, Bison, Perl, Python |
| [Ch. 8](r13.0-131-systemd/chapter08/chapter08.md) | Installing Basic System | Full system build: Glibc, GCC, Binutils, Bash, Coreutils, Systemd, etc. (~80 packages) |
| [Ch. 9](r13.0-131-systemd/chapter09/chapter09.md) | System Configuration | Network, udev, clock, console, locale, systemd services |
| [Ch. 10](r13.0-131-systemd/chapter10/chapter10.md) | Making Bootable | `/etc/fstab`, Linux kernel build, GRUB boot loader |
| [Ch. 11](r13.0-131-systemd/chapter11/chapter11.md) | The End | Wrap-up, registration, reboot into new system, post-LFS resources |

Each chapter contains multiple Markdown files for individual sections. Read the
subsection file that matches the specific task at hand.

---

## Makefile Commands

| Command | Description |
|---------|-------------|
| `make` / `make help` | Show this help |
| `make run` | Boot VM from disk (`ft_linux_disk.qcow2`) |
| `make run_iso` | Boot VM from live CD ISO (default: `archlinux-2026.06.01-x86_64.iso`) |
| `make run_iso ISO=path.iso` | Boot with a specific ISO |
| `make mount` | Mount the qcow2 disk to `disk_mount/` (requires guestmount) |
| `make umount` | Unmount `disk_mount/` |
| `make mount_lfs` | Mount the qcow2 disk to `/mnt/lfs` (standard LFS mount point) |
| `make umount_lfs` | Unmount `/mnt/lfs` |
| `make status` | Show VM, disk, and mount status |
| `make compress` | Compress qcow2 disk (qemu-img -c) |
| `make decompress` | Decompress qcow2 disk |
| `make 42*` | 42 School targets — do NOT use or modify these |

---

## VM Access

- **SSH**: `ssh -p 2222 user@localhost` (user varies by LFS stage)
- Before SSH-ing, check which chapter we are at to know the correct user (`root`,
  `lfs`, or a system user created in Ch. 8/9).

---

## Prohibited Actions

1. **Never modify files in `disk_mount/` without reading the relevant chapter.**
2. **Never SSH into the VM and run commands without reading the relevant chapter.**
3. **Never skip steps in the LFS book.**
4. **Never assume a package version, download URL, or configure flag.** Always
   read the book's `packages.md` and the relevant chapter section.
5. **Never touch 42 School targets (`make 42*`)** — they are for the 42
   evaluation environment only.

---

## 42 School Requirements (from `en.subject.md`)

The subject mandates specific requirements beyond the stock LFS build:

| Requirement | Detail |
|-------------|--------|
| Partitions | At least 3: `/`, `/boot`, swap (we use 4 with GPT: +BIOS boot) |
| Kernel version | ≥ 4.0, named `Linux kernel <version>-<student_login>` |
| Kernel binary | `/boot/vmlinuz-<linux_version>-<student_login>` |
| Kernel sources | `/usr/src/kernel-$(version)` |
| Hostname | Must be the student login (`shurtado`) |
| Module loader | udev (or equivalent) |
| Init system | systemd or SysV (we use systemd — LFS systemd variant) |
| Bootloader | GRUB (or LILO) |
| Package list | See subject Ch. IV — mandatory packages; extras for bonus |
| Delivery | Checksum of disk image (`shasum < disk.qcow2`) |

---

## Current State Tracking

When working on this project, the first step is always to determine the current
LFS stage. Look at:
- The VM state (`make status`)
- Contents of `disk_mount/` or `/mnt/lfs` (whichever is mounted)
- The last completed chapter based on what packages/tools are already built

Then open the NEXT chapter that needs to be completed and read it fully before
taking any action.

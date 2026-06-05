# 00a — LFS Base System

> Linux From Scratch r13.0-131-systemd. 81 paquetes que forman el sistema base.
> GCC 16.1.0, Glibc 2.43, Linux 7.0.10-shurtado, systemd 260.2.
> ~970 binarios instalados en total.

---

## Toolchain — Compiladores y linkers

### Binutils-2.46.0
- **Para que sirve:** Ensamblador, linker, y utilidades binarias (as, ld, objdump, readelf, nm, etc.).
- **Que instala:** `libbfd.so`, `libopcodes.so`, `libctf.so`, `as`, `ld`, `ld.gold`, `objdump`, `readelf`, `nm`, `ar`, `ranlib`, `strip`, `strings`, `size`, `addr2line`, `c++filt`, `elfedit`, `gprof`, `dwp`.

### GCC-16.1.0
- **Para que sirve:** Compilador C/C++ de GNU. Todo el sistema se compila con el.
- **Que instala:** `libgcc_s.so`, `libstdc++.so`, `libgomp.so` (OpenMP), `libatomic.so`, `libasan.so`, `libitm.so`, `liblsan.so`, `libhwasan.so`, `gcc`, `g++`, `cpp`, `gcc-ar`, `gcc-nm`, `gcc-ranlib`, `gcov`, `lto-dump`, `gfortran` (opcional).

### Glibc-2.43
- **Para que sirve:** Biblioteca C estandar — TODO programa enlaza contra ella.
- **Que instala:** `libc.so` (ld-linux-x86-64.so.2), `libm.so`, `libpthread.so`, `libdl.so`, `librt.so`, `libresolv.so`, `libnss_*.so`, `libanl.so`, `libBrokenLocale.so`, `libmvec.so`, `ldd`, `ldconfig`, `locale`, `localedef`, `getconf`, `iconv`, `getent`, `mtrace`, `sln`, `nscd`, `zdump`, `zic`, y herramientas de internacionalizacion.

### Linux-7.0.10 (kernel headers)
- **Para que sirve:** Núcleo del sistema operativo. Los headers permiten a glibc y otros compilar.
- **Que instala:** `/boot/vmlinuz-7.0.10-shurtado`, módulos en `/lib/modules/`, `/usr/src/kernel-7.0.10`, headers en `/usr/include/asm/`, `/usr/include/linux/`.

### GMP-6.3.0
- **Para que sirve:** Biblioteca de aritmética de precisión arbitraria. Requerida por GCC y muchas bibliotecas criptográficas.
- **Que instala:** `libgmp.so`, `libgmpxx.so` (C++ bindings).

### MPFR-4.2.2
- **Para que sirve:** Funciones de precisión múltiple con redondeo correcto. Requerida por GCC.
- **Que instala:** `libmpfr.so`.

### MPC-1.4.1
- **Para que sirve:** Aritmética de números complejos con precisión arbitraria. Requerida por GCC.
- **Que instala:** `libmpc.so`.

---

## Build System — Herramientas de compilación

### Make-4.4.1
- **Para que sirve:** Controla la compilación de paquetes mediante Makefiles.
- **Que instala:** `make`.

### Ninja-1.13.2
- **Para que sirve:** Build system alternativo a Make, más rápido. Usado por Meson.
- **Que instala:** `ninja`.

### Meson-1.11.1
- **Para que sirve:** Build system moderno (reemplaza autotools). Usado por systemd, Mesa, Wayland, etc.
- **Que instala:** `meson` (script Python), módulos Python en site-packages.

### Pkgconf-2.5.1
- **Para que sirve:** Provee `pkg-config` — consulta metadata de bibliotecas instaladas (.pc files).
- **Que instala:** `pkgconf`, `pkg-config` (symlink), `libpkgconf.so`.

### Autoconf-2.73
- **Para que sirve:** Genera scripts `configure` para sistemas Unix.
- **Que instala:** `autoconf`, `autoheader`, `autom4te`, `autoreconf`, `autoscan`, `autoupdate`, `ifnames`.

### Automake-1.18.1
- **Para que sirve:** Genera Makefiles portables a partir de `Makefile.am`.
- **Que instala:** `automake`, `aclocal`.

### Libtool-2.5.4
- **Para que sirve:** Script para crear bibliotecas compartidas portables.
- **Que instala:** `libtool`, `libtoolize`, `libltdl.so`.

### M4-1.4.21
- **Para que sirve:** Procesador de macros. Usado por autoconf y bison.
- **Que instala:** `m4`.

### Bison-3.8.2
- **Para que sirve:** Generador de parsers (reemplazo de yacc). Usado por bash, systemd, etc.
- **Que instala:** `bison`, `yacc` (symlink), `liby.a`.

### Flex-2.6.4
- **Para que sirve:** Generador de analizadores léxicos (reemplazo de lex).
- **Que instala:** `flex`, `lex` (symlink), `libfl.so`.

### Gperf-3.3
- **Para que sirve:** Generador de funciones hash perfectas. Usado por systemd, udev.
- **Que instala:** `gperf`.

### Gettext-1.0
- **Para que sirve:** Internacionalización (i18n) — traducciones de programas.
- **Que instala:** `libgettextlib.so`, `libgettextsrc.so`, `libgettextpo.so`, `libasprintf.so`, `gettext`, `msgfmt`, `xgettext`, `msgmerge`, `msginit`, `gettextize`, `autopoint`, y ~30 utilidades más.

---

## Shell y Utilidades del Sistema

### Bash-5.3
- **Para que sirve:** Shell por defecto. Intérprete de comandos y lenguaje de scripting.
- **Que instala:** `bash`, `sh` (symlink), `bashbug`.

### Coreutils-9.11
- **Para que sirve:** Utilidades básicas: ls, cp, mv, rm, cat, echo, mkdir, chmod, etc.
- **Que instala:** ~100 binarios: `ls`, `cp`, `mv`, `rm`, `cat`, `echo`, `mkdir`, `chmod`, `chown`, `dd`, `df`, `du`, `head`, `tail`, `sort`, `uniq`, `wc`, `cut`, `tr`, `basename`, `dirname`, `realpath`, `sleep`, `true`, `false`, `yes`, `tee`, `env`, `expr`, `factor`, `seq`, `test`, `touch`, `stat`, `printf`, `pwd`, `id`, `whoami`, `groups`, `users`, `chroot`, `nice`, `nohup`, `stty`, `tty`, `uname`, `hostname`, `sync`, `shred`, `split`, `paste`, `join`, `comm`, `csplit`, `expand`, `unexpand`, `fold`, `fmt`, `nl`, `pr`, `tsort`, `ptx`, `base64`, `basenc`, `cksum`, `md5sum`, `sha1sum`, `sha256sum`, `sha512sum`, `b2sum`, `link`, `ln`, `mknod`, `mkfifo`, `readlink`, `rmdir`, `unlink`, `install`, `stdbuf`, `timeout`, `truncate`.

### Util-linux-2.42.1
- **Para que sirve:** Utilidades del sistema: montaje, particiones, terminales, login.
- **Que instala:** `libblkid.so`, `libmount.so`, `libfdisk.so`, `libsmartcols.so`, `libuuid.so`, `mount`, `umount`, `swapon`, `swapoff`, `fdisk`, `sfdisk`, `cfdisk`, `losetup`, `findmnt`, `lsblk`, `blkid`, `wipefs`, `mkfs`, `mkswap`, `fsck`, `fsfreeze`, `fstrim`, `partx`, `addpart`, `delpart`, `resizepart`, `agetty`, `login`, `su`, `sulogin`, `wall`, `last`, `lastb`, `mesg`, `write`, `utmpdump`, `dmesg`, `more`, `logger`, `whereis`, `rename`, `renice`, `taskset`, `flock`, `setsid`, `setarch`, `script`, `scriptlive`, `scriptreplay`, `unshare`, `nsenter`, `lsns`, `lsfd`, `lscpu`, `chcpu`, `lsmem`, `chmem`, `lslocks`, `lslogins`, `chfn`, `chsh`, `runuser`, `hardlink`, `cal`, `col`, `colcrt`, `colrm`, `column`, `hexdump`, `rev`, `line`, `lslocks`, `irqtop`, `lsirq`, `rtcwake`, `wdctl`, `zramctl`, `choom`, `ipcmk`, `ipcrm`, `ipcs`, `lsipc`, `pipesz`, `setpgid`, `setpriv`, `eject`, `findfs`, `fsck.cramfs`, `mkfs.cramfs`, `mkfs.bfs`, `uuidd`, `uuidgen`, `uuidparse`.

### Shadow-4.19.4
- **Para que sirve:** Gestión de usuarios y contraseñas.
- **Que instala:** `useradd`, `userdel`, `usermod`, `groupadd`, `groupdel`, `groupmod`, `passwd`, `chpasswd`, `chage`, `chgpasswd`, `expiry`, `faillog`, `gpasswd`, `lastlog`, `newgidmap`, `newuidmap`, `newusers`, `nologin`, `pwck`, `pwconv`, `pwunconv`, `grpck`, `grpconv`, `grpunconv`, `sg`, `vigr`, `vipw`, `su`, `login`, `logoutd`, `newgrp`.

### Kbd-2.10.0
- **Para que sirve:** Utilidades de teclado: mapas de teclas, fuentes de consola.
- **Que instala:** `loadkeys`, `dumpkeys`, `showkey`, `setfont`, `kbd_mode`, `kbdinfo`, `openvt`, `fgconsole`, `chvt`, `deallocvt`, `unicode_start`, `unicode_stop`, `setleds`, `setmetamode`, `psfaddtable`, `psfgettable`, `psfstriptable`.

---

## Bibliotecas del Sistema

### Ncurses-6.6
- **Para que sirve:** Manejo de terminal (curses). Permite interfaces de texto tipo TUI. Usado por bash, vim, etc.
- **Que instala:** `libncurses.so`, `libncursesw.so`, `libncurses++w.so`, `libform.so`, `libmenu.so`, `libpanel.so`, `tic`, `infocmp`, `tabs`, `toe`, `tset`, `clear`, `reset`.

### Readline-8.3
- **Para que sirve:** Edición de línea de comandos con historial. Usada por bash, gdb, sqlite.
- **Que instala:** `libreadline.so`, `libhistory.so`.

### Pcre2-10.47
- **Para que sirve:** Expresiones regulares compatibles con Perl. Usado por grep y systemd.
- **Que instala:** `libpcre2-8.so`, `libpcre2-16.so`, `libpcre2-32.so`, `libpcre2-posix.so`, `pcre2grep`, `pcre2test`, `pcre2-config`.

### Zlib (incluido en LFS)
- **Para que sirve:** Compresión/descompresión DEFLATE (gzip). Usado por casi todo.
- **Que instala:** `libz.so`, `libz.a`.

### Bzip2-1.0.8
- **Para que sirve:** Compresión bzip2 (mejor ratio que gzip pero más lento).
- **Que instala:** `libbz2.so`, `bzip2`, `bunzip2`, `bzcat`, `bzcmp`, `bzdiff`, `bzgrep`, `bzip2recover`, `bzmore`, `bzless`.

### Xz-Utils (incluido en LFS)
- **Para que sirve:** Compresión LZMA/xz (alto ratio de compresión). Tarballs de paquetes BLFS vienen en .xz.
- **Que instala:** `liblzma.so`, `xz`, `unxz`, `xzcat`, `xzcmp`, `xzdiff`, `xzgrep`, `xzless`, `xzmore`, `lzma`, `lzcat`, `lzcmp`, `lzdiff`, `lzgrep`, `lzless`, `lzmore`, `lzmadec`.

### Lz4-1.10.0
- **Para que sirve:** Compresión LZ4 ultra-rápida. Usado por systemd para journal y kernel.
- **Que instala:** `liblz4.so`, `lz4`, `lz4c`, `lz4cat`, `unlz4`.

### Zstd (incluido con systemd)
- **Para que sirve:** Compresión Zstandard (balance velocidad/ratio). Usado por systemd, kernel, btrfs.
- **Que instala:** `libzstd.so`, `zstd`, `zstdcat`, `zstdmt`, `unzstd`, `zstdgrep`, `zstdless`.

### Libffi-3.5.2
- **Para que sirve:** Interfaz de funciones foráneas — permite llamar funciones C desde intérpretes. Usado por Python, GLib.
- **Que instala:** `libffi.so`.

### Expat-2.8.1
- **Para que sirve:** Parser XML en C. Usado por D-Bus, systemd, fontconfig.
- **Que instala:** `libexpat.so`, `xmlwf`.

### GDBM-1.26
- **Para que sirve:** GNU Database Manager — base de datos clave-valor simple. Usado por man-db.
- **Que instala:** `libgdbm.so`, `libgdbm_compat.so`, `gdbmtool`, `gdbm_dump`, `gdbm_load`, `gdbmtest`.

### Libcap-2.78
- **Para que sirve:** Capacidades POSIX — permisos granulares más allá de root.
- **Que instala:** `libcap.so`, `libpsx.so`, `getcap`, `setcap`, `getpcaps`, `capsh`.

### Libxcrypt-4.5.2
- **Para que sirve:** Hashing de contraseñas (DES, MD5, Blowfish, SHA-512, bcrypt, yescrypt).
- **Que instala:** `libcrypt.so`.

### Libpipeline-1.5.8
- **Para que sirve:** Manipulación de pipelines de procesos. Usado por man-db.
- **Que instala:** `libpipeline.so`.

### Acl-2.3.2
- **Para que sirve:** Access Control Lists — permisos extendidos de archivos.
- **Que instala:** `libacl.so`, `chacl`, `getfacl`, `setfacl`.

### Attr-2.5.2
- **Para que sirve:** Atributos extendidos de archivos (xattrs).
- **Que instala:** `libattr.so`, `attr`, `getfattr`, `setfattr`.

---

## Init, Dispositivos y Sistema

### Systemd-260.2
- **Para que sirve:** Init system, gestor de servicios, journal, udev, logind, resolved, timesyncd, etc.
- **Que instala:** `systemd` (PID 1), `libsystemd.so`, `libudev.so`, `journalctl`, `systemctl`, `loginctl`, `udevadm`, `hostnamectl`, `localectl`, `timedatectl`, `resolvectl`, `networkctl`, `bootctl`, `busctl`, `coredumpctl`, `machinectl`, `portablectl`, `systemd-analyze`, `systemd-cat`, `systemd-cgls`, `systemd-cgtop`, `systemd-delta`, `systemd-detect-virt`, `systemd-dissect`, `systemd-escape`, `systemd-id128`, `systemd-inhibit`, `systemd-notify`, `systemd-path`, `systemd-run`, `systemd-tmpfiles`, `systemd-tty-ask-password-agent`, `journald` y cientos de servicios/units.

### D-Bus-1.16.2
- **Para que sirve:** Bus de comunicación entre procesos (IPC). GNOME, KDE, systemd lo usan.
- **Que instala:** `libdbus-1.so`, `dbus-daemon`, `dbus-send`, `dbus-monitor`, `dbus-launch`, `dbus-cleanup-sockets`, `dbus-run-session`, `dbus-update-activation-environment`, `dbus-uuidgen`.

### Kmod-34.2
- **Para que sirve:** Gestión de módulos del kernel (reemplaza module-init-tools). Usado por udev.
- **Que instala:** `libkmod.so`, `kmod` (symlink multi-call: `lsmod`, `insmod`, `rmmod`, `modprobe`, `modinfo`, `depmod`).

### Iana-Etc-20260529
- **Para que sirve:** Base de datos de protocolos y servicios de red (IANA).
- **Que instala:** Archivos `/etc/protocols`, `/etc/services`.

### Procps-4.0.6
- **Para que sirve:** Herramientas de monitoreo de procesos: ps, top, free, etc.
- **Que instala:** `libproc2.so`, `ps`, `top`, `free`, `vmstat`, `uptime`, `w`, `watch`, `pgrep`, `pkill`, `pmap`, `pwdx`, `slabtop`, `tload`, `sysctl`, `pidof`, `skill`, `snice`, `pidwait`.

### Psmisc-23.7
- **Para que sirve:** Utilidades de procesos: killall, fuser, pstree.
- **Que instala:** `killall`, `fuser`, `pstree`, `peekfd`, `prtstat`.

---

## Redes

### OpenSSL-4.0.0
- **Para que sirve:** Criptografía y TLS/SSL. Casi toda conexión HTTPS depende de esto.
- **Que instala:** `libcrypto.so`, `libssl.so`, `openssl`, `c_rehash`.

### Inetutils-2.8
- **Para que sirve:** Herramientas básicas de red: ping, ftp, telnet, hostname.
- **Que instala:** `ping`, `ping6`, `ftp`, `telnet`, `traceroute`, `ifconfig`, `hostname`, `dnsdomainname`, `logger`, `rexecd`, `rlogin`, `rsh`, `talk`, `tftp`, `whois`.

### IPRoute2-7.0.0
- **Para que sirve:** Gestión avanzada de red: ip, ss, bridge, tc.
- **Que instala:** `ip`, `ss` (reemplazo de netstat), `bridge`, `tc`, `lnstat`, `nstat`, `rtstat`, `ctstat`, `genl`, `tipc`, `devlink`, `rdma`, `vdpa`.

### Curl-8.20.0 (BLFS)
- **Para que sirve:** Transferencia de datos via URL (HTTP, FTP, etc.). Biblioteca y comando.
- **Que instala:** `libcurl.so`, `curl`, `curl-config`.
- **Nota:** Instalado como parte de BLFS (pre-KDE).

### Wget-1.25.0 (BLFS)
- **Para que sirve:** Descarga recursiva de archivos via HTTP/HTTPS/FTP.
- **Que instala:** `wget`.
- **Nota:** Instalado como parte de BLFS (pre-KDE).

### Git-2.54.0 (BLFS)
- **Para que sirve:** Sistema de control de versiones distribuido.
- **Que instala:** `git`, `gitk`, `git-gui`, `git-shell`, `git-upload-pack`, `git-receive-pack`, y cientos de subcomandos.
- **Nota:** Instalado como parte de BLFS (pre-KDE).

---

## Texto y Procesamiento

### Gawk-5.4.0
- **Para que sirve:** Procesador de texto AWK (lenguaje de escaneo y procesamiento).
- **Que instala:** `awk` (symlink), `gawk`, `gawk-5.4.0`.

### Grep-3.12
- **Para que sirve:** Búsqueda de patrones en archivos (regex).
- **Que instala:** `grep`, `egrep`, `fgrep`.

### Sed-4.10
- **Para que sirve:** Editor de flujo (stream editor). Transformación de texto no interactiva.
- **Que instala:** `sed`.

### Diffutils-3.12
- **Para que sirve:** Comparación de archivos: diff, cmp, patch.
- **Que instala:** `diff`, `cmp`, `diff3`, `sdiff`.

### Patch-2.8
- **Para que sirve:** Aplica parches diff a archivos fuente.
- **Que instala:** `patch`.

### File-5.47
- **Para que sirve:** Detecta el tipo de archivo por contenido (magic numbers).
- **Que instala:** `file`, `libmagic.so`.

### Findutils-4.10.0
- **Para que sirve:** Búsqueda de archivos: find, locate, xargs.
- **Que instala:** `find`, `locate`, `updatedb`, `xargs`.

### Groff-1.24.1
- **Para que sirve:** Formateador de texto (troff). Usado para generar man pages.
- **Que instala:** `groff`, `troff`, `nroff`, `eqn`, `tbl`, `pic`, `refer`, `soelim`, `grops`, `grodvi`, `grotty`, `grohtml`, `grolj4`, `grolbp`, `preconv`, `afmtodit`, `hpftodit`, `pfbtops`, `addftinfo`, `pdfroff`.

### Less-702
- **Para que sirve:** Paginador de texto (mejor que more). Usado por man y git.
- **Que instala:** `less`, `lessecho`, `lesskey`.

### Man-DB-2.13.1
- **Para que sirve:** Visualizador de páginas de manual (man).
- **Que instala:** `man`, `manpath`, `apropos`, `whatis`, `catman`, `mandb`, `man-recode`, `manconv`, `lexgrog`, `zsoelim`, `accessdb`.

### Man-pages-6.18
- **Para que sirve:** Documentación de referencia: man pages de syscalls, bibliotecas, dispositivos, protocolos.
- **Que instala:** ~2000 archivos en `/usr/share/man/man*/`.

### Texinfo-7.3
- **Para que sirve:** Sistema de documentación GNU. Genera Info, HTML, PDF.
- **Que instala:** `makeinfo`, `texi2any`, `info`, `install-info`, `texi2dvi`, `texi2pdf`, `pdftexi2dvi`, `txixml2texi`.

---

## Archivos y Sistemas de Archivos

### Tar-1.35
- **Para que sirve:** Archivador tar. Desempaqueta tarballs (.tar, .tar.gz, .tar.xz).
- **Que instala:** `tar`.

### Gzip-1.14
- **Para que sirve:** Compresión/descompresión gzip (.gz).
- **Que instala:** `gzip`, `gunzip`, `zcat`, `gzexe`, `gzcmp`, `gzdiff`, `gzgrep`, `gzforce`, `gzmore`, `zless`, `znew`, `uncompress`.

### Cpio (incluido)
- **Para que sirve:** Archivador cpio. Usado en initramfs, RPM.
- **Que instala:** `cpio`.

### E2fsprogs-1.47.4
- **Para que sirve:** Herramientas para sistemas de archivos ext2/ext3/ext4.
- **Que instala:** `libext2fs.so`, `libcom_err.so`, `libe2p.so`, `e2fsck`, `mke2fs`, `tune2fs`, `dumpe2fs`, `resize2fs`, `debugfs`, `badblocks`, `chattr`, `lsattr`, `e2label`, `findfs`, `fsck.ext2/3/4`, `mkfs.ext2/3/4`, `logsave`, `filefrag`, `e2freefrag`, `e2undo`, `mklost+found`, `e4crypt`.

---

## Programación y Editores

### Python-3.14.5
- **Para que sirve:** Lenguaje de scripting de alto nivel. Usado por el build system (meson, cmake), systemd, y cientos de paquetes BLFS.
- **Que instala:** `libpython3.14.so`, `python3`, `python3.14`, `pip3`, `pydoc3`, `python3-config`, `idle3`, y extensa biblioteca estándar en `/usr/lib/python3.14/`.

### Perl-5.42.2
- **Para que sirve:** Lenguaje de scripting. Usado por autotools, openssl, texinfo, y muchos paquetes.
- **Que instala:** `perl`, `perl5.42.2`, `corelist`, `cpan`, `enc2xs`, `instmodsh`, `json_pp`, `libnetcfg`, `perlbug`, `perldoc`, `perlivp`, `perlthanks`, `piconv`, `pl2pm`, `pod2html`, `pod2man`, `pod2text`, `pod2usage`, `podchecker`, `podselect`, `prove`, `ptar`, `ptardiff`, `ptargrep`, `shasum`, `splain`, `xsubpp`, `zipdetails`.

### Tcl-8.6.18
- **Para que sirve:** Tool Command Language — lenguaje de scripting embebible. Usado por expect, SQLite.
- **Que instala:** `tclsh8.6`, `tclsh`, `libtcl8.6.so`.

### Expect-5.45.4
- **Para que sirve:** Automatización de programas interactivos. Usado por tests de GCC, binutils.
- **Que instala:** `expect`, `libexpect5.45.4.so`.

### Bc-7.0.3
- **Para que sirve:** Calculadora de precisión arbitraria. Usada en scripts de compilación.
- **Que instala:** `bc`, `dc`.

### Sqlite-3.53.1
- **Para que sirve:** Base de datos SQL embebida. Usada por cientos de aplicaciones.
- **Que instala:** `libsqlite3.so`, `sqlite3`.

### Vim-9.2.0567
- **Para que sirve:** Editor de texto avanzado (vi improved).
- **Que instala:** `vim`, `vi`, `view`, `ex`, `rvim`, `rview`, `vimdiff`, `gvim` (opcional), `xxd`.

### GDB-17.2 (BLFS)
- **Para que sirve:** Debugger de GNU. Permite depurar programas C/C++/Rust.
- **Que instala:** `gdb`, `gdbserver`.
- **Nota:** Instalado como parte de BLFS (pre-KDE).

---

## Arranque

### GRUB-2.14
- **Para que sirve:** Bootloader. Carga el kernel al inicio del sistema.
- **Que instala:** `grub-install`, `grub-mkconfig`, `grub-mkrescue`, `grub-editenv`, `grub-mkpasswd-pbkdf2`, y ~40 utilidades más, módulos en `/boot/grub/`.

---

## Testing

### DejaGNU-1.6.3
- **Para que sirve:** Framework de testing. Usado para ejecutar test suites de GCC, binutils.
- **Que instala:** `runtest`.

---

## Módulos Python (LFS)

### Jinja2-3.1.6
- **Para que sirve:** Motor de plantillas para Python. Usado por Meson y systemd.
- **Que instala:** Módulo Python `jinja2`.

### MarkupSafe-3.0.3
- **Para que sirve:** Escapado seguro de texto para plantillas. Dependencia de Jinja2.
- **Que instala:** Módulo Python `markupsafe`.

### Flit-core-3.12.0
- **Para que sirve:** Empaquetador simple de paquetes Python (PEP 517 build backend).
- **Que instala:** Módulo Python `flit_core`.

### Setuptools-82.0.1
- **Para que sirve:** Sistema de empaquetado Python (setup.py). Necesario para instalar módulos Python.
- **Que instala:** Módulo Python `setuptools`, `pkg_resources`.

### Packaging-26.2
- **Para que sirve:** Utilidades para versionado y empaquetado Python (PEP 440).
- **Que instala:** Módulo Python `packaging`.

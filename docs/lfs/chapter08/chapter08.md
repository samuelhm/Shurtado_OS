::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Part IV. Building the LFS System

-   [Prev](../part4.md "Building the LFS System"){accesskey="p"}

    Building the LFS System

-   [Next](introduction.md "Introduction"){accesskey="n"}

    Introduction

-   [Up](../part4.md "Part IV. Building the LFS System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#chapter-building-system}8. Installing Basic System Software {#installing-basic-system-software .chapter}

:::: {.chapter lang="en"}
::: toc
### Table of Contents

-   [Introduction](introduction.md)
-   [Package Management](pkgmgt.md)
-   [Man-pages-6.18](man-pages.md)
-   [Iana-Etc-20260529](iana-etc.md)
-   [Glibc-2.43](glibc.md)
-   [Zlib-1.3.2](zlib.md)
-   [Bzip2-1.0.8](bzip2.md)
-   [Xz-5.8.3](xz.md)
-   [Lz4-1.10.0](lz4.md)
-   [Zstd-1.5.7](zstd.md)
-   [File-5.47](file.md)
-   [Readline-8.3](readline.md)
-   [Pcre2-10.47](pcre2.md)
-   [M4-1.4.21](m4.md)
-   [Bc-7.0.3](bc.md)
-   [Flex-2.6.4](flex.md)
-   [Tcl-8.6.18](tcl.md)
-   [Expect-5.45.4](expect.md)
-   [DejaGNU-1.6.3](dejagnu.md)
-   [Pkgconf-2.5.1](pkgconf.md)
-   [Binutils-2.46.0](binutils.md)
-   [GMP-6.3.0](gmp.md)
-   [MPFR-4.2.2](mpfr.md)
-   [MPC-1.4.1](mpc.md)
-   [Attr-2.5.2](attr.md)
-   [Acl-2.3.2](acl.md)
-   [Libcap-2.78](libcap.md)
-   [Libxcrypt-4.5.2](libxcrypt.md)
-   [Shadow-4.19.4](shadow.md)
-   [GCC-16.1.0](gcc.md)
-   [Ncurses-6.6](ncurses.md)
-   [Sed-4.10](sed.md)
-   [Psmisc-23.7](psmisc.md)
-   [Gettext-1.0](gettext.md)
-   [Bison-3.8.2](bison.md)
-   [Grep-3.12](grep.md)
-   [Bash-5.3](bash.md)
-   [Libtool-2.5.4](libtool.md)
-   [GDBM-1.26](gdbm.md)
-   [Gperf-3.3](gperf.md)
-   [Expat-2.8.1](expat.md)
-   [Inetutils-2.8](inetutils.md)
-   [Less-702](less.md)
-   [Perl-5.42.2](perl.md)
-   [Autoconf-2.73](autoconf.md)
-   [Automake-1.18.1](automake.md)
-   [OpenSSL-4.0.0](openssl.md)
-   [Libelf from Elfutils-0.195](libelf.md)
-   [Libffi-3.5.2](libffi.md)
-   [Sqlite-3530100](sqlite.md)
-   [Python-3.14.5](Python.md)
-   [Flit-Core-3.12.0](flit-core.md)
-   [Packaging-26.2](packaging.md)
-   [Wheel-0.47.0](wheel.md)
-   [Setuptools-82.0.1](setuptools.md)
-   [Ninja-1.13.2](ninja.md)
-   [Meson-1.11.1](meson.md)
-   [Kmod-34.2](kmod.md)
-   [Coreutils-9.11](coreutils.md)
-   [Diffutils-3.12](diffutils.md)
-   [Gawk-5.4.0](gawk.md)
-   [Findutils-4.10.0](findutils.md)
-   [Groff-1.24.1](groff.md)
-   [GRUB-2.14](grub.md)
-   [Gzip-1.14](gzip.md)
-   [IPRoute2-7.0.0](iproute2.md)
-   [Kbd-2.10.0](kbd.md)
-   [Libpipeline-1.5.8](libpipeline.md)
-   [Make-4.4.1](make.md)
-   [Patch-2.8](patch.md)
-   [Tar-1.35](tar.md)
-   [Texinfo-7.3](texinfo.md)
-   [Vim-9.2.0567](vim.md)
-   [MarkupSafe-3.0.3](markupsafe.md)
-   [Jinja2-3.1.6](jinja2.md)
-   [Systemd-260.2](systemd.md)
-   [D-Bus-1.16.2](dbus.md)
-   [Man-DB-2.13.1](man-db.md)
-   [Procps-ng-4.0.6](procps-ng.md)
-   [Util-linux-2.42.1](util-linux.md)
-   [E2fsprogs-1.47.4](e2fsprogs.md)
-   [About Debugging Symbols](aboutdebug.md)
-   [Stripping](stripping.md)
-   [Cleaning Up](cleanup.md)
:::
::::

::: navfooter
-   [Prev](../part4.md "Building the LFS System"){accesskey="p"}

    Building the LFS System

-   [Next](introduction.md "Introduction"){accesskey="n"}

    Introduction

-   [Up](../part4.md "Part IV. Building the LFS System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

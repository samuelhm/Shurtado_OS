::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

-   [Prev](chapter07/cleanup.md "Cleaning up and Saving the Temporary System"){accesskey="p"}

    Cleaning up and Saving the Temporary System

-   [Next](chapter08/chapter08.md "Installing Basic System Software"){accesskey="n"}

    Installing Basic System Software

-   .

-   [Home](index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#part4}IV. Building the LFS System {#iv.-building-the-lfs-system .part}

:::: part
::: toc
### Table of Contents

-   #### 8. Installing Basic System Software

    -   [Introduction](chapter08/introduction.md)
    -   [Package Management](chapter08/pkgmgt.md)
    -   [Man-pages-6.18](chapter08/man-pages.md)
    -   [Iana-Etc-20260529](chapter08/iana-etc.md)
    -   [Glibc-2.43](chapter08/glibc.md)
    -   [Zlib-1.3.2](chapter08/zlib.md)
    -   [Bzip2-1.0.8](chapter08/bzip2.md)
    -   [Xz-5.8.3](chapter08/xz.md)
    -   [Lz4-1.10.0](chapter08/lz4.md)
    -   [Zstd-1.5.7](chapter08/zstd.md)
    -   [File-5.47](chapter08/file.md)
    -   [Readline-8.3](chapter08/readline.md)
    -   [Pcre2-10.47](chapter08/pcre2.md)
    -   [M4-1.4.21](chapter08/m4.md)
    -   [Bc-7.0.3](chapter08/bc.md)
    -   [Flex-2.6.4](chapter08/flex.md)
    -   [Tcl-8.6.18](chapter08/tcl.md)
    -   [Expect-5.45.4](chapter08/expect.md)
    -   [DejaGNU-1.6.3](chapter08/dejagnu.md)
    -   [Pkgconf-2.5.1](chapter08/pkgconf.md)
    -   [Binutils-2.46.0](chapter08/binutils.md)
    -   [GMP-6.3.0](chapter08/gmp.md)
    -   [MPFR-4.2.2](chapter08/mpfr.md)
    -   [MPC-1.4.1](chapter08/mpc.md)
    -   [Attr-2.5.2](chapter08/attr.md)
    -   [Acl-2.3.2](chapter08/acl.md)
    -   [Libcap-2.78](chapter08/libcap.md)
    -   [Libxcrypt-4.5.2](chapter08/libxcrypt.md)
    -   [Shadow-4.19.4](chapter08/shadow.md)
    -   [GCC-16.1.0](chapter08/gcc.md)
    -   [Ncurses-6.6](chapter08/ncurses.md)
    -   [Sed-4.10](chapter08/sed.md)
    -   [Psmisc-23.7](chapter08/psmisc.md)
    -   [Gettext-1.0](chapter08/gettext.md)
    -   [Bison-3.8.2](chapter08/bison.md)
    -   [Grep-3.12](chapter08/grep.md)
    -   [Bash-5.3](chapter08/bash.md)
    -   [Libtool-2.5.4](chapter08/libtool.md)
    -   [GDBM-1.26](chapter08/gdbm.md)
    -   [Gperf-3.3](chapter08/gperf.md)
    -   [Expat-2.8.1](chapter08/expat.md)
    -   [Inetutils-2.8](chapter08/inetutils.md)
    -   [Less-702](chapter08/less.md)
    -   [Perl-5.42.2](chapter08/perl.md)
    -   [Autoconf-2.73](chapter08/autoconf.md)
    -   [Automake-1.18.1](chapter08/automake.md)
    -   [OpenSSL-4.0.0](chapter08/openssl.md)
    -   [Libelf from Elfutils-0.195](chapter08/libelf.md)
    -   [Libffi-3.5.2](chapter08/libffi.md)
    -   [Sqlite-3530100](chapter08/sqlite.md)
    -   [Python-3.14.5](chapter08/Python.md)
    -   [Flit-Core-3.12.0](chapter08/flit-core.md)
    -   [Packaging-26.2](chapter08/packaging.md)
    -   [Wheel-0.47.0](chapter08/wheel.md)
    -   [Setuptools-82.0.1](chapter08/setuptools.md)
    -   [Ninja-1.13.2](chapter08/ninja.md)
    -   [Meson-1.11.1](chapter08/meson.md)
    -   [Kmod-34.2](chapter08/kmod.md)
    -   [Coreutils-9.11](chapter08/coreutils.md)
    -   [Diffutils-3.12](chapter08/diffutils.md)
    -   [Gawk-5.4.0](chapter08/gawk.md)
    -   [Findutils-4.10.0](chapter08/findutils.md)
    -   [Groff-1.24.1](chapter08/groff.md)
    -   [GRUB-2.14](chapter08/grub.md)
    -   [Gzip-1.14](chapter08/gzip.md)
    -   [IPRoute2-7.0.0](chapter08/iproute2.md)
    -   [Kbd-2.10.0](chapter08/kbd.md)
    -   [Libpipeline-1.5.8](chapter08/libpipeline.md)
    -   [Make-4.4.1](chapter08/make.md)
    -   [Patch-2.8](chapter08/patch.md)
    -   [Tar-1.35](chapter08/tar.md)
    -   [Texinfo-7.3](chapter08/texinfo.md)
    -   [Vim-9.2.0567](chapter08/vim.md)
    -   [MarkupSafe-3.0.3](chapter08/markupsafe.md)
    -   [Jinja2-3.1.6](chapter08/jinja2.md)
    -   [Systemd-260.2](chapter08/systemd.md)
    -   [D-Bus-1.16.2](chapter08/dbus.md)
    -   [Man-DB-2.13.1](chapter08/man-db.md)
    -   [Procps-ng-4.0.6](chapter08/procps-ng.md)
    -   [Util-linux-2.42.1](chapter08/util-linux.md)
    -   [E2fsprogs-1.47.4](chapter08/e2fsprogs.md)
    -   [About Debugging Symbols](chapter08/aboutdebug.md)
    -   [Stripping](chapter08/stripping.md)
    -   [Cleaning Up](chapter08/cleanup.md)

-   #### 9. System Configuration

    -   [Introduction](chapter09/introduction.md)
    -   [General Network Configuration](chapter09/network.md)
    -   [Overview of Device and Module Handling](chapter09/udev.md)
    -   [Managing Devices](chapter09/symlinks.md)
    -   [Configuring the System Clock](chapter09/clock.md)
    -   [Configuring the Linux Console](chapter09/console.md)
    -   [Configuring the System Locale](chapter09/locale.md)
    -   [Creating the /etc/inputrc File](chapter09/inputrc.md)
    -   [Creating the /etc/shells File](chapter09/etcshells.md)
    -   [Systemd Usage and Configuration](chapter09/systemd-custom.md)

-   #### 10. Making the LFS System Bootable

    -   [Introduction](chapter10/introduction.md)
    -   [Creating the /etc/fstab File](chapter10/fstab.md)
    -   [Linux-7.0.10](chapter10/kernel.md)
    -   [Using GRUB to Set Up the Boot Process](chapter10/grub.md)

-   #### 11. The End

    -   [The End](chapter11/theend.md)
    -   [Get Counted](chapter11/getcounted.md)
    -   [Rebooting the System](chapter11/reboot.md)
    -   [Additional Resources](chapter11/whatnow.md)
    -   [Getting Started After LFS](chapter11/afterlfs.md)
:::
::::

::: navfooter
-   [Prev](chapter07/cleanup.md "Cleaning up and Saving the Temporary System"){accesskey="p"}

    Cleaning up and Saving the Temporary System

-   [Next](chapter08/chapter08.md "Installing Basic System Software"){accesskey="n"}

    Installing Basic System Software

-   .

-   [Home](index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

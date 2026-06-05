:::::::::::::::: book
:::::::::::::: titlepage
<div>

<div>

# []{#idm140276776081456}Linux From Scratch {#linux-from-scratch .title}

</div>

<div>

## Version r13.0-131-systemd {#version-r13.0-131-systemd .subtitle}

</div>

<div>

## Published June 2nd, 2026 {#published-june-2nd-2026 .subtitle}

</div>

<div>

::::::: authorgroup
::: author
### [Created by Gerard]{.firstname} [Beekmans]{.surname} {#created-by-gerard-beekmans .author}
:::

::: author
### [Managing Editor: Bruce]{.firstname} [Dubbs]{.surname} {#managing-editor-bruce-dubbs .author}
:::

::: author
### [Editor: Douglas R.]{.firstname} [Reno]{.surname} {#editor-douglas-r.-reno .author}
:::

::: author
### [Editor: DJ]{.firstname} [Lucas]{.surname} {#editor-dj-lucas .author}
:::
:::::::

</div>

<div>

[Copyright](legalnotice.md) © 1999-2026 Gerard Beekmans

</div>

</div>

------------------------------------------------------------------------
::::::::::::::

::: toc
### Table of Contents

-   #### Preface

    -   [Foreword](prologue/foreword.md)
    -   [Audience](prologue/audience.md)
    -   [LFS Target Architectures](prologue/architecture.md)
    -   [Prerequisites](prologue/prerequisites.md)
    -   [LFS and Standards](prologue/standards.md)
    -   [Rationale for Packages in the Book](prologue/package-choices.md)
    -   [Typography](prologue/typography.md)
    -   [Structure](prologue/organization.md)
    -   [Errata and Security Advisories](prologue/errata.md)

-   ### I. Introduction

    -   #### 1. Introduction

        -   [How to Build an LFS System](chapter01/how.md)
        -   [What\'s new since the last release](chapter01/whatsnew.md)
        -   [Changelog](chapter01/changelog.md)
        -   [Resources](chapter01/resources.md)
        -   [Help](chapter01/askforhelp.md)

-   ### II. Preparing for the Build

    -   #### 2. Preparing the Host System

        -   [Introduction](chapter02/introduction.md)
        -   [Host System Requirements](chapter02/hostreqs.md)
        -   [Building LFS in Stages](chapter02/stages.md)
        -   [Creating a New Partition](chapter02/creatingpartition.md)
        -   [Creating a File System on the Partition](chapter02/creatingfilesystem.md)
        -   [Setting the \$LFS Variable and the Umask](chapter02/aboutlfs.md)
        -   [Mounting the New Partition](chapter02/mounting.md)

    -   #### 3. Packages and Patches

        -   [Introduction](chapter03/introduction.md)
        -   [All Packages](chapter03/packages.md)
        -   [Needed Patches](chapter03/patches.md)

    -   #### 4. Final Preparations

        -   [Introduction](chapter04/introduction.md)
        -   [Creating a Limited Directory Layout in the LFS Filesystem](chapter04/creatingminlayout.md)
        -   [Adding the LFS User](chapter04/addinguser.md)
        -   [Setting Up the Environment](chapter04/settingenvironment.md)
        -   [About SBUs](chapter04/aboutsbus.md)
        -   [About the Test Suites](chapter04/abouttestsuites.md)

-   ### III. Building the LFS Cross Toolchain and Temporary Tools

    -   #### Important Preliminary Material

        -   [Introduction](partintro/introduction.md)
        -   [Toolchain Technical Notes](partintro/toolchaintechnotes.md)
        -   [General Compilation Instructions](partintro/generalinstructions.md)

    -   #### 5. Compiling a Cross-Toolchain

        -   [Introduction](chapter05/introduction.md)
        -   [Binutils-2.46.0 - Pass 1](chapter05/binutils-pass1.md)
        -   [GCC-16.1.0 - Pass 1](chapter05/gcc-pass1.md)
        -   [Linux-7.0.10 API Headers](chapter05/linux-headers.md)
        -   [Glibc-2.43](chapter05/glibc.md)
        -   [Libstdc++ from GCC-16.1.0](chapter05/gcc-libstdc++.md)

    -   #### 6. Cross Compiling Temporary Tools

        -   [Introduction](chapter06/introduction.md)
        -   [M4-1.4.21](chapter06/m4.md)
        -   [Ncurses-6.6](chapter06/ncurses.md)
        -   [Bash-5.3](chapter06/bash.md)
        -   [Coreutils-9.11](chapter06/coreutils.md)
        -   [Diffutils-3.12](chapter06/diffutils.md)
        -   [File-5.47](chapter06/file.md)
        -   [Findutils-4.10.0](chapter06/findutils.md)
        -   [Gawk-5.4.0](chapter06/gawk.md)
        -   [Grep-3.12](chapter06/grep.md)
        -   [Gzip-1.14](chapter06/gzip.md)
        -   [Make-4.4.1](chapter06/make.md)
        -   [Patch-2.8](chapter06/patch.md)
        -   [Sed-4.10](chapter06/sed.md)
        -   [Tar-1.35](chapter06/tar.md)
        -   [Xz-5.8.3](chapter06/xz.md)
        -   [Binutils-2.46.0 - Pass 2](chapter06/binutils-pass2.md)
        -   [GCC-16.1.0 - Pass 2](chapter06/gcc-pass2.md)

    -   #### 7. Entering Chroot and Building Additional Temporary Tools

        -   [Introduction](chapter07/introduction.md)
        -   [Changing Ownership](chapter07/changingowner.md)
        -   [Preparing Virtual Kernel File Systems](chapter07/kernfs.md)
        -   [Entering the Chroot Environment](chapter07/chroot.md)
        -   [Creating Directories](chapter07/creatingdirs.md)
        -   [Creating Essential Files and Symlinks](chapter07/createfiles.md)
        -   [Gettext-1.0](chapter07/gettext.md)
        -   [Bison-3.8.2](chapter07/bison.md)
        -   [Perl-5.42.2](chapter07/perl.md)
        -   [Python-3.14.5](chapter07/Python.md)
        -   [Texinfo-7.3](chapter07/texinfo.md)
        -   [Util-linux-2.42.1](chapter07/util-linux.md)
        -   [Cleaning up and Saving the Temporary System](chapter07/cleanup.md)

-   ### IV. Building the LFS System

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

-   ### V. Appendices

    -   [A. Acronyms and Terms](appendices/acronymlist.md)
    -   [B. Acknowledgments](appendices/acknowledgments.md)
    -   [C. Dependencies](appendices/dependencies.md)
    -   [D. LFS Licenses](appendices/licenses.md)
        -   [Creative Commons License](appendices/creat-comm.md)
        -   [The MIT License](appendices/mit.md)

-   ### [Index](longindex.md)
:::
::::::::::::::::

::: navfooter
-   [Next](prologue/preface.md "Preface"){accesskey="n"}

    Preface

-   .

-   .
:::

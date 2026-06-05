::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Part V. Appendices

-   [Prev](acknowledgments.md "Acknowledgments"){accesskey="p"}

    Acknowledgments

-   [Next](licenses.md "LFS Licenses"){accesskey="n"}

    LFS Licenses

-   [Up](../part5.md "Part V. Appendices"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#appendixc}C. Dependencies {#c.-dependencies .appendix}

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: appendix
Every package built in LFS relies on one or more other packages in order to build and install properly. Some packages even participate in circular dependencies, that is, the first package depends on the second which in turn depends on the first. Because of these dependencies, the order in which packages are built in LFS is very important. The purpose of this page is to document the dependencies of each package built in LFS.

For each package that is built, there are three, and sometimes up to five types of dependencies listed below. The first lists what other packages need to be available in order to compile and install the package in question. The second lists the packages that must be available when any programs or libraries from the package are used at runtime. The third lists what packages, in addition to those on the first list, need to be available in order to run the test suites. The fourth list of dependencies are packages that require this package to be built and installed in its final location before they are built and installed.

The last list of dependencies are optional packages that are not addressed in LFS, but could be useful to the user. These packages may have additional mandatory or optional dependencies of their own. For these dependencies, the recommended practice is to install them after completion of the LFS book and then go back and rebuild the LFS package. In several cases, re-installation is addressed in BLFS.

## []{#acl-dep}Acl

::::: segmentedlist
[]{#acl-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Attr, Bash, Binutils, Coreutils, GCC, Gettext, Grep, M4, Make, Perl, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#acl-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Attr and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#acl-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Automake, Diffutils, Findutils, and Libtool]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#acl-before}

:::: seglistitem
::: seg
**Must be installed before:** [Coreutils, Sed, Tar, and Vim]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#acl-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#attr-dep}Attr

::::: segmentedlist
[]{#attr-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, M4, Make, Perl, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#attr-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#attr-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Automake, Diffutils, Findutils, and Libtool]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#attr-before}

:::: seglistitem
::: seg
**Must be installed before:** [Acl, Libcap, and Patch]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#attr-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#autoconf-dep}Autoconf

::::: segmentedlist
[]{#autoconf-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Coreutils, Grep, M4, Make, Perl, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#autoconf-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Coreutils, Grep, M4, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#autoconf-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Automake, Diffutils, Findutils, GCC, and Libtool]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#autoconf-before}

:::: seglistitem
::: seg
**Must be installed before:** [Automake and Coreutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#autoconf-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Emacs](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/emacs.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#automake-dep}Automake

::::: segmentedlist
[]{#automake-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Autoconf, Bash, Coreutils, Gettext, Grep, M4, Make, Perl, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#automake-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Coreutils, Grep, M4, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#automake-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Binutils, Bison, Bzip2, DejaGNU, Diffutils, Expect, Findutils, Flex, GCC, Gettext, Gzip, Libtool, and Tar]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#automake-before}

:::: seglistitem
::: seg
**Must be installed before:** [Coreutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#automake-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#bash-dep}Bash

::::: segmentedlist
[]{#bash-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Ncurses, Patch, Readline, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bash-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Ncurses, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bash-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Expect and Shadow]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bash-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bash-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Xorg](https://www.linuxfromscratch.org/blfs/view/systemd/x/installing.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#bc-dep}Bc

::::: segmentedlist
[]{#bc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Grep, Make, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Ncurses, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Gawk]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bc-before}

:::: seglistitem
::: seg
**Must be installed before:** [Linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#binutils-dep}Binutils

::::: segmentedlist
[]{#binutils-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, File, Flex, Gawk, GCC, Glibc, Grep, Make, Perl, Pkgconf, Sed, Texinfo, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#binutils-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#binutils-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [DejaGNU and Expect]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#binutils-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#binutils-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[Elfutils](https://sourceware.org/elfutils/){.ulink} and [Jansson](https://www.linuxfromscratch.org/blfs/view/systemd/general/jansson.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#bison-dep}Bison

::::: segmentedlist
[]{#bison-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Gettext, Glibc, Grep, M4, Make, Perl, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bison-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bison-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils, Findutils, and Flex]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bison-before}

:::: seglistitem
::: seg
**Must be installed before:** [Kbd and Tar]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bison-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Doxygen](https://www.linuxfromscratch.org/blfs/view/systemd/general/doxygen.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#bzip2-dep}Bzip2

::::: segmentedlist
[]{#bzip2-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, Make, and Patch]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bzip2-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bzip2-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bzip2-before}

:::: seglistitem
::: seg
**Must be installed before:** [File and Libelf]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#bzip2-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#coreutils-dep}Coreutils

::::: segmentedlist
[]{#coreutils-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Autoconf, Automake, Bash, Binutils, Coreutils, GCC, Gettext, Glibc, GMP, Grep, Libcap, Make, OpenSSL, Patch, Perl, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#coreutils-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#coreutils-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils, E2fsprogs, Findutils, Shadow, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#coreutils-before}

:::: seglistitem
::: seg
**Must be installed before:** [Bash, Diffutils, Findutils, Man-DB, and [Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#coreutils-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[Expect.pm](https://metacpan.org/pod/Expect){.ulink} and [IO::Tty](https://metacpan.org/pod/IO::Tty){.ulink}]{.segbody}
:::
::::
:::::

## []{#dbus-dep}D-Bus

::::: segmentedlist
[]{#dbus-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Pkgconf, Sed, Systemd, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dbus-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Systemd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dbus-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Several packages in BLFS]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dbus-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dbus-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Xorg Libraries](https://www.linuxfromscratch.org/blfs/view/systemd/x/x7lib.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#dejagnu-dep}DejaGNU

::::: segmentedlist
[]{#dejagnu-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Coreutils, Diffutils, Expect, GCC, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dejagnu-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Expect and Bash]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dejagnu-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dejagnu-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#dejagnu-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#diffutils-dep}Diffutils

::::: segmentedlist
[]{#diffutils-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, Gettext, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#diffutils-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#diffutils-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#diffutils-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#diffutils-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#e2fsprogs-dep}E2fsprogs

::::: segmentedlist
[]{#e2fsprogs-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Gzip, Make, Pkgconf, Sed, [Systemd,]{.phrase} Texinfo, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#e2fsprogs-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#e2fsprogs-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Procps-ng and Psmisc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#e2fsprogs-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#e2fsprogs-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#expat-dep}Expat

::::: segmentedlist
[]{#expat-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, Glibc, Grep, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expat-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expat-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expat-before}

:::: seglistitem
::: seg
**Must be installed before:** [Python and XML::Parser]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expat-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#expect-dep}Expect

::::: segmentedlist
[]{#expect-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, Grep, Make, Patch, Sed, and Tcl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expect-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Tcl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expect-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expect-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#expect-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Tk](https://www.linuxfromscratch.org/blfs/view/systemd/general/tk.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#file-dep}File

::::: segmentedlist
[]{#file-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bzip2, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Sed, Xz, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#file-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Bzip2, Xz, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#file-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#file-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#file-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libseccomp](https://www.linuxfromscratch.org/blfs/view/systemd/general/libseccomp.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#findutils-dep}Findutils

::::: segmentedlist
[]{#findutils-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#findutils-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#findutils-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [DejaGNU, Diffutils, and Expect]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#findutils-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#findutils-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#flex-dep}Flex

::::: segmentedlist
[]{#flex-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, M4, Make, Patch, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flex-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Glibc, and M4]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flex-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Bison and Gawk]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flex-before}

:::: seglistitem
::: seg
**Must be installed before:** [Binutils, IProute2, Kbd, Kmod, and Man-DB]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flex-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#flit-core-dep}Flit-Core

::::: segmentedlist
[]{#flit-core-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flit-core-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flit-core-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flit-core-before}

:::: seglistitem
::: seg
**Must be installed before:** [Packaging and Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#flit-core-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [pytest](https://www.linuxfromscratch.org/blfs/view/systemd/general/python-modules.html#pytest){.ulink} and [testpath](https://pypi.org/project/testpath){.ulink}]{.segbody}
:::
::::
:::::

## []{#gawk-dep}Gawk

::::: segmentedlist
[]{#gawk-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, GMP, Grep, Make, MPFR, Patch, Readline, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gawk-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Glibc, and Mpfr]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gawk-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gawk-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gawk-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libsigsegv](https://www.linuxfromscratch.org/blfs/view/systemd/general/libsigsegv.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#gcc-dep}GCC

::::: segmentedlist
[]{#gcc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Findutils, Gawk, GCC, Gettext, Glibc, GMP, Grep, M4, Make, MPC, MPFR, Patch, Perl, Sed, Tar, Texinfo, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gcc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Binutils, Glibc, Mpc, and Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gcc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [DejaGNU, Expect, and Shadow]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gcc-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gcc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[GDC](https://www.gdcproject.org/){.ulink}, [GNAT](https://gcc.gnu.org/wiki/GNAT){.ulink}, and [ISL](https://repo.or.cz/isl.git){.ulink}]{.segbody}
:::
::::
:::::

## []{#gdbm}GDBM

::::: segmentedlist
[]{#gdbm-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Grep, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gdbm-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Glibc, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gdbm-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gdbm-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gdbm-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#gettext-dep}Gettext

::::: segmentedlist
[]{#gettext-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, Glibc, Grep, Make, Ncurses, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gettext-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Acl, Bash, Gcc, and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gettext-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils, Perl, and Tcl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gettext-before}

:::: seglistitem
::: seg
**Must be installed before:** [Automake and Bison]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gettext-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libunistring](https://www.linuxfromscratch.org/blfs/view/systemd/general/libunistring.html){.ulink} and [libxml2](https://www.linuxfromscratch.org/blfs/view/systemd/general/libxml2.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#glibc-dep}Glibc

::::: segmentedlist
[]{#glibc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Diffutils, Gawk, GCC, Gettext, Grep, Gzip, Linux API Headers, Make, Perl, Python, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#glibc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#glibc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [File]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#glibc-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#glibc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#gmp-dep}GMP

::::: segmentedlist
[]{#gmp-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, M4, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gmp-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GCC and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gmp-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gmp-before}

:::: seglistitem
::: seg
**Must be installed before:** [MPFR and GCC]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gmp-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#gperf-dep}Gperf

::::: segmentedlist
[]{#gperf-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, and Make]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gperf-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GCC and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gperf-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils and Expect]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gperf-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gperf-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#grep-dep}Grep

::::: segmentedlist
[]{#grep-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Gettext, Glibc, Grep, Make, Patch, Pcre2, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grep-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grep-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Gawk]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grep-before}

:::: seglistitem
::: seg
**Must be installed before:** [Man-DB]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grep-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#groff-dep}Groff

::::: segmentedlist
[]{#groff-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Gawk, GCC, Glibc, Grep, Make, Patch, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#groff-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GCC, Glibc, and Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#groff-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#groff-before}

:::: seglistitem
::: seg
**Must be installed before:** [Man-DB]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#groff-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[ghostscript](https://www.linuxfromscratch.org/blfs/view/systemd/pst/gs.html){.ulink} and [Uchardet](https://www.linuxfromscratch.org/blfs/view/systemd/general/uchardet.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#grub-dep}GRUB

::::: segmentedlist
[]{#grub-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Diffutils, GCC, Gettext, Glibc, Grep, Make, Ncurses, Sed, Texinfo, and Xz]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grub-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, GCC, Gettext, Glibc, Xz, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grub-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grub-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#grub-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#gzip-dep}Gzip

::::: segmentedlist
[]{#gzip-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gzip-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gzip-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils and Less]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gzip-before}

:::: seglistitem
::: seg
**Must be installed before:** [Man-DB]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#gzip-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#iana-etc-dep}Iana-Etc

::::: segmentedlist
[]{#iana-etc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Coreutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iana-etc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iana-etc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iana-etc-before}

:::: seglistitem
::: seg
**Must be installed before:** [Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iana-etc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#inetutils-dep}Inetutils

::::: segmentedlist
[]{#inetutils-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Grep, Make, Ncurses, Patch, Sed, Texinfo, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#inetutils-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GCC, Glibc, Ncurses, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#inetutils-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#inetutils-before}

:::: seglistitem
::: seg
**Must be installed before:** [Tar]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#inetutils-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#intltool-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Autoconf, Automake, Bash, Glibc, Grep, Perl, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#intltool-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#intltool-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#intltool-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#iproute2-dep}IProute2

::::: segmentedlist
[]{#iproute2-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Bison, Coreutils, Flex, GCC, Glibc, Make, Libcap, Libelf, Linux API Headers, Pkgconf, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iproute2-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Coreutils, Glibc, Libcap, Libelf, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iproute2-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iproute2-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#iproute2-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Berkeley DB](https://www.oracle.com/database/technologies/related/berkeleydb.html){.ulink}, [iptables](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/iptables.html){.ulink}, [libbpf](https://github.com/libbpf/libbpf){.ulink}, [libmnl](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/libmnl.html){.ulink}, and [libtirpc](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/libtirpc.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#jinja2-dep}Jinja2

::::: segmentedlist
[]{#jinja2-depends}

:::: seglistitem
::: seg
**Installation depends on:** [MarkupSafe, Python, Setuptools, and Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#jinja2-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [MarkupSafe and Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#jinja2-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#jinja2-before}

:::: seglistitem
::: seg
**Must be installed before:** [[Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#jinja2-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#kbd-dep}Kbd

::::: segmentedlist
[]{#kbd-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Flex, GCC, Gettext, Glibc, Gzip, Make, Patch, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kbd-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, Coreutils, and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kbd-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kbd-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kbd-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#kmod-dep}Kmod

::::: segmentedlist
[]{#kmod-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bison, Coreutils, Flex, GCC, Gettext, Glibc, Gzip, Make, OpenSSL, Pkgconf, Sed, Xz, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kmod-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Xz, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kmod-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kmod-before}

:::: seglistitem
::: seg
**Must be installed before:** [[Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#kmod-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[scdoc](https://git.sr.ht/~sircmpwn/scdoc/){.ulink} (for man pages)]{.segbody}
:::
::::
:::::

## []{#less-dep}Less

::::: segmentedlist
[]{#less-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, Grep, Make, Ncurses, Pcre2, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#less-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Ncurses]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#less-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#less-before}

:::: seglistitem
::: seg
**Must be installed before:** [Gzip]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#less-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#libcap-dep}Libcap

::::: segmentedlist
[]{#libcap-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Attr, Bash, Binutils, Coreutils, GCC, Glibc, Perl, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libcap-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libcap-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libcap-before}

:::: seglistitem
::: seg
**Must be installed before:** [IProute2 and Shadow]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libcap-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#libelf-dep}Libelf

::::: segmentedlist
[]{#libelf-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bzip2, Coreutils, GCC, Glibc, Make, Xz, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libelf-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bzip2, Glibc, Xz, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libelf-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libelf-before}

:::: seglistitem
::: seg
**Must be installed before:** [IProute2 and Linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libelf-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#libffi-dep}Libffi

::::: segmentedlist
[]{#libffi-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libffi-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libffi-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [DejaGnu]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libffi-before}

:::: seglistitem
::: seg
**Must be installed before:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libffi-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#libpipeline-dep}Libpipeline

::::: segmentedlist
[]{#libpipeline-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libpipeline-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libpipeline-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Pkgconf]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libpipeline-before}

:::: seglistitem
::: seg
**Must be installed before:** [Man-DB]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libpipeline-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#libtool-dep}Libtool

::::: segmentedlist
[]{#libtool-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libtool-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Autoconf, Automake, Bash, Binutils, Coreutils, File, GCC, Glibc, Grep, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libtool-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Autoconf, Automake, and Findutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libtool-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libtool-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#libxcrypt-dep}Libxcrypt

::::: segmentedlist
[]{#libxcrypt-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Perl, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libxcrypt-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libxcrypt-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libxcrypt-before}

:::: seglistitem
::: seg
**Must be installed before:** [Perl, Python, Shadow, and [Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#libxcrypt-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#linux-dep}Linux

::::: segmentedlist
[]{#linux-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Bc, Binutils, Coreutils, Diffutils, Findutils, GCC, Glibc, Grep, Gzip, Kmod, Libelf, Make, Ncurses, OpenSSL, Perl, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [cpio](https://www.linuxfromscratch.org/blfs/view/systemd/general/cpio.html){.ulink}, [LLVM](https://www.linuxfromscratch.org/blfs/view/systemd/general/llvm.html){.ulink} (with Clang), and [Rust-bindgen](https://www.linuxfromscratch.org/blfs/view/systemd/general/rust-bindgen.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#linux-api-headers-dep}Linux API Headers

::::: segmentedlist
[]{#linux-api-headers-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Findutils, GCC, Glibc, Grep, Gzip, Make, Perl, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-api-headers-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-api-headers-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-api-headers-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#linux-api-headers-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#lz4-dep}Lz4

::::: segmentedlist
[]{#lz4-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, and Make]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#lz4-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#lz4-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#lz4-before}

:::: seglistitem
::: seg
**Must be installed before:** [Zstd [and Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#lz4-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#m4-dep}M4

::::: segmentedlist
[]{#m4-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#m4-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#m4-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#m4-before}

:::: seglistitem
::: seg
**Must be installed before:** [Autoconf and Bison]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#m4-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libsigsegv](https://www.linuxfromscratch.org/blfs/view/systemd/general/libsigsegv.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#make-dep}Make

::::: segmentedlist
[]{#make-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#make-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#make-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Perl and Procps-ng]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#make-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#make-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Guile](https://www.linuxfromscratch.org/blfs/view/systemd/general/guile.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#man-db-dep}Man-DB

::::: segmentedlist
[]{#man-db-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bzip2, Coreutils, Flex, GCC, GDBM, Gettext, Glibc, Grep, Groff, Gzip, Less, Libpipeline, Make, Pkgconf, Sed, [Systemd,]{.phrase} and Xz]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-db-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bash, GDBM, Groff, Glibc, Gzip, Less, Libpipeline, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-db-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-db-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-db-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libseccomp](https://www.linuxfromscratch.org/blfs/view/systemd/general/libseccomp.html){.ulink} and [po4a](https://po4a.org/index.php.en){.ulink}]{.segbody}
:::
::::
:::::

## []{#man-pages-dep}Man-Pages

::::: segmentedlist
[]{#man-pages-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Coreutils, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-pages-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-pages-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-pages-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#man-pages-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#markupsafe-dep}MarkupSafe

::::: segmentedlist
[]{#markupsafe-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Python, Setuptools, and Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#markupsafe-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#markupsafe-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#markupsafe-before}

:::: seglistitem
::: seg
**Must be installed before:** [Jinja2]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#markupsafe-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#meson-dep}Meson

::::: segmentedlist
[]{#meson-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Ninja, Python, Setuptools, and Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#meson-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#meson-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#meson-before}

:::: seglistitem
::: seg
**Must be installed before:** [[Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#meson-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#mpc-dep}MPC

::::: segmentedlist
[]{#mpc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, GMP, Make, MPFR, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, GMP, and MPFR]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpc-before}

:::: seglistitem
::: seg
**Must be installed before:** [GCC]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#mpfr-dep}MPFR

::::: segmentedlist
[]{#mpfr-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, GMP, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpfr-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and GMP]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpfr-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpfr-before}

:::: seglistitem
::: seg
**Must be installed before:** [Gawk and GCC]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#mpfr-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#ncurses-dep}Ncurses

::::: segmentedlist
[]{#ncurses-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Grep, Make, Patch, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ncurses-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ncurses-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ncurses-before}

:::: seglistitem
::: seg
**Must be installed before:** [Bash, GRUB, Inetutils, Less, Procps-ng, Psmisc, Readline, Texinfo, Util-linux, and Vim]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ncurses-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#ninja-dep}Ninja

::::: segmentedlist
[]{#ninja-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Binutils, Coreutils, GCC, and Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ninja-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GCC and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ninja-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [ [cmake](https://www.linuxfromscratch.org/blfs/view/systemd/general/cmake.html){.ulink}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ninja-before}

:::: seglistitem
::: seg
**Must be installed before:** [Meson]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#ninja-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Asciidoc](https://www.linuxfromscratch.org/blfs/view/systemd/general/asciidoc.html){.ulink}, [Doxygen](https://www.linuxfromscratch.org/blfs/view/systemd/general/doxygen.html){.ulink}, [Emacs](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/emacs.html){.ulink}, and [re2c](https://re2c.org/){.ulink}]{.segbody}
:::
::::
:::::

## []{#openssl-dep}OpenSSL

::::: segmentedlist
[]{#openssl-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Binutils, Coreutils, GCC, Make, and Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#openssl-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#openssl-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#openssl-before}

:::: seglistitem
::: seg
**Must be installed before:** [Coreutils, Kmod, Linux, and [Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#openssl-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#Packaging-dep}Packaging

::::: segmentedlist
[]{#packaging-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Flit-core and Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#packaging-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#packaging-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#packaging-before}

:::: seglistitem
::: seg
**Must be installed before:** [Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#packaging-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [pytest](https://www.linuxfromscratch.org/blfs/view/systemd/general/python-modules.html#pytest){.ulink}]{.segbody}
:::
::::
:::::

## []{#patch-dep}Patch

::::: segmentedlist
[]{#patch-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Attr, Bash, Binutils, Coreutils, GCC, Glibc, Grep, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#patch-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Attr and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#patch-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#patch-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#patch-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Ed](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/ed.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#pcre2-dep}Pcre2

::::: segmentedlist
[]{#pcre2-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Bzip2, Coreutils, GCC, Glibc, GZip, Make, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pcre2-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pcre2-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Grep]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pcre2-before}

:::: seglistitem
::: seg
**Must be installed before:** [Grep and Less]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pcre2-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Valgrind](https://www.linuxfromscratch.org/blfs/view/systemd/general/valgrind.html){.ulink} and [libedit](https://thrysoee.dk/editline/){.ulink}]{.segbody}
:::
::::
:::::

## []{#perl-dep}Perl

::::: segmentedlist
[]{#perl-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, GDBM, Glibc, Grep, Libxcrypt, Make, Sed, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#perl-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [GDBM, Glibc, and Libxcrypt]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#perl-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Iana-Etc, Less, and Procps-ng]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#perl-before}

:::: seglistitem
::: seg
**Must be installed before:** [Autoconf]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#perl-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Berkeley DB](https://www.oracle.com/database/technologies/related/berkeleydb.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#pkgconf-dep}Pkgconf

::::: segmentedlist
[]{#pkgconf-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, Glibc, Grep, Make, Sed, and Sqlite]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pkgconf-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pkgconf-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pkgconf-before}

:::: seglistitem
::: seg
**Must be installed before:** [Binutils, [D-Bus,]{.phrase} E2fsprogs, IProute2, Kmod, Man-DB, Procps-ng, Python, [Systemd]{.phrase}, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#pkgconf-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#procps-dep}Procps-ng

::::: segmentedlist
[]{#procps-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Make, Ncurses, Pkgconf[, and Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#procps-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#procps-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [DejaGNU]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#procps-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#procps-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[None]{.phrase}]{.segbody}
:::
::::
:::::

## []{#psmisc-dep}Psmisc

::::: segmentedlist
[]{#psmisc-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, Make, Ncurses, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#psmisc-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Ncurses]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#psmisc-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Expect]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#psmisc-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#psmisc-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#python-dep}Python

::::: segmentedlist
[]{#python-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Expat, GCC, Gdbm, Gettext, Glibc, Grep, Libffi, Libxcrypt, Make, Ncurses, OpenSSL, Pkgconf, Sed, Util-linux, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#python-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Bzip2, Expat, Gdbm, Glibc, Libffi, Libxcrypt, Ncurses, OpenSSL, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#python-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [GDB and Valgrind]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#python-before}

:::: seglistitem
::: seg
**Must be installed before:** [Ninja]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#python-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Berkeley DB](https://www.oracle.com/database/technologies/related/berkeleydb.html){.ulink}, [libnsl](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/libnsl.html){.ulink}, [SQLite](https://www.linuxfromscratch.org/blfs/view/systemd/server/sqlite.html){.ulink}, and [Tk](https://www.linuxfromscratch.org/blfs/view/systemd/general/tk.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#readline-dep}Readline

::::: segmentedlist
[]{#readline-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Gawk, GCC, Glibc, Grep, Make, Ncurses, Patch, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#readline-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Ncurses]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#readline-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#readline-before}

:::: seglistitem
::: seg
**Must be installed before:** [Bash, Bc, and Gawk]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#readline-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#sed-dep}Sed

::::: segmentedlist
[]{#sed-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#sed-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Acl, Attr, and Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#sed-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Diffutils and Gawk]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#sed-before}

:::: seglistitem
::: seg
**Must be installed before:** [E2fsprogs, File, Libtool, and Shadow]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#sed-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#setuptools-dep}Setuptools

::::: segmentedlist
[]{#setuptools-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Python and Wheel]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#setuptools-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#setuptools-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#setuptools-before}

:::: seglistitem
::: seg
**Must be installed before:** [Jinja2, MarkupSafe, and Meson]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#setuptools-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#shadow-dep}Shadow

::::: segmentedlist
[]{#shadow-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Acl, Attr, Bash, Binutils, Coreutils, Diffutils, Findutils, Gawk, GCC, Gettext, Glibc, Grep, Libcap, Libxcrypt, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#shadow-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Libxcrypt]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#shadow-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#shadow-before}

:::: seglistitem
::: seg
**Must be installed before:** [Coreutils]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#shadow-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [CrackLib](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/cracklib.html){.ulink} and [Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#Sqlite-dep}Pcre2

::::: segmentedlist
[]{#Sqlite-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, GCC, Glibc, Gzip, Make, Ncurses, and Readline]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#Sqlite-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#Sqlite-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#Sqlite-before}

:::: seglistitem
::: seg
**Must be installed before:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#Sqlite-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [libarchive](https://www.linuxfromscratch.org/blfs/view/systemd/general/libarchive.html){.ulink} and [libedit](https://thrysoee.dk/editline/){.ulink}]{.segbody}
:::
::::
:::::

## []{#systemd-dep}Systemd

::::: segmentedlist
[]{#systemd-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Acl, Bash, Binutils, Coreutils, Diffutils, Gawk, GCC, Glibc, Gperf, Grep, Jinja2, Libxcrypt, Lz4, Meson, OpenSSL, Pcre2, Pkgconf, Sed, Util-linux, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#systemd-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Acl, Glibc, Libxcrypt, OpenSSL, Util-linux, Xz, Zlib, and Zstd]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#systemd-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#systemd-before}

:::: seglistitem
::: seg
**Must be installed before:** [D-Bus, E2fsprogs, Man-DB, Procps-ng, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#systemd-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[AppArmor](https://www.apparmor.net/){.ulink}, [audit-userspace](https://github.com/linux-audit/audit-userspace){.ulink}, [bash-completion](https://github.com/scop/bash-completion){.ulink}, [btrfs-progs](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/btrfs-progs.html){.ulink}, [cURL](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/curl.html){.ulink}, [cryptsetup](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/cryptsetup.html){.ulink}, [docbook-xml](https://www.linuxfromscratch.org/blfs/view/systemd/pst/docbook.html){.ulink}, [docbook-xsl-nons](https://www.linuxfromscratch.org/blfs/view/systemd/pst/docbook-xsl.html){.ulink}, [Git](https://www.linuxfromscratch.org/blfs/view/systemd/general/git.html){.ulink}, [GnuTLS](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/gnutls.html){.ulink}, [iptables](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/iptables.html){.ulink}, [jekyll](https://jekyllrb.com/){.ulink}, [kexec-tools](https://www.kernel.org/pub/linux/utils/kernel/kexec/){.ulink}, [libbpf](https://github.com/libbpf/libbpf){.ulink}, [libdw](https://sourceware.org/elfutils/){.ulink}, [libfido2](https://developers.yubico.com/libfido2/){.ulink}, [libgcrypt](https://www.linuxfromscratch.org/blfs/view/systemd/general/libgcrypt.html){.ulink}, [libidn2](https://www.linuxfromscratch.org/blfs/view/systemd/general/libidn2.html){.ulink}, [libmicrohttpd](https://www.gnu.org/software/libmicrohttpd/){.ulink}, [libpwquality](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/libpwquality.html){.ulink}, [libseccomp](https://www.linuxfromscratch.org/blfs/view/systemd/general/libseccomp.html){.ulink}, [libxkbcommon](https://www.linuxfromscratch.org/blfs/view/systemd/general/libxkbcommon.html){.ulink}, [libxslt](https://www.linuxfromscratch.org/blfs/view/systemd/general/libxslt.html){.ulink}, [Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink}, [lxml](https://www.linuxfromscratch.org/blfs/view/systemd/general/python-modules.html#lxml){.ulink}, [make-ca](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/make-ca.html){.ulink}, [p11-kit](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/p11-kit.html){.ulink}, [pefile](https://pypi.org/projectpefile){.ulink}, [Polkit](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/polkit.html){.ulink}, [pyelftools](https://pypi.org/project/pyelftools){.ulink}, [qemu](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/qemu.html){.ulink}, [qrencode](https://www.linuxfromscratch.org/blfs/view/systemd/general/qrencode.html){.ulink}, [quota-tools](https://sourceforge.net/projects/linuxquota/){.ulink}, [rpm](https://rpm.org){.ulink}, [rsync](https://www.linuxfromscratch.org/blfs/view/systemd/basicnet/rsync.html){.ulink}, [SELinux](https://github.com/SELinuxProject/selinux){.ulink}, [Sphinx](https://www.linuxfromscratch.org/blfs/view/systemd/general/python-modules.html#sphinx){.ulink}, [systemtap](https://sourceware.org/systemtap/){.ulink}, [tpm2-tss](https://tpm2-tss.readthedocs.io/en/latest/){.ulink}, [Valgrind](https://www.linuxfromscratch.org/blfs/view/systemd/general/valgrind.html){.ulink}, [Xen](https://xenproject.org){.ulink}, and [zsh](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/zsh.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#tar-dep}Tar

::::: segmentedlist
[]{#tar-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Acl, Attr, Bash, Binutils, Bison, Coreutils, GCC, Gettext, Glibc, Grep, Inetutils, Make, Sed, and Texinfo]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tar-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Acl, Attr, Bzip2, Glibc, Gzip, and Xz]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tar-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Autoconf, Diffutils, Findutils, Gawk, and Gzip]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tar-befors}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tar-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#tcl-dep}Tcl

::::: segmentedlist
[]{#tcl-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, Grep, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tcl-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tcl-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tcl-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#tcl-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#texinfo-dep}Texinfo

::::: segmentedlist
[]{#texinfo-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Gettext, Glibc, Grep, Make, Ncurses, Patch, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#texinfo-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc and Ncurses]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#texinfo-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#texinfo-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#texinfo-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [SWIG]{.segbody}
:::
::::
:::::

## []{#util-linux-dep}Util-linux

::::: segmentedlist
[]{#util-linux-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, File, Findutils, Gawk, GCC, Gettext, Glibc, Grep, Make, Ncurses, Pkgconf, Sed, [Systemd]{.phrase}, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#util-linux-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc, Ncurses, Readline, [Systemd]{.phrase}, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#util-linux-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#util-linux-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#util-linux-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Asciidoctor](https://www.linuxfromscratch.org/blfs/view/systemd/general/asciidoctor.html){.ulink}, [Libcap-NG](https://people.redhat.com/sgrubb/libcap-ng/){.ulink}, [libeconf](https://github.com/openSUSE/libeconf){.ulink}, [libuser](https://pagure.io/libuser/){.ulink}, [libutempter](https://github.com/altlinux/libutempter){.ulink}, [Linux-PAM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/linux-pam.html){.ulink}, [smartmontools](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/smartmontools.html){.ulink}, [po4a](https://po4a.org/index.php.en){.ulink}, and [slang](https://www.linuxfromscratch.org/blfs/view/systemd/general/slang.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#vim-dep}Vim

::::: segmentedlist
[]{#vim-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Acl, Attr, Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, Grep, Make, Ncurses, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#vim-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Acl, Attr, Glibc, Python, Ncurses, and Tcl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#vim-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#vim-before}

:::: seglistitem
::: seg
**Must be installed before:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#vim-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [ [Xorg](https://www.linuxfromscratch.org/blfs/view/systemd/x/installing.html){.ulink}, [GTK+2](https://www.linuxfromscratch.org/blfs/view/systemd/x/gtk2.html){.ulink}, [LessTif](https://lesstif.sourceforge.net/){.ulink}, [Ruby](https://www.linuxfromscratch.org/blfs/view/systemd/general/ruby.html){.ulink}, and [GPM](https://www.linuxfromscratch.org/blfs/view/systemd/general/gpm.html){.ulink}]{.segbody}
:::
::::
:::::

## []{#wheel-dep}Wheel

::::: segmentedlist
[]{#wheel-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Python, Flit-core, and packaging]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#wheel-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Python]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#wheel-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [No test suite available]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#wheel-before}

:::: seglistitem
::: seg
**Must be installed before:** [Jinja2, MarkupSafe, Meson, and Setuptools]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#wheel-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xml-parser-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Expat, Glibc, and Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xml-parser-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [Perl]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xml-parser-before}

:::: seglistitem
::: seg
**Must be installed before:** [Intltool]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xml-parser-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [[LWP::UserAgent](https://metacpan.org/pod/LWP::UserAgent){.ulink}]{.segbody}
:::
::::
:::::

## []{#xz-dep}Xz

::::: segmentedlist
[]{#xz-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, Diffutils, GCC, Glibc, and Make]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xz-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xz-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xz-before}

:::: seglistitem
::: seg
**Must be installed before:** [File, GRUB, Kmod, Libelf, Man-DB, and [Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#xz-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#zlib-dep}Zlib

::::: segmentedlist
[]{#zlib-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Bash, Binutils, Coreutils, GCC, Glibc, Make, and Sed]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zlib-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zlib-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zlib-before}

:::: seglistitem
::: seg
**Must be installed before:** [File, Kmod, Libelf, Perl, and Util-linux]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zlib-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::

## []{#zstd-dep}Zstd

::::: segmentedlist
[]{#zstd-depends}

:::: seglistitem
::: seg
**Installation depends on:** [Binutils, Coreutils, GCC, Glibc, Gzip, Lz4, Make, Xz, and Zlib]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zstd-rundeps}

:::: seglistitem
::: seg
**Required at runtime:** [Glibc]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zstd-testdeps}

:::: seglistitem
::: seg
**Test suite depends on:** [None]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zstd-before}

:::: seglistitem
::: seg
**Must be installed before:** [Binutils, File, GCC, Kmod, Libelf, Python, and [Systemd]{.phrase}]{.segbody}
:::
::::
:::::

::::: segmentedlist
[]{#zstd-optdeps}

:::: seglistitem
::: seg
**Optional dependencies:** [None]{.segbody}
:::
::::
:::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](acknowledgments.md "Acknowledgments"){accesskey="p"}

    Acknowledgments

-   [Next](licenses.md "LFS Licenses"){accesskey="n"}

    LFS Licenses

-   [Up](../part5.md "Part V. Appendices"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

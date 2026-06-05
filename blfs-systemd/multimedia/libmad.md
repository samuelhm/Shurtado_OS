::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdv.md "Libdv-1.0.0"){accesskey="p"}

    Libdv-1.0.0

-   [Next](libmpeg2.md "libmpeg2-0.5.1"){accesskey="n"}

    libmpeg2-0.5.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmad}libmad-0.15.1b {#libmad-0.15.1b .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libmad {#introduction-to-libmad .sect2}

[libmad]{.application} is a high-quality MPEG audio decoder capable of 24-bit output.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz](https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz){.ulink}

-   Download MD5 sum: 1be543bc30c56fb6bea1d7bf6a64e66c

-   Download size: 491 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libmad-0.15.1b-fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libmad-0.15.1b-fixes-1.patch){.ulink}
:::
::::::

::: {.installation lang="en"}
## Installation of libmad {#installation-of-libmad .sect2}

Install [libmad]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../libmad-0.15.1b-fixes-1.patch                &&
sed "s@AM_CONFIG_HEADER@AC_CONFIG_HEADERS@g" -i configure.ac &&
touch NEWS AUTHORS ChangeLog                                 &&
autoreconf -fi                                               &&

./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Some packages check for the [pkg-config]{.application} file for [libmad]{.application}. This file is particularly needed so that [Cdrdao]{.application} can recognize the installed [libmad]{.application}.

As the `root`{.systemitem} user:

``` root
cat > /usr/lib/pkgconfig/mad.pc << "EOF"
prefix=/usr
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: mad
Description: MPEG audio decoder
Requires:
Version: 0.15.1b
Libs: -L${libdir} -lmad
Cflags: -I${includedir}
EOF
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**touch NEWS AUTHORS ChangeLog**]{.command}: Prevent autoreconf from returning an error.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libmad.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------
  []{#libmad-lib}[`libmad.so`{.filename}]{.term}   is a MPEG audio decoder library
  ------------------------------------------------ ---------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libdv.md "Libdv-1.0.0"){accesskey="p"}

    Libdv-1.0.0

-   [Next](libmpeg2.md "libmpeg2-0.5.1"){accesskey="n"}

    libmpeg2-0.5.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

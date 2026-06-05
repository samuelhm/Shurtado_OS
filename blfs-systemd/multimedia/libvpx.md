::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libvorbis.md "libvorbis-1.3.7"){accesskey="p"}

    libvorbis-1.3.7

-   [Next](mlt.md "MLT-7.38.0"){accesskey="n"}

    MLT-7.38.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libvpx}libvpx-1.16.0 {#libvpx-1.16.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to libvpx {#introduction-to-libvpx .sect2}

This package, from the WebM project, provides the reference implementations of the VP8 Codec (used in most current HTML5 video) and of the next-generation VP9 Codec.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/webmproject/libvpx/archive/v1.16.0/libvpx-1.16.0.tar.gz](https://github.com/webmproject/libvpx/archive/v1.16.0/libvpx-1.16.0.tar.gz){.ulink}

-   Download MD5 sum: fb51551487ecfdec93f3d243b7fb1a67

-   Download size: 5.4 MB

-   Estimated disk space required: 73 MB (add 1.7 GB for tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add approx 11 SBU for tests using parallelism=4, including download time)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libvpx-1.16.0-security_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libvpx-1.16.0-security_fix-1.patch){.ulink}
:::

### libvpx Dependencies

#### Recommended

[yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref} or [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, and [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref} (so [**configure**]{.command} can find yasm)

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} (to download test files) and [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to build documentation)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
:::::::

::: {.installation lang="en"}
## Installation of libvpx {#installation-of-libvpx .sect2}

If upgrading from a previous version of libvpx, update the timestamps of all the files to prevent the build system from retaining the files from the old installation:

``` userinput
find -type f | xargs touch
```

Next, fix a security vulnerability:

``` userinput
patch -Np1 -i ../libvpx-1.16.0-security_fix-1.patch
```

Install [libvpx]{.application} by running the following commands:

``` userinput
sed -i 's/cp -p/cp/' build/make/Makefile &&

mkdir libvpx-build            &&
cd    libvpx-build            &&

../configure --prefix=/usr    \
             --enable-shared  \
             --disable-static &&
make
```

To test the results, issue: [**LD_LIBRARY_PATH=. make test**]{.command}. The test suite downloads many files as part of its test process. A few parts of it will use all available cores.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ...**]{.command} : This command corrects the ownership and permissions of installed files.

[**mkdir libvpx-build && cd libvpx-build**]{.command}: The [libvpx]{.application} developers recommend building in a dedicated build directory.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--disable-vp8`{.option}: This switch prevents building support for the VP8 codec.

`--disable-vp9`{.option}: This switch prevents building support for the VP9 codec.

`--target=generic-gnu`{.option}: This switch disables optimizations specific to x86 and x86-64, allowing to build this package without [**nasm**]{.command} and [**yasm**]{.command} installed.

[**LD_LIBRARY_PATH=.**]{.command}: This is needed for the test suite to use the library that was just built.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [vpxdec and vpxenc]{.segbody}
:::

::: seg
**Installed Libraries:** [libvpx.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/vpx]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------
  []{#vpxdec}[[**vpxdec**]{.command}]{.term}       is the WebM Project VP8 and VP9 decoder
  []{#vpxenc}[[**vpxenc**]{.command}]{.term}       is the WebM project VP8 and VP9 encoder
  []{#libvpx-lib}[`libvpx.so`{.filename}]{.term}   provides functions to use the VP8 and VP9 video codecs
  ------------------------------------------------ --------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libvorbis.md "libvorbis-1.3.7"){accesskey="p"}

    libvorbis-1.3.7

-   [Next](mlt.md "MLT-7.38.0"){accesskey="n"}

    MLT-7.38.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

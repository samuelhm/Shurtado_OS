::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libheif.md "libheif-1.23.0"){accesskey="p"}

    libheif-1.23.0

-   [Next](libjxl.md "libjxl-0.11.2"){accesskey="n"}

    libjxl-0.11.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libjpeg}libjpeg-turbo-3.1.4.1 {#libjpeg-turbo-3.1.4.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libjpeg-turbo {#introduction-to-libjpeg-turbo .sect2}

[libjpeg-turbo]{.application} is a fork of the original IJG [libjpeg]{.application} which uses SIMD to accelerate baseline JPEG compression and decompression. [libjpeg]{.application} is a library that implements JPEG image encoding, decoding and transcoding.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/3.1.4.1/libjpeg-turbo-3.1.4.1.tar.gz](https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/3.1.4.1/libjpeg-turbo-3.1.4.1.tar.gz){.ulink}

-   Download MD5 sum: 997f868afac9f358a098617d16f36167

-   Download size: 2.5 MB

-   Estimated disk space required: 58 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests; both using parallelism=4)
:::

### libjpeg-turbo Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[NASM-3.01](nasm.md "NASM-3.01"){.xref} or [yasm-1.3.0](yasm.md "yasm-1.3.0"){.xref} (for building the package with optimized assembly routine)
:::::

::: {.installation lang="en"}
## Installation of libjpeg-turbo {#installation-of-libjpeg-turbo .sect2}

Install [libjpeg-turbo]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=RELEASE         \
      -D ENABLE_STATIC=FALSE              \
      -D CMAKE_INSTALL_DEFAULT_LIBDIR=lib \
      -D CMAKE_SKIP_INSTALL_RPATH=ON      \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/libjpeg-turbo-3.1.4.1 \
      .. &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

`-D WITH_JPEG8=ON`{.option}: This switch enables compatibility with [libjpeg]{.application} version 8.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cjpeg, djpeg, jpegtran, rdjpgcom, tjbench, and wrjpgcom]{.segbody}
:::

::: seg
**Installed Libraries:** [libjpeg.so and libturbojpeg.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/libjpeg-turbo-3.1.4.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cjpeg}[[**cjpeg**]{.command}]{.term}           compresses image files to produce a JPEG/JFIF file on the standard output. Currently supported input file formats are: PPM (PBMPLUS color format), PGM (PBMPLUS gray-scale format), BMP, and Targa
  []{#djpeg}[[**djpeg**]{.command}]{.term}           decompresses image files from JPEG/JFIF format to either PPM (PBMPLUS color format), PGM (PBMPLUS gray-scale format), BMP, or Targa format
  []{#jpegtran}[[**jpegtran**]{.command}]{.term}     is used for lossless transformation of JPEG files
  []{#rdjpgcom}[[**rdjpgcom**]{.command}]{.term}     displays text comments from within a JPEG file
  []{#tjbench}[[**tjbench**]{.command}]{.term}       is used to benchmark the performance of libjpeg-turbo
  []{#wrjpgcom}[[**wrjpgcom**]{.command}]{.term}     inserts text comments into a JPEG file
  []{#libjpeg-lib}[`libjpeg.so`{.filename}]{.term}   contains functions used for reading and writing JPEG images
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libheif.md "libheif-1.23.0"){accesskey="p"}

    libheif-1.23.0

-   [Next](libjxl.md "libjxl-0.11.2"){accesskey="n"}

    libjxl-0.11.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcdio.md "libcdio-2.1.0"){accesskey="p"}

    libcdio-2.1.0

-   [Next](libdvdcss.md "libdvdcss-1.5.0"){accesskey="n"}

    libdvdcss-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libde265}libde265-1.1.0 {#libde265-1.1.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libde265 {#introduction-to-libde265 .sect2}

The [libde265]{.application} package contains an open source H.265 video codec implementation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/strukturag/libde265/releases/download/v1.1.0/libde265-1.1.0.tar.gz](https://github.com/strukturag/libde265/releases/download/v1.1.0/libde265-1.1.0.tar.gz){.ulink}

-   Download MD5 sum: 8a9a42267ed5e0093d05e841b7483f15

-   Download size: 288 KB

-   Estimated disk space required: 7.1 MB

-   Estimated build time: 0.2 SBU
:::

### libde265 Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Optional

[sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref} (for YUV overlay output support of [**dec265**]{.command}), both [Qt 5](https://linuxfromscratch.org/blfs/view/12.2/x/qt5-components.md){.ulink} and [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref} (for building [**sherlock265**]{.command})
:::::

::: {.installation lang="en"}
## Installation of libde265 {#installation-of-libde265 .sect2}

Install [libde265]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [dec265]{.segbody}
:::

::: seg
**Installed Library:** [libde265.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libde265]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------
  []{#dec265}[[**dec265**]{.command}]{.term}           decodes H.265 data (a raw bitstream of a stream with NAL units)
  []{#libde265-lib}[`libde265.so`{.filename}]{.term}   contains an H.265 video decoder
  ---------------------------------------------------- -----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libcdio.md "libcdio-2.1.0"){accesskey="p"}

    libcdio-2.1.0

-   [Next](libdvdcss.md "libdvdcss-1.5.0"){accesskey="n"}

    libdvdcss-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

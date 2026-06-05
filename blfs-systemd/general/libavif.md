::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](lcms2.md "Little CMS-2.19.1"){accesskey="p"}

    Little CMS-2.19.1

-   [Next](libexif.md "libexif-0.6.26"){accesskey="n"}

    libexif-0.6.26

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libavif}libavif-1.4.2 {#libavif-1.4.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libavif {#introduction-to-libavif .sect2}

The [libavif]{.application} package contains a library used for encoding and decoding AVIF files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/AOMediaCodec/libavif/archive/v1.4.2/libavif-1.4.2.tar.gz](https://github.com/AOMediaCodec/libavif/archive/v1.4.2/libavif-1.4.2.tar.gz){.ulink}

-   Download MD5 sum: 10007cf6a4d1cb7304146161e5ebf4da

-   Download size: 14 MB

-   Estimated disk space required: 144 MB

-   Estimated build time: less than 0.1 SBU
:::

### libavif Dependencies

#### Required

[dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref} and [SVT-AV1-4.1.0](../multimedia/svt-av1.md "SVT-AV1-4.1.0"){.xref} (only supports YUV420)

#### Recommended

[libaom-3.14.1](../multimedia/libaom.md "libaom-3.14.1"){.xref} (for chroma subsampling outside YUV420)

#### Optional

[gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [gtest](https://github.com/google/googletest){.ulink}, [libyuv](https://chromium.googlesource.com/libyuv/libyuv/){.ulink}, and [rav1e](https://github.com/xiph/rav1e){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of libavif {#installation-of-libavif .sect2}

Install [libavif]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D AVIF_CODEC_AOM=SYSTEM     \
      -D AVIF_CODEC_DAV1D=SYSTEM   \
      -D AVIF_CODEC_SVT=SYSTEM     \
      -D AVIF_BUILD_GDK_PIXBUF=OFF \
      -D AVIF_LIBYUV=OFF           \
      -G Ninja .. &&
ninja
```

To test the package (note that it will cause the build system to download a copy of [gtest](https://github.com/google/googletest){.ulink} and build the test suite with the copy), issue:

``` userinput
cmake .. -D AVIF_GTEST=LOCAL -D AVIF_BUILD_TESTS=ON &&
ninja && ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D AVIF_CODEC_{AOM,DAV1D,SVT}=SYSTEM`*: These switches enable using the AV1 codec via dav1d, libaom, and SVT-AV1. This package is useless without an AV1 encoder and decoder.

*`-D AVIF_BUILD_GDK_PIXBUF=OFF`*: This switch disables building the AVIF loader for applications which use gdk-pixbuf. The loader is useless when gdk-pixbuf is built with its recommended dependency glycin.

`-D AVIF_LIBYUV=OFF`{.option}: Use this switch if you have not installed [libyuv](https://chromium.googlesource.com/libyuv/libyuv/){.ulink}.

`-D AVIF_CODEC_RAV1E=SYSTEM`{.option}: Use this switch if you have installed [rav1e](https://github.com/xiph/rav1e){.ulink} and wish to use it as a codec.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libavif.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/avif and /usr/lib/cmake/libavif]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
  []{#libavif-lib}[`libavif.so`{.filename}]{.term}                         contains functions that provide a portable C implementation of the AV1 Image Format
  []{#libpixbufloader-avif}[`libpixbufloader-avif.so`{.filename}]{.term}   allows applications which use gdk-pixbuf to read AVIF images
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](lcms2.md "Little CMS-2.19.1"){accesskey="p"}

    Little CMS-2.19.1

-   [Next](libexif.md "libexif-0.6.26"){accesskey="n"}

    libexif-0.6.26

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libgxps.md "libgxps-0.3.2"){accesskey="p"}

    libgxps-0.3.2

-   [Next](libjpeg.md "libjpeg-turbo-3.1.4.1"){accesskey="n"}

    libjpeg-turbo-3.1.4.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libheif}libheif-1.23.0 {#libheif-1.23.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libheif {#introduction-to-libheif .sect2}

The [libheif]{.application} package is an HEIF and AVIF file format decoder and encoder.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/strukturag/libheif/releases/download/v1.23.0/libheif-1.23.0.tar.gz](https://github.com/strukturag/libheif/releases/download/v1.23.0/libheif-1.23.0.tar.gz){.ulink}

-   Download MD5 sum: 4da401e36c861c5adfe61225e0dcdd61

-   Download size: 2.0 MB

-   Estimated disk space required: 48 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests, parallelism=4)
:::

### libheif Dependencies

#### Recommended

[libaom-3.14.1](../multimedia/libaom.md "libaom-3.14.1"){.xref}, [libde265-1.1.0](../multimedia/libde265.md "libde265-1.1.0"){.xref}, and [x265-4.2](../multimedia/x265.md "x265-4.2"){.xref}

#### Optional

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref}, [dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [OpenJPEG-2.5.4](openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref}, [SVT-AV1-4.1.0](../multimedia/svt-av1.md "SVT-AV1-4.1.0"){.xref}, [x264-20250815](../multimedia/x264.md "x264-20250815"){.xref}, [kvaaar](https://github.com/ultravideo/kvazaar){.ulink}, [openh264](https://www.openh264.org/){.ulink}, [openjph](https://github.com/aous72/OpenJPH){.ulink}, [uvg266](https://github.com/ultravideo/uvg266){.ulink}, [vvdec](https://github.com/fraunhoferhhi/vvdec){.ulink}, [vvenc](https://github.com/fraunhoferhhi/vvenc){.ulink}, and [rav1e](https://github.com/xiph/rav1e){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libheif {#installation-of-libheif .sect2}

Install [libheif]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D WITH_GDK_PIXBUF=OFF       \
      -D WITH_OpenH264_DECODER=OFF \
      -G Ninja ..                  &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D WITH_GDK_PIXBUF=OFF`*: This option disables building the gdk-pixbuf loader, as [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref} is supposed to use this package via [glycin-2.1.1](glycin.md "glycin-2.1.1"){.xref} instead of the loader.

`-D WITH_DAV1D=ON`{.option}: This option allows using [dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref} to decode AV1 data in AVIF files.

`-D WITH_FFMPEG_DECODER=ON`{.option}: This option allows using [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref} to decode H.265 data in HEIC files.

`-D WITH_JPEG_ENCODER=ON -D WITH_JPEG_DECODER=ON`{.option}: These options allow using [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} to encode and decode HEIF files with JPEG data.

`-D WITH_OpenJPEG_ENCODER=ON -D WITH_OpenJPEG_DECODER=ON`{.option}: These options allow using [OpenJPEG-2.5.4](openjpeg2.md "OpenJPEG-2.5.4"){.xref} to encode and decode HEIF files with JPEG 2000 data.

`-D WITH_SvtEnc=ON`{.option}: This option allows using [SVT-AV1-4.1.0](../multimedia/svt-av1.md "SVT-AV1-4.1.0"){.xref} to encode AV1 data for AVIF files.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [heif-convert (symlink to heif-dec), heif-dec, heif-enc, heif-info, heif-thumbnailer (if libpng is available), and heif-view (if SDL2 is available)]{.segbody}
:::

::: seg
**Installed Library:** [libheif.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libheif, /usr/lib/libheif, and /usr/lib/cmake/libheif]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
  []{#heif-dec}[[**heif-dec**]{.command}]{.term}                   decodes a HEIC/HEIF image
  []{#heif-enc}[[**heif-enc**]{.command}]{.term}                   converts an image to HEIC/HEIF
  []{#heif-info}[[**heif-info**]{.command}]{.term}                 shows information about a HEIC/HEIF file
  []{#heif-thumbnailer}[[**heif-thumbnailer**]{.command}]{.term}   creates thumbnails from HEIC/HEIF files
  []{#heif-view}[[**heif-view**]{.command}]{.term}                 displays an image in HEIC/HEIF format with SDL2
  []{#libheif-lib}[`libheif.so`{.filename}]{.term}                 is an ISO/IEC 23008-12:2017 HEIF and AVIF (AV1 Image File Format) file format decoder and encoder
  ---------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgxps.md "libgxps-0.3.2"){accesskey="p"}

    libgxps-0.3.2

-   [Next](libjpeg.md "libjpeg-turbo-3.1.4.1"){accesskey="n"}

    libjpeg-turbo-3.1.4.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

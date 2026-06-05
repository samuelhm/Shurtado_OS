::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libtiff.md "libtiff-4.7.1"){accesskey="p"}

    libtiff-4.7.1

-   [Next](mypaint-brushes.md "mypaint-brushes-2.0.2"){accesskey="n"}

    mypaint-brushes-2.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libwebp}libwebp-1.6.0 {#libwebp-1.6.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libwebp {#introduction-to-libwebp .sect2}

The [libwebp]{.application} package contains a library and support programs to encode and decode images in WebP format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz](https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz){.ulink}

-   Download MD5 sum: cceb6447180f961473b181c9ef38b630

-   Download size: 4.1 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: 0.3 SBU
:::

### libwebp Dependencies

#### Recommended

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, and [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref} (for improved 3D Acceleration)

#### Optional

[Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref} and [giflib-6.1.3](giflib.md "giflib-6.1.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libwebp {#installation-of-libwebp .sect2}

Install [libwebp]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr           \
            --enable-libwebpmux     \
            --enable-libwebpdemux   \
            --enable-libwebpdecoder \
            --enable-libwebpextras  \
            --enable-swap-16bit-csp \
            --disable-static        &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-swap-16bit-csp`*: This switch enables byte swap for 16 bit colorspaces.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cwebp, dwebp, gif2webp, img2webp, vwebp, webpinfo, and webpmux]{.segbody}
:::

::: seg
**Installed Library:** [libsharpyuv.so, libwebpdecoder.so, libwebpdemux.so, libwebpmux.so, and libwebp.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/webp]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cwebp}[[**cwebp**]{.command}]{.term}           compresses an image using the WebP format
  []{#dwebp}[[**dwebp**]{.command}]{.term}           decompresses WebP files into PNG, PAM, PPM or PGM images
  []{#gif2webp}[[**gif2webp**]{.command}]{.term}     converts a GIF image to a WebP image
  []{#img2webp}[[**img2webp**]{.command}]{.term}     creates an animated WebP file from a sequence of input images
  []{#vwebp}[[**vwebp**]{.command}]{.term}           decompresses a WebP file and displays it in a window
  []{#webpinfo}[[**webpinfo**]{.command}]{.term}     prints out the cunk level structure of WebP files along with performing basic integrity checks
  []{#webpmux}[[**webpmux**]{.command}]{.term}       creates animated WebP files from non-animated WebP images, extracts frames from animated WebP images, and manages XMP/EXIF metadata and the ICC profile
  []{#libwebp-lib}[`libwebp.so`{.filename}]{.term}   contains the API functions for WebP encoding and decoding
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libtiff.md "libtiff-4.7.1"){accesskey="p"}

    libtiff-4.7.1

-   [Next](mypaint-brushes.md "mypaint-brushes-2.0.2"){accesskey="n"}

    mypaint-brushes-2.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

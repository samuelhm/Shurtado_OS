::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libvpx.md "libvpx-1.16.0"){accesskey="p"}

    libvpx-1.16.0

-   [Next](opus.md "Opus-1.6.1"){accesskey="n"}

    Opus-1.6.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mlt}MLT-7.38.0 {#mlt-7.38.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to MLT {#introduction-to-mlt .sect2}

The [MLT]{.application} package is the Media Lovin Toolkit. It is an open source multimedia framework, designed and developed for television broadcasting. It provides a toolkit for broadcasters, video editors, media players, transcoders, web streamers and many more types of applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mltframework/mlt/releases/download/v7.38.0/mlt-7.38.0.tar.gz](https://github.com/mltframework/mlt/releases/download/v7.38.0/mlt-7.38.0.tar.gz){.ulink}

-   Download MD5 sum: 20de3730ac25953d93ad5c9b71b22a82

-   Download size: 6.4 MB

-   Estimated disk space required: 54 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### MLT Dependencies

#### Recommended

[FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, [frei0r-3.1.3](frei0r.md "frei0r-3.1.3"){.xref}, [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref}, [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref}, [opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref}, [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref}, [SWIG-4.4.1](../general/swig.md "SWIG-4.4.1"){.xref}, [eigen](https://eigen.tuxfamily.org){.ulink}, [JACK](https://jackaudio.org){.ulink}, [LADSPA-SDK](https://glfs-book.github.io/slfs/general/ladspa-sdk.md){.ulink}, [libebur128](https://github.com/jiixyj/libebur128/){.ulink}, [movit](https://movit.sesse.net){.ulink}, [rtaudio](https://github.com/thestk/rtaudio/){.ulink}, [rubberband](https://glfs-book.github.io/slfs/general/rubberband.md){.ulink}, [SoX](https://sox.sourceforge.net/){.ulink}, and [vid.stab](http://public.hronopik.de/vid.stab/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of MLT {#installation-of-mlt .sect2}

Install [MLT]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D MOD_SOX=OFF               \
      -D MOD_MOVIT=OFF             \
      -D MOD_VIDSTAB=OFF           \
      -D MOD_JACKRACK=OFF          \
      -D MOD_RUBBERBAND=OFF        \
      -W no-dev .. &&
make
```

This package does not come with a test suite. However a test .mp4 file can be played in a local graphical environment with [**./out/bin/melt \<filename\>.mp4**]{.command}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This application uses advanced graphical capabilities. In some cases, firmware for your specific graphics adaptor may be needed. See [the section called “Firmware for Video Cards”](../postlfs/firmware.md#video-firmware "Firmware for Video Cards"){.xref} for more information.
:::

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D MOD_*=OFF`*: These switches allow the package to build without some of the optional external packages.

`-D MOD_AVFORMAT=OFF`{.option}: This option allows building without [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}.

`-D MOD_FREI0R=OFF`{.option}: This option allows building without [frei0r-3.1.3](frei0r.md "frei0r-3.1.3"){.xref}.

`-D MOD_RESAMPLE=OFF`{.option}: This option allows building without [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}.

`-D MOD_QT6=OFF`{.option}: This option allows building without [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}.

`-D MOD_OPENCV=ON`{.option}: This option allows building some additional modules that use [opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [melt-7 and melt (symlink to melt-7)]{.segbody}
:::

::: seg
**Installed Libraries:** [libmlt-7.so, libmlt++-7.so, and over twenty plugins]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/mlt-7, /usr/lib/mlt-7, /usr/lib/cmake/Mlt7, and /usr/share/mlt-7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------- ------------------------
  []{#melt}[[**melt**]{.command}]{.term}   is a test tool for MLT
  ---------------------------------------- ------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libvpx.md "libvpx-1.16.0"){accesskey="p"}

    libvpx-1.16.0

-   [Next](opus.md "Opus-1.6.1"){accesskey="n"}

    Opus-1.6.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

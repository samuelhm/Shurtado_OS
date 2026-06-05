::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkcddb.md "libkcddb-26.04.1"){accesskey="p"}

    libkcddb-26.04.1

-   [Next](add-pkgs.md "Further KDE packages"){accesskey="n"}

    Further KDE packages

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#k3b}k3b-26.04.1 {#k3b-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to K3b {#introduction-to-k3b .sect2}

The [K3b]{.application} package contains a KDE Frameworks-based graphical interface to the [Cdrtools]{.application} and [dvd+rw-tools]{.application} CD/DVD manipulation tools. It also combines the capabilities of many other multimedia packages into one central interface to provide a simple-to-operate application that can be used to handle many of your CD/DVD recording and formatting requirements. It is used for creating audio, data, video and mixed-mode CDs as well as copying, ripping and burning CDs and DVDs.

Though [k3b]{.application} can be used to copy almost any DVD to similar medium, it does not provide a way to copy, or reproduce a dual-layer DVD onto a single-layer disk. Of course, there is not a program anywhere on any platform that can make an exact duplicate of a dual-layer DVD onto a single-layer disk, but there are programs on some platforms that can compress the data on a dual-layer DVD to fit on a single-layer DVD producing a duplicate, but compressed, image. If you need to copy the contents of a double-layer DVD to a single-layer disk, you may want to look at the [RMLCopyDVD](http://www.mcmurchy.com/rmlcopydvd/){.ulink} package.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/k3b-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/k3b-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: a5d7f8014cebb01179636d7dc6a899c2

-   Download size: 10 MB

-   Estimated disk space required: 145 MB

-   Estimated build time: 1.3 SBU (using parallelism=4)
:::

### K3b Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [libkcddb-26.04.1](libkcddb.md "libkcddb-26.04.1"){.xref}, [libsamplerate-0.2.2](../multimedia/libsamplerate.md "libsamplerate-0.2.2"){.xref}, and [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref}

The CD/DVD drive is detected at run time using [UDisks-2.11.1](../general/udisks2.md "UDisks-2.11.1"){.xref}, which must therefore be installed before running [**k3b**]{.command}.

#### Recommended

[libburn-1.5.8](../multimedia/libburn.md "libburn-1.5.8"){.xref}, [libdvdread-7.0.1](../multimedia/libdvdread.md "libdvdread-7.0.1"){.xref}, and [taglib-2.3](../multimedia/taglib.md "Taglib-2.3"){.xref}

There are programs from three packages that [k3b]{.application} will look for at runtime: [Cdrtools-3.02a09](../multimedia/cdrtools.md "Cdrtools-3.02a09"){.xref} (required to burn CD-ROM media), [dvd+rw-tools-7.1](../multimedia/dvd-rw-tools.md "dvd+rw-tools-7.1"){.xref} (required to burn or format DVD media), and [Cdrdao-1.2.6](../multimedia/cdrdao.md "Cdrdao-1.2.6"){.xref} (required to burn CD-ROM media in DAO (Disk At Once) mode). If you don't need the capabilities provided by any of the three packages, you don't have to install them. However, a warning message will be generated every time you run the [**k3b**]{.command} program if any of them are not installed.

#### Optional Runtime

[FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}

#### Optional

[FLAC-1.5.0](../multimedia/flac.md "FLAC-1.5.0"){.xref}, [LAME-3.100](../multimedia/lame.md "LAME-3.100"){.xref}, [libmad-0.15.1b](../multimedia/libmad.md "libmad-0.15.1b"){.xref}, [libsndfile-1.2.2](../multimedia/libsndfile.md "libsndfile-1.2.2"){.xref}, [libvorbis-1.3.7](../multimedia/libvorbis.md "libvorbis-1.3.7"){.xref}, and [Musepack (libmpcdec)](https://www.musepack.net/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of K3b {#installation-of-k3b .sect2}

Install [K3b]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev ..                        &&
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
**Installed Programs:** [k3b]{.segbody}
:::

::: seg
**Installed Libraries:** [libk3bdevice.so, libk3blib.so, and numerous plugin modules for the installed dependencies]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/k3b and \$KF6_PREFIX/share/doc/HTML/\*/k3b]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- --------------------------------------------
  []{#k3b-prog}[[**k3b**]{.command}]{.term}   is a graphical CD/DVD manipulation program
  ------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libkcddb.md "libkcddb-26.04.1"){accesskey="p"}

    libkcddb-26.04.1

-   [Next](add-pkgs.md "Further KDE packages"){accesskey="n"}

    Further KDE packages

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

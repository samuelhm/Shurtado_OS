::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](cdparanoia.md "CDParanoia-III-10.2"){accesskey="p"}

    CDParanoia-III-10.2

-   [Next](lame.md "LAME-3.100"){accesskey="n"}

    LAME-3.100

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kwave}kwave-26.04.1 {#kwave-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to KWave {#introduction-to-kwave .sect2}

The [KWave]{.application} package contains a KDE Frameworks-based Sound Editor application.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/kwave-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/kwave-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 5db78aacc46743e3df243267c702b181

-   Download size: 6.2 MB

-   Estimated disk space required: 89 MB

-   Estimated build time: 1.1 SBU (using parallelism=4)
:::

### KWave Dependencies

#### Required

[AudioFile-0.3.6](audiofile.md "AudioFile-0.3.6"){.xref}, [fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref}, [id3lib-3.8.3](id3lib.md "id3lib-3.8.3"){.xref}, and [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}, and [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of KWave {#installation-of-kwave .sect2}

Install [KWave]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
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
**Installed Programs:** [kwave]{.segbody}
:::

::: seg
**Installed Libraries:** [libkwave.so, libkwavegui.so, and 30 plugins]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/lib/plugins/kwave, \$KF6_PREFIX/share/kwave, \$KF6_PREFIX/share/doc/HTML/\*/kwave]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------
  []{#kwave-prog}[[**kwave**]{.command}]{.term}   is a sound editor built using the KDE Frameworks
  ----------------------------------------------- --------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](cdparanoia.md "CDParanoia-III-10.2"){accesskey="p"}

    CDParanoia-III-10.2

-   [Next](lame.md "LAME-3.100"){accesskey="n"}

    LAME-3.100

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

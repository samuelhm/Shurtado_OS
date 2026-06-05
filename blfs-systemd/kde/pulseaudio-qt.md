::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](kirigami-addons.md "kirigami-addons-1.12.1"){accesskey="p"}

    kirigami-addons-1.12.1

-   [Next](qtkeychain.md "qtkeychain-0.16.0"){accesskey="n"}

    qtkeychain-0.16.0

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pulseaudio-qt}pulseaudio-qt-1.8.1 {#pulseaudio-qt-1.8.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to pulseaudio-qt {#introduction-to-pulseaudio-qt .sect2}

This package is a Qt-based wrapper for [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}. It allows for querying and manipulating various PulseAudio objects, including Sinks, Sources, and Streams. It does not wrap the full feature set of libpulse, but rather only what is needed for KDE.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/pulseaudio-qt/pulseaudio-qt-1.8.1.tar.xz](https://download.kde.org/stable/pulseaudio-qt/pulseaudio-qt-1.8.1.tar.xz){.ulink}

-   Download MD5 sum: fa37fbba12097a6ff276f0a29ddec20f

-   Download size: 44 KB

-   Estimated disk space required: 8.5 MB

-   Estimated build time: 0.3 SBU
:::

### Konsole Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of pulseaudio-qt {#installation-of-pulseaudio-qt .sect2}

Install [pulseaudio-qt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_PREFIX_PATH=$QT6DIR        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON      \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      .. &&
make
```

Now as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libKF6PulseAudioQt.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/lib/cmake/KF6PulseAudioQt and \$KF6_PREFIX/include/KF6/KF6PulseAudioQt]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](kirigami-addons.md "kirigami-addons-1.12.1"){accesskey="p"}

    kirigami-addons-1.12.1

-   [Next](qtkeychain.md "qtkeychain-0.16.0"){accesskey="n"}

    qtkeychain-0.16.0

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

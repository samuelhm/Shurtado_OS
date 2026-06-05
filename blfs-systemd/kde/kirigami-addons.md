::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](plasma.md "KDE Plasma"){accesskey="p"}

    KDE Plasma

-   [Next](pulseaudio-qt.md "pulseaudio-qt-1.8.1"){accesskey="n"}

    pulseaudio-qt-1.8.1

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kirigami-addons}kirigami-addons-1.12.1 {#kirigami-addons-1.12.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kirigami-addons {#introduction-to-kirigami-addons .sect2}

This package provides additional QML files for the Kirigami framework.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/kirigami-addons/kirigami-addons-1.12.1.tar.xz](https://download.kde.org/stable/kirigami-addons/kirigami-addons-1.12.1.tar.xz){.ulink}

-   Download MD5 sum: cfc77067a7a30c1a45b47174754469f6

-   Download size: 2.7 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 0.7 SBU (Using parallelism=4)
:::

### kirigami-addons Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}

#### Recommended

[Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kirigami-addons {#installation-of-kirigami-addons .sect2}

Install [kirigami-addons]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
       ..                                 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

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
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/lib/qml/org/kde/kirigamiaddons and \$KF6_PREFIX/lib/cmake/KF6KirigamiAddons]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](plasma.md "KDE Plasma"){accesskey="p"}

    KDE Plasma

-   [Next](pulseaudio-qt.md "pulseaudio-qt-1.8.1"){accesskey="n"}

    pulseaudio-qt-1.8.1

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

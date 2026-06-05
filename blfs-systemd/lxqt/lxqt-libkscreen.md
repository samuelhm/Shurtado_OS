::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kwayland.md "kwayland-6.6.5 for lxqt"){accesskey="p"}

    kwayland-6.6.5 for lxqt

-   [Next](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){accesskey="n"}

    layer-shell-qt-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-libkscreen}libkscreen-6.6.5 for lxqt {#libkscreen-6.6.5-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libkscreen {#introduction-to-libkscreen .sect2}

The [libkscreen]{.application} package contains the KDE Screen Management library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This package is extracted from the plasma set of packages. If [Plasma-6.6.5](../kde/plasma-all.md "Building Plasma"){.xref} is built, do [**NOT**]{.bold} also build this package as presented here.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5/libkscreen-6.6.5.tar.xz](https://download.kde.org/stable/plasma/6.6.5/libkscreen-6.6.5.tar.xz){.ulink}

-   Download MD5 sum: 84c079431cc0997e392198dfd6e1ca5d

-   Download size: 120 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
:::

### libkscreen Dependencies

#### Required

[kwayland-6.6.5 for lxqt](lxqt-kwayland.md "kwayland-6.6.5 for lxqt"){.xref}, [plasma-wayland-protocols-1.21.0](../kde/plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of libkscreen {#installation-of-libkscreen .sect2}

Install [libkscreen]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_INSTALL_LIBEXECDIR=libexec \
      -D KDE_INSTALL_USE_QT_SYS_PATHS=ON  \
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
**Installed Programs:** [kscreen-doctor]{.segbody}
:::

::: seg
**Installed Library:** [libKF6Screen.so and libKF6ScreenDpms.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/KF6Screen, /usr/include/KF6/KScreen, and \$QT6DIR/lib/plugins/kf6/kscreen]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------
  []{#lxqt-libkscreen-kscreen-doctor}[[**kscreen-doctor**]{.command}]{.term}   allows modifying the screen setup from the command line
  []{#lxqt-libkscreen-lib}[`libKF6Screen.so`{.filename}]{.term}                contains the KDE Screen Management library
  []{#lxqt-libkscreen-dpms-lib}[`libKF6ScreenDpms.so`{.filename}]{.term}       contains API functions for handling DPMS
  ---------------------------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-kwayland.md "kwayland-6.6.5 for lxqt"){accesskey="p"}

    kwayland-6.6.5 for lxqt

-   [Next](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){accesskey="n"}

    layer-shell-qt-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

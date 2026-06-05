::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt"){accesskey="p"}

    libkscreen-6.6.5 for lxqt

-   [Next](muparser.md "muparser-2.3.5"){accesskey="n"}

    muparser-2.3.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-layer-shell-qt}layer-shell-qt-6.6.5 for lxqt {#layer-shell-qt-6.6.5-for-lxqt .sect1}

:::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to layer-shell-qt {#introduction-to-layer-shell-qt .sect2}

This component is meant for applications to be able to easily use clients based on a "wlr-layer-shell" protocol. Clients can use this interface to assign the surface_layer role to wl_surfaces. Such surfaces are assigned to a "layer" of the output and rendered with a defined z-depth respective to each other.

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
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5/layer-shell-qt-6.6.5.tar.xz](https://download.kde.org/stable/plasma/6.6.5/layer-shell-qt-6.6.5.tar.xz){.ulink}

-   Download MD5 sum: 4b79f4b2765f7c1429a3335154b23989

-   Download size: 36 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.2 SBU
:::

### layer-shell-qt Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref} and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of layer-shell {#installation-of-layer-shell .sect2}

Install [layer-shell-qt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev ..                 &&
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
**Installed Library:** [libLayerShellQtInterface.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/qml/org/kde/layershell and /usr/include/LayerShellQt]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt"){accesskey="p"}

    libkscreen-6.6.5 for lxqt

-   [Next](muparser.md "muparser-2.3.5"){accesskey="n"}

    muparser-2.3.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

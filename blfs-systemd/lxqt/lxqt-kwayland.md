::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kidletime.md "kidletime-6.26.0 for lxqt"){accesskey="p"}

    kidletime-6.26.0 for lxqt

-   [Next](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt"){accesskey="n"}

    libkscreen-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-kwayland}kwayland-6.6.5 for lxqt {#kwayland-6.6.5-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to kwayland {#introduction-to-kwayland .sect2}

[kwayland]{.application} is a Qt-style API to interact with the [wayland-client]{.application} and [wayland-server]{.application} API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

This package is extracted from the KF6 set of packages. If [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} is built, do [**NOT**]{.bold} also build this package as presented here.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5/kwayland-6.6.5.tar.xz](https://download.kde.org/stable/plasma/6.6.5/kwayland-6.6.5.tar.xz){.ulink}

-   Download MD5 sum: bdb0b9f18478d16b31246882fdcbc458

-   Download size: 132 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### kwayland Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref} (built with [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref} support), [plasma-wayland-protocols-1.21.0](../kde/plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of kwayland {#installation-of-kwayland .sect2}

Install [kwayland]{.application} by running the following commands:

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libKWaylandClient.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KWayland and /usr/lib/cmake/KWayland]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------- ----------------------------------------------------------------------
  []{#lxqt-kwayland-client}[`libKWaylandClient.so`{.filename}]{.term}   contains the [wayland-client]{.application} Qt-style wrapper library
  --------------------------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-kidletime.md "kidletime-6.26.0 for lxqt"){accesskey="p"}

    kidletime-6.26.0 for lxqt

-   [Next](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt"){accesskey="n"}

    libkscreen-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](pre-install.md "LXQt Desktop Pre-Install Instructions"){accesskey="p"}

    LXQt Desktop Pre-Install Instructions

-   [Next](lxqt-kconfig.md "kconfig-6.26.0 for lxqt"){accesskey="n"}

    kconfig-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-kwindowsystem}kwindowsystem-6.26.0 for lxqt {#kwindowsystem-6.26.0-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to kwindowsystem {#introduction-to-kwindowsystem .sect2}

The [kwindowsystem]{.application} provides information about, and allows interaction with, the windowing system. It provides a high level API that is windowing system independent and has platform specific implementations.

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
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/kwindowsystem-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/kwindowsystem-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: 0f4bbe9d04716d96cd53aada98699f5a

-   Download size: 2.2 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### kwindowsystem Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, [plasma-wayland-protocols-1.21.0](../kde/plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}
::::::

::: {.installation lang="en"}
## Installation of kwindowsystem {#installation-of-kwindowsystem .sect2}

Install [kwindowsystem]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TESTING=OFF         \
      -W no-dev ..                 &&
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
**Installed Library:** [libKF6WindowSystem.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KF6, /usr/lib/cmake/KF6WindowSystem, /usr/lib/plugins/kf6, /usr/lib/qml/org/kde, and /usr/share/qlogging-categories6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------
  []{#lxqt-kwindowsystem-lib}[`libKF6WindowSystem.so`{.filename}]{.term}   contains the [KF6 Windowing]{.application} API functions
  ------------------------------------------------------------------------ ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](pre-install.md "LXQt Desktop Pre-Install Instructions"){accesskey="p"}

    LXQt Desktop Pre-Install Instructions

-   [Next](lxqt-kconfig.md "kconfig-6.26.0 for lxqt"){accesskey="n"}

    kconfig-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kconfig.md "kconfig-6.26.0 for lxqt"){accesskey="p"}

    kconfig-6.26.0 for lxqt

-   [Next](lxqt-kidletime.md "kidletime-6.26.0 for lxqt"){accesskey="n"}

    kidletime-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-solid}solid-6.26.0 for lxqt {#solid-6.26.0-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to solid {#introduction-to-solid .sect2}

[Solid]{.application} is a device integration framework. It provides a way of querying and interacting with hardware independently of the underlying operating system.

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
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/solid-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/solid-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: dc8d2c5864ace71f21fd4283014d9bf1

-   Download size: 308 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
:::

### solid Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref} and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Optional (runtime)

[UDisks-2.11.1](../general/udisks2.md "UDisks-2.11.1"){.xref}, [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}, [libimobiledevice](https://libimobiledevice.org/){.ulink}, and [media-player-info](http://www.freedesktop.org/wiki/Software/media-player-info){.ulink}
::::::

::: {.installation lang="en"}
## Installation of solid {#installation-of-solid .sect2}

Install [solid]{.application} by running the following commands:

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
**Installed Programs:** [solid-hardware6]{.segbody}
:::

::: seg
**Installed Library:** [libKF6Solid.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KF6/Solid and /usr/lib/cmake/KF6Solid]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------
  []{#lxqt-solid-solid-hardware6}[[**solid-hardware6**]{.command}]{.term}   queries hardware information from the system
  []{#lxqt-solid-lib}[`libKF6Solid.so`{.filename}]{.term}                   provides a way of querying and interacting with hardware independently of the underlying operating system
  ------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-kconfig.md "kconfig-6.26.0 for lxqt"){accesskey="p"}

    kconfig-6.26.0 for lxqt

-   [Next](lxqt-kidletime.md "kidletime-6.26.0 for lxqt"){accesskey="n"}

    kidletime-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

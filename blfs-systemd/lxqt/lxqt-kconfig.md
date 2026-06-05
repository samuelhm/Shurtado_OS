::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){accesskey="p"}

    kwindowsystem-6.26.0 for lxqt

-   [Next](lxqt-solid.md "solid-6.26.0 for lxqt"){accesskey="n"}

    solid-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-kconfig}kconfig-6.26.0 for lxqt {#kconfig-6.26.0-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to kconfig {#introduction-to-kconfig .sect2}

The [kconfig]{.application} package provides access to configuration files.

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
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/kconfig-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/kconfig-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: d184d34f565a550a57f894775d334031

-   Download size: 376 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### kconfig Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref} and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of kconfig {#installation-of-kconfig .sect2}

Install [kconfig]{.application} by running the following commands:

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
**Installed Programs:** [kreadconfig6 and kwriteconfig6]{.segbody}
:::

::: seg
**Installed Library:** [libKF6ConfigCore.so, libKF6ConfigGui.so, and libKF6ConfigQml.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KF6/{KConfigCore,KConfig,KConfigQml,KConfigGui}, /usr/lib/cmake/KF6Config, /usr/libexec/kf6, and \$QT6DIR/qml/org/kde/config]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------------- -------------------------------------------------------------
  []{#lxqt-kconfig-kreadconfig6}[[**kreadconfig6**]{.command}]{.term}           reads from a configuration file using the KConfig interface
  []{#lxqt-kconfig-kwriteconfig6}[[**kwriteconfig6**]{.command}]{.term}         writes to a configuration file using the KConfig interface
  []{#lxqt-kconfig-libKF6ConfigCore}[`libKF6ConfigCore.so`{.filename}]{.term}   contains the core configuration library for KF6
  []{#lxqt-kconfig-libKF6ConfigGui}[`libKF6ConfigGui.so`{.filename}]{.term}     contains functions for a GUI to interface with KConfig
  []{#lxqt-kconfig-libKF6ConfigQml}[`libKF6ConfigQml.so`{.filename}]{.term}     contains a QML interface to KConfig
  ----------------------------------------------------------------------------- -------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){accesskey="p"}

    kwindowsystem-6.26.0 for lxqt

-   [Next](lxqt-solid.md "solid-6.26.0 for lxqt"){accesskey="n"}

    solid-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-solid.md "solid-6.26.0 for lxqt"){accesskey="p"}

    solid-6.26.0 for lxqt

-   [Next](lxqt-kwayland.md "kwayland-6.6.5 for lxqt"){accesskey="n"}

    kwayland-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-kidletime}kidletime-6.26.0 for lxqt {#kidletime-6.26.0-for-lxqt .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to kidletime {#introduction-to-kidletime .sect2}

KIdleTime is used to report the idle time of users and the system. It is useful not only for determining the current idle time of the PC, but also for getting notified upon idle time events, such as custom timeouts or user activity.

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
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/kidletime-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/kidletime-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: 9c173c895f89c904154063c361d9bae4

-   Download size: 32 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.2 SBU
:::

### kidletime Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, [plasma-wayland-protocols-1.21.0](../kde/plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of kidletime {#installation-of-kidletime .sect2}

Install [kidletime]{.application} by running the following commands:

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
**Installed Library:** [libKF6IdleTime.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/KF6/KIdleTime, /usr/lib/cmake/KF6IdleTime, and \$QT6DIR/lib/plugins/kf6/org.kde.kidletime.platforms]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------
  []{#lxqt-kidletime-lib}[`libKF6IdleTime.so`{.filename}]{.term}   contains the KDE API for idle time reports
  ---------------------------------------------------------------- --------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-solid.md "solid-6.26.0 for lxqt"){accesskey="p"}

    solid-6.26.0 for lxqt

-   [Next](lxqt-kwayland.md "kwayland-6.6.5 for lxqt"){accesskey="n"}

    kwayland-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

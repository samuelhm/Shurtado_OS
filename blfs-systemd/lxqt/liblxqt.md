::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){accesskey="p"}

    lxqt-menu-data-2.4.0

-   [Next](libsysstat.md "libsysstat-1.1.0"){accesskey="n"}

    libsysstat-1.1.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#liblxqt}liblxqt-2.4.0 {#liblxqt-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to liblxqt {#introduction-to-liblxqt .sect2}

The [liblxqt]{.application} is the core utility library for all [LXQt]{.application} components.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/liblxqt/releases/download/2.4.0/liblxqt-2.4.0.tar.xz](https://github.com/lxqt/liblxqt/releases/download/2.4.0/liblxqt-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: daa81b9deda0ac4c37ab3ec914bae82b

-   Download size: 92 KB

-   Estimated disk space required: 7.9 MB

-   Estimated build time: 0.4 SBU
:::

### liblxqt Dependencies

#### Required

[libqtxdg-4.4.0](libqtxdg.md "libqtxdg-4.4.0"){.xref}, [kwindowsystem-6.26.0 for lxqt](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){.xref}, and [polkit-qt-0.201.1](../kde/polkit-qt.md "Polkit-Qt-0.201.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of liblxqt {#installation-of-liblxqt .sect2}

Install [liblxqt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
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
**Installed Programs:** [lxqt-backlight_backend]{.segbody}
:::

::: seg
**Installed Library:** [liblxqt.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/lxqt, /usr/share/cmake/lxqt, and /usr/share/lxqt/liblxqt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- --------------------------------------------------
  []{#lxqt-backlight_backend}[[**lxqt-backlight_backend**]{.command}]{.term}   sets the backlight level for a display
  []{#liblxqt-lib}[`liblxqt.so`{.filename}]{.term}                             contains a variety of utility functions for LXQt
  ---------------------------------------------------------------------------- --------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){accesskey="p"}

    lxqt-menu-data-2.4.0

-   [Next](libsysstat.md "libsysstat-1.1.0"){accesskey="n"}

    libsysstat-1.1.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

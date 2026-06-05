::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){accesskey="p"}

    libdbusmenu-lxqt-0.4.0

-   [Next](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){accesskey="n"}

    lxqt-menu-data-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libqtxdg}libqtxdg-4.4.0 {#libqtxdg-4.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libqtxdg {#introduction-to-libqtxdg .sect2}

The [libqtxdg]{.application} package contains a Qt implementation of the freedesktop.org XDG specifications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/libqtxdg/releases/download/4.4.0/libqtxdg-4.4.0.tar.xz](https://github.com/lxqt/libqtxdg/releases/download/4.4.0/libqtxdg-4.4.0.tar.xz){.ulink}

-   Download MD5 sum: ea81dc21611085a6601defb3fe6cce89

-   Download size: 76 KB

-   Estimated disk space required: 9.3 MB

-   Estimated build time: 0.4 SBU
:::

### libqtxdg Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Optional (runtime)

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for [**gtk-update-icon-cache**]{.command}) and [xterm-410](../x/xterm.md "xterm-410"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libqtxdg {#installation-of-libqtxdg .sect2}

Install [libqtxdg]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..       &&

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
**Installed Library:** [libQt6Xdg.so, libQt6XdgIconLoader.so, and libQt6XdgIconPlugin.so (in \$QT6DIR/lib)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{qt6xdg,qt6xdgiconloader} and /usr/share/cmake/{qt6xdg,qt6xdgiconloader}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ------------------------------------------------------------
  []{#libQt6Xdg-lib}[`libQt6Xdg.so`{.filename}]{.term}                   contains an implementation of the XDG specification for Qt
  []{#libQt6XdgIconLoader}[`libQt6XdgIconLoader.so`{.filename}]{.term}   contains the XDG Icon Loader for Qt
  []{#libQt6XdgIconPlugin}[`libQt6XdgIconPlugin`{.filename}]{.term}      contains a plugin for loading icons using Qt
  ---------------------------------------------------------------------- ------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){accesskey="p"}

    libdbusmenu-lxqt-0.4.0

-   [Next](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){accesskey="n"}

    lxqt-menu-data-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

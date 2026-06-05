::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](menu-cache.md "menu-cache-1.1.1"){accesskey="p"}

    menu-cache-1.1.1

-   [Next](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){accesskey="n"}

    lxqt-globalkeys-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libfm-qt}libfm-qt-2.4.0 {#libfm-qt-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libfm-qt {#introduction-to-libfm-qt .sect2}

[libfm-qt]{.application} is the Qt port of libfm, a library providing components to build desktop file managers. In LXQt, libfm-qt also handles desktop icons and backgrounds.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/libfm-qt/releases/download/2.4.0/libfm-qt-2.4.0.tar.xz](https://github.com/lxqt/libfm-qt/releases/download/2.4.0/libfm-qt-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: d836e9732df22a1fc8a5b3d3919f4549

-   Download size: 432 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
:::

### libfm-qt Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref}, [menu-cache-1.1.1](menu-cache.md "menu-cache-1.1.1"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libfm-qt {#installation-of-libfm-qt .sect2}

Install [libfm-qt]{.application} by running the following commands:

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libfm-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libfm-qt6, /usr/share/cmake/fm-qt6, and /usr/share/libfm-qt6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------------------------------------------------
  []{#libfm-qt-lib}[`libfm-qt6.so`{.filename}]{.term}   contains functions to implement a graphical file manager as well as set desktop icons and backgrounds
  ----------------------------------------------------- -------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](menu-cache.md "menu-cache-1.1.1"){accesskey="p"}

    menu-cache-1.1.1

-   [Next](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){accesskey="n"}

    lxqt-globalkeys-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

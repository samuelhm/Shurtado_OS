::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){accesskey="p"}

    lxqt-build-tools-2.4.0

-   [Next](libqtxdg.md "libqtxdg-4.4.0"){accesskey="n"}

    libqtxdg-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdbusmenu-lxqt}libdbusmenu-lxqt-0.4.0 {#libdbusmenu-lxqt-0.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libdbusmenu-lxqt {#introduction-to-libdbusmenu-lxqt .sect2}

The [libdbusmenu-lxqt]{.application} package provides a Qt implementation of the DBusMenu protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/libdbusmenu-lxqt/releases/download/0.4.0/libdbusmenu-lxqt-0.4.0.tar.xz](https://github.com/lxqt/libdbusmenu-lxqt/releases/download/0.4.0/libdbusmenu-lxqt-0.4.0.tar.xz){.ulink}

-   Download MD5 sum: f2aef1535a2ed37da8e5983d001ec194

-   Download size: 40 KB

-   Estimated disk space required: 8.5 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### libdbusmenu-lxqt Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [qjson](https://qjson.sourceforge.net/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libdbusmenu-lxqt {#installation-of-libdbusmenu-lxqt .sect2}

Install [libdbusmenu-lxqt]{.application} by running the following commands:

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

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D WITH_DOC=ON`*: Use this switch if you've installed [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and want to build the optional documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libdbusmenu-lxqt.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/dbusmenu-lxqt and /usr/lib/cmake/dbusmenu-lxqt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------- ----------------------------------------------------------------------------
  []{#libdbusmenu-lxqt-lib}[`libdbusmen-lxqt.so`{.filename}]{.term}   contains a Qt implementation of the DBusMenu protocol, customized for LXQt
  ------------------------------------------------------------------- ----------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){accesskey="p"}

    lxqt-build-tools-2.4.0

-   [Next](libqtxdg.md "libqtxdg-4.4.0"){accesskey="n"}

    libqtxdg-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

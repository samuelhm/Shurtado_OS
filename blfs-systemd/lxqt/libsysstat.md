::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](liblxqt.md "liblxqt-2.4.0"){accesskey="p"}

    liblxqt-2.4.0

-   [Next](qtxdg-tools.md "qtxdg-tools-4.4.0"){accesskey="n"}

    qtxdg-tools-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsysstat}libsysstat-1.1.0 {#libsysstat-1.1.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsysstat {#introduction-to-libsysstat .sect2}

The [libsysstat]{.application} package contains a library used to query system information and statistics.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/libsysstat/releases/download/1.1.0/libsysstat-1.1.0.tar.xz](https://github.com/lxqt/libsysstat/releases/download/1.1.0/libsysstat-1.1.0.tar.xz){.ulink}

-   Download MD5 sum: b21e0facd325c1d8e177121e2ac71e78

-   Download size: 20 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
:::

### libsysstat Dependencies

#### Required

[lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libsysstat {#installation-of-libsysstat .sect2}

Install [libsysstat]{.application} by running the following commands:

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
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libsysstat-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/sysstat-qt6 and /usr/share/cmake/sysstat-qt6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------
  []{#libsysstat-qt6}[`libsysstat-qt6.so`{.filename}]{.term}   contains functions to query system information and statistics
  ------------------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](liblxqt.md "liblxqt-2.4.0"){accesskey="p"}

    liblxqt-2.4.0

-   [Next](qtxdg-tools.md "qtxdg-tools-4.4.0"){accesskey="n"}

    qtxdg-tools-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

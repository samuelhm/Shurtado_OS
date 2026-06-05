::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libqtxdg.md "libqtxdg-4.4.0"){accesskey="p"}

    libqtxdg-4.4.0

-   [Next](liblxqt.md "liblxqt-2.4.0"){accesskey="n"}

    liblxqt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-menu-data}lxqt-menu-data-2.4.0 {#lxqt-menu-data-2.4.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-menu-data {#introduction-to-lxqt-menu-data .sect2}

The [lxqt-menu-data]{.application} package contains compliant menu files for LXQt.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-menu-data/releases/download/2.4.0/lxqt-menu-data-2.4.0.tar.xz](https://github.com/lxqt/lxqt-menu-data/releases/download/2.4.0/lxqt-menu-data-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: bfb146f255c3c670f2b2c56c2515ce3c

-   Download size: 56 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### lxqt-menu-data Dependencies

#### Required

[lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-menu-data {#installation-of-lxqt-menu-data .sect2}

Install [lxqt-menu-data]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/menus, /usr/share/desktop-directories, and /usr/share/cmake/lxqt-menu-data]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libqtxdg.md "libqtxdg-4.4.0"){accesskey="p"}

    libqtxdg-4.4.0

-   [Next](liblxqt.md "liblxqt-2.4.0"){accesskey="n"}

    liblxqt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

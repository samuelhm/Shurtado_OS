::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-apps.md "LXQt Applications"){accesskey="p"}

    LXQt Applications

-   [Next](lxqt-archiver.md "lxqt-archiver-1.4.0"){accesskey="n"}

    lxqt-archiver-1.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lximage-qt}lximage-qt-2.4.0 {#lximage-qt-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lximage-qt {#introduction-to-lximage-qt .sect2}

The [lximage-qt]{.application} package contains a lightweight image viewer and screenshot program.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lximage-qt/releases/download/2.4.0/lximage-qt-2.4.0.tar.xz](https://github.com/lxqt/lximage-qt/releases/download/2.4.0/lximage-qt-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 3bec142eec14e1c3c40927dd9ecc36f2

-   Download size: 852 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.5 SBU
:::

### lximage-qt Dependencies

#### Required

[libfm-qt-2.4.0](libfm-qt.md "libfm-qt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lximage-qt {#installation-of-lximage-qt .sect2}

Install [lximage-qt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref} installed, as the `root`{.systemitem} user, run [**xdg-icon-resource forceupdate --theme hicolor**]{.command}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [lximage-qt]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/lximage-qt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#lximage-qt-prog}[[**lximage-qt**]{.command}]{.term}   is a lightweight image viewer and screenshot program. There is a menu entry in Utilities for the screenshot program. From the command line, you can obtain a full screen or window shot by running [**lximage-qt --screenshot**]{.command}
  --------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-apps.md "LXQt Applications"){accesskey="p"}

    LXQt Applications

-   [Next](lxqt-archiver.md "lxqt-archiver-1.4.0"){accesskey="n"}

    lxqt-archiver-1.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

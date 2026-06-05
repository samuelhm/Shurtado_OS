::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qterminal.md "qterminal-2.4.0"){accesskey="p"}

    qterminal-2.4.0

-   [Next](../xsoft/xsoft.md "X Software"){accesskey="n"}

    X Software

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#screengrab}screengrab-3.2.0 {#screengrab-3.2.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to screengrab {#introduction-to-screengrab .sect2}

The [screengrab]{.application} package is a cross-platform tool for making screenshots quickly.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/screengrab/releases/download/3.2.0/screengrab-3.2.0.tar.xz](https://github.com/lxqt/screengrab/releases/download/3.2.0/screengrab-3.2.0.tar.xz){.ulink}

-   Download MD5 sum: 642790e122e55167414000a74cd274c6

-   Download size: 368 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: 0.4 SBU
:::

### screengrab Dependencies

#### Required

[lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}, [kwindowsystem-6.26.0 for lxqt](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt"){.xref}, and [libqtxdg-4.4.0](libqtxdg.md "libqtxdg-4.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of screengrab {#installation-of-screengrab .sect2}

Install [screengrab]{.application} by running the following commands:

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
**Installed Program:** [screengrab]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/screengrab and /usr/share/doc/screengrab]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- -----------------------------------------------------------
  []{#screengrab-prog}[[**screengrab**]{.command}]{.term}   is a cross platform tool for creating screenshots quickly
  --------------------------------------------------------- -----------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](qterminal.md "qterminal-2.4.0"){accesskey="p"}

    qterminal-2.4.0

-   [Next](../xsoft/xsoft.md "X Software"){accesskey="n"}

    X Software

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

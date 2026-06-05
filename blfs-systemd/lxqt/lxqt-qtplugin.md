::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){accesskey="p"}

    lxqt-globalkeys-2.4.0

-   [Next](lxqt-panel.md "lxqt-panel-2.4.1"){accesskey="n"}

    lxqt-panel-2.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-qtplugin}lxqt-qtplugin-2.4.0 {#lxqt-qtplugin-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-qtplugin {#introduction-to-lxqt-qtplugin .sect2}

The [lxqt-qtplugin]{.application} package provides an [LXQt]{.application} [Qt]{.application} platform integration plugin.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-qtplugin/releases/download/2.4.0/lxqt-qtplugin-2.4.0.tar.xz](https://github.com/lxqt/lxqt-qtplugin/releases/download/2.4.0/lxqt-qtplugin-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 679a8472698a88556622c3a4d3c1a524

-   Download size: 28 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: 0.1 SBU
:::

### lxqt-qtplugin Dependencies

#### Required

[libfm-qt-2.4.0](libfm-qt.md "libfm-qt-2.4.0"){.xref}, [liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, and [libdbusmenu-lxqt-0.4.0](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-qtplugin {#installation-of-lxqt-qtplugin .sect2}

Install [lxqt-qtplugin]{.application} by running the following commands:

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
**Installed Library:** [libqtlxqt.so (in \$QT6DIR/plugins/platformthemes)]{.segbody}
:::

::: seg
**Installed Directory:** [\$QT6DIR/plugins/platformthemes]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------
  []{#libqtlxqt-lib}[`libqtlxqt.so`{.filename}]{.term}   contains the LXQt QT plugin loader
  ------------------------------------------------------ ------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){accesskey="p"}

    lxqt-globalkeys-2.4.0

-   [Next](lxqt-panel.md "lxqt-panel-2.4.1"){accesskey="n"}

    lxqt-panel-2.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

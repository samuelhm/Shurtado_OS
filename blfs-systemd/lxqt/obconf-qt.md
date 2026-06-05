::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){accesskey="p"}

    xdg-desktop-portal-lxqt-1.4.0

-   [Next](post-install.md "LXQt Desktop Final Instructions"){accesskey="n"}

    LXQt Desktop Final Instructions

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#obconf-qt}obconf-qt-0.16.5 {#obconf-qt-0.16.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to obconf-qt {#introduction-to-obconf-qt .sect2}

The [obconf-qt]{.application} package is a Qt-based configuration tool for [Openbox]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/obconf-qt/releases/download/0.16.5/obconf-qt-0.16.5.tar.xz](https://github.com/lxqt/obconf-qt/releases/download/0.16.5/obconf-qt-0.16.5.tar.xz){.ulink}

-   Download MD5 sum: d5575e961c56676ed7cff32d87564f26

-   Download size: 124 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: 0.2 SBU
:::

### obconf-qt Dependencies

#### Required

[hicolor-icon-theme-0.18](../x/hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}, [lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}, [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of obconf-qt {#installation-of-obconf-qt .sect2}

Install [obconf-qt]{.application} by running the following commands:

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
**Installed Program:** [obconf-qt]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- --------------------------------------------------------------
  []{#obconf-qt-prog}[[**obconf-qt**]{.command}]{.term}   is a Qt-based configuration tool for [Openbox]{.application}
  ------------------------------------------------------- --------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){accesskey="p"}

    xdg-desktop-portal-lxqt-1.4.0

-   [Next](post-install.md "LXQt Desktop Final Instructions"){accesskey="n"}

    LXQt Desktop Final Instructions

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

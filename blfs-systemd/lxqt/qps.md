::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](pavucontrol-qt.md "pavucontrol-qt-2.4.0"){accesskey="p"}

    pavucontrol-qt-2.4.0

-   [Next](qtermwidget.md "qtermwidget-2.4.0"){accesskey="n"}

    qtermwidget-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qps}qps-2.13.0 {#qps-2.13.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qps {#introduction-to-qps .sect2}

The [qps]{.application} package contains a Qt process manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/qps/releases/download/2.13.0/qps-2.13.0.tar.xz](https://github.com/lxqt/qps/releases/download/2.13.0/qps-2.13.0.tar.xz){.ulink}

-   Download MD5 sum: 554ada593b7d19f6d3a81cc493682a14

-   Download size: 472 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.5 SBU
:::

### qps Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qps {#installation-of-qps .sect2}

Install [qps]{.application} by running the following commands:

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
**Installed Program:** [qps]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/qps]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- -------------------------------
  []{#qps-prog}[[**qps**]{.command}]{.term}   is a Qt-based process manager
  ------------------------------------------- -------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](pavucontrol-qt.md "pavucontrol-qt-2.4.0"){accesskey="p"}

    pavucontrol-qt-2.4.0

-   [Next](qtermwidget.md "qtermwidget-2.4.0"){accesskey="n"}

    qtermwidget-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

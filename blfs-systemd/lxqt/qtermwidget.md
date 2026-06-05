::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qps.md "qps-2.13.0"){accesskey="p"}

    qps-2.13.0

-   [Next](qterminal.md "qterminal-2.4.0"){accesskey="n"}

    qterminal-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qtermwidget}qtermwidget-2.4.0 {#qtermwidget-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qtermwidget {#introduction-to-qtermwidget .sect2}

As the name suggests, the [qtermwidget]{.application} package is a terminal widget for [Qt]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/qtermwidget/releases/download/2.4.0/qtermwidget-2.4.0.tar.xz](https://github.com/lxqt/qtermwidget/releases/download/2.4.0/qtermwidget-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 033823bc2599813ad02b1cfcabcefec9

-   Download size: 200 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.5 SBU
:::

### qtermwidget Dependencies

#### Required

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qtermwidget {#installation-of-qtermwidget .sect2}

Install [qtermwidget]{.application} by running the following commands:

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
**Installed Libraries:** [libqtermwidget6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/qtermwidget6, /usr/lib/cmake/qtermwidget6, and /usr/share/qtermwidget6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------
  []{#libqtermwidget6-lib}[`libqtermwidget6.so`{.filename}]{.term}   provides a terminal widget for Qt6
  ------------------------------------------------------------------ ------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](qps.md "qps-2.13.0"){accesskey="p"}

    qps-2.13.0

-   [Next](qterminal.md "qterminal-2.4.0"){accesskey="n"}

    qterminal-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qtermwidget.md "qtermwidget-2.4.0"){accesskey="p"}

    qtermwidget-2.4.0

-   [Next](screengrab.md "screengrab-3.2.0"){accesskey="n"}

    screengrab-3.2.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qterminal}qterminal-2.4.0 {#qterminal-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qterminal {#introduction-to-qterminal .sect2}

The [qterminal]{.application} package contains a Qt widget based terminal emulator for [Qt]{.application} with support for multiple tabs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/qterminal/releases/download/2.4.0/qterminal-2.4.0.tar.xz](https://github.com/lxqt/qterminal/releases/download/2.4.0/qterminal-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: d381d0aad8d9eb44368c5ddcd22dade5

-   Download size: 412 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### qterminal Dependencies

#### Required

[qtermwidget-2.4.0](qtermwidget.md "qtermwidget-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qterminal {#installation-of-qterminal .sect2}

Install [qterminal]{.application} by running the following commands:

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
**Installed Program:** [qterminal]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/qterminal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------
  []{#qterminal-prog}[[**qterminal**]{.command}]{.term}   is a [Qt]{.application} based lightweight terminal emulator
  ------------------------------------------------------- -------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](qtermwidget.md "qtermwidget-2.4.0"){accesskey="p"}

    qtermwidget-2.4.0

-   [Next](screengrab.md "screengrab-3.2.0"){accesskey="n"}

    screengrab-3.2.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

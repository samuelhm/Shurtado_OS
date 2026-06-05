::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libfm-qt.md "libfm-qt-2.4.0"){accesskey="p"}

    libfm-qt-2.4.0

-   [Next](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0"){accesskey="n"}

    lxqt-qtplugin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-globalkeys}lxqt-globalkeys-2.4.0 {#lxqt-globalkeys-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-globalkeys {#introduction-to-lxqt-globalkeys .sect2}

The [lxqt-globalkeys]{.application} package contains a daemon used to register global keyboard shortcuts as well as an editor for keyboard shortcuts.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-globalkeys/releases/download/2.4.0/lxqt-globalkeys-2.4.0.tar.xz](https://github.com/lxqt/lxqt-globalkeys/releases/download/2.4.0/lxqt-globalkeys-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: bc6d90bfaed073da2fa9c8aa976e7f79

-   Download size: 80 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### lxqt-globalkeys Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-globalkeys {#installation-of-lxqt-globalkeys .sect2}

Install [lxqt-globalkeys]{.application} by running the following commands:

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
**Installed Programs:** [lxqt-config-globalkeyshortcuts and lxqt-globalkeysd]{.segbody}
:::

::: seg
**Installed Libraries:** [liblxqt-globalkeys.so and liblxqt-globalkeys-ui.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/lxqt-globalkeys{,-ui} and /usr/share/cmake/lxqt-globalkeys{,-ui}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------------------- --------------------------------------------------------------
  []{#lxqt-config-globalkeyshortcuts}[[**lxqt-config-globalkeyshortcuts**]{.command}]{.term}   is an editor for keyboard shortcuts
  []{#lxqt-globalkeysd}[[**lxqt-globalkeysd**]{.command}]{.term}                               is the global keyboard shortcut daemon
  []{#lxqt-globalkeys-lib}[`lxqt-globalkeys.so`{.filename}]{.term}                             contains functions to register keyboard shortcuts
  []{#liblxqt-globalkeys-ui-lib}[`liblxqt-globalkeys-ui.so`{.filename}]{.term}                 contains functions that allow a UI to set keyboard shortcuts
  -------------------------------------------------------------------------------------------- --------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libfm-qt.md "libfm-qt-2.4.0"){accesskey="p"}

    libfm-qt-2.4.0

-   [Next](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0"){accesskey="n"}

    lxqt-qtplugin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

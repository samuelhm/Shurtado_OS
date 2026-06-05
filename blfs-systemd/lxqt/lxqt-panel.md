::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0"){accesskey="p"}

    lxqt-qtplugin-2.4.0

-   [Next](pcmanfm-qt.md "pcmanfm-qt-2.4.0"){accesskey="n"}

    pcmanfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-panel}lxqt-panel-2.4.1 {#lxqt-panel-2.4.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-panel {#introduction-to-lxqt-panel .sect2}

The [lxqt-panel]{.application} package contains a lightweight X11 desktop panel.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-panel/releases/download/2.4.1/lxqt-panel-2.4.1.tar.xz](https://github.com/lxqt/lxqt-panel/releases/download/2.4.1/lxqt-panel-2.4.1.tar.xz){.ulink}

-   Download MD5 sum: bd2273c99d752fe36a013993cd68d060

-   Download size: 816 KB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.9 SBU (Using parallelism=4)
:::

### lxqt-panel Dependencies

#### Required

[layer-shell-qt-6.6.5 for lxqt](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){.xref}, [libdbusmenu-lxqt-0.4.0](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){.xref}, [liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, [lxqt-globalkeys-2.4.0](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0"){.xref}, [lxqt-menu-data-2.4.0](lxqt-menu-data.md "lxqt-menu-data-2.4.0"){.xref}, [solid-6.26.0 for lxqt](lxqt-solid.md "solid-6.26.0 for lxqt"){.xref}, and [menu-cache-1.1.1](menu-cache.md "menu-cache-1.1.1"){.xref}

#### Recommended

[PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}, [libstatgrab-0.92.1](../general/libstatgrab.md "libstatgrab-0.92.1"){.xref} (network monitor and CPU load plugins), [libsysstat-1.1.0](libsysstat.md "libsysstat-1.1.0"){.xref} (CPU and network monitor plugins), [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref} (keyboard indicator plugin), and [lm-sensors-3-6-2](../general/lm-sensors.md "lm-sensors-3-6-2"){.xref} (sensors plugin)
:::::

::: {.installation lang="en"}
## Installation of lxqt-panel {#installation-of-lxqt-panel .sect2}

Install [lxqt-panel]{.application} by running the following commands:

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
**Installed Program:** [lxqt-panel]{.segbody}
:::

::: seg
**Installed Libraries:** [several plugins under /usr/lib/lxqt-panel]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/lxqt-panel and /usr/share/lxqt/panel]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------------------------------
  []{#lxqt-panel-prog}[[**lxqt-panel**]{.command}]{.term}   is a lightweight [Qt6]{.application} based panel for the [LXQt]{.application} Desktop
  --------------------------------------------------------- ---------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0"){accesskey="p"}

    lxqt-qtplugin-2.4.0

-   [Next](pcmanfm-qt.md "pcmanfm-qt-2.4.0"){accesskey="n"}

    pcmanfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

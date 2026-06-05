::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-session.md "lxqt-session-2.4.0"){accesskey="p"}

    lxqt-session-2.4.0

-   [Next](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){accesskey="n"}

    xdg-desktop-portal-lxqt-1.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-wayland-session}lxqt-wayland-session-0.4.1 {#lxqt-wayland-session-0.4.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-wayland-session {#introduction-to-lxqt-wayland-session .sect2}

The [lxqt-wayland-session]{.application} package contains the wayland based session manager for [LXQt]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-wayland-session/releases/download/0.4.1/lxqt-wayland-session-0.4.1.tar.xz](https://github.com/lxqt/lxqt-wayland-session/releases/download/0.4.1/lxqt-wayland-session-0.4.1.tar.xz){.ulink}

-   Download MD5 sum: 677cb8d34f2c2b7e16d5c7c62e0cea37

-   Download size: 360 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### lxqt-wayland-session Dependencies

#### Required

[lxqt-session-2.4.0](lxqt-session.md "lxqt-session-2.4.0"){.xref}, [layer-shell-qt-6.6.5 for lxqt](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){.xref}, and [qtxdg-tools-4.4.0](qtxdg-tools.md "qtxdg-tools-4.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-wayland-session {#installation-of-lxqt-wayland-session .sect2}

Install [lxqt-wayland-session]{.application} by running the following commands:

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

::: {.configuration lang="en"}
## Configuring lxqt-wayland-session {#configuring-lxqt-wayland-session .sect2}

Window Managers other than [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref} may be used, e.g. [Xfwm4-4.20.0](../xfce/xfwm4.md "Xfwm4-4.20.0"){.xref}. Please note that [IceWM-4.0.0](../x/icewm.md "IceWM-4.0.0"){.xref} is not a good substitute. [Fluxbox]{.application} does work, although in this context (with [lxqt-config-2.4.0](lxqt-config.md "lxqt-config-2.4.0"){.xref}), [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref} is better. The configuration file `/usr/share/lxqt/windowmanagers.conf`{.filename} comes with many examples of Window Managers and the ones which are installed will appear in a drop down list of [**lxqt-config-session**]{.command}. For the ones not included in `/usr/share/lxqt/windowmanagers.conf`{.filename}, you can use [**lxqt-config-session**]{.command}'s "search" button, e.g. for [Fluxbox-1.3.7](../x/fluxbox.md "Fluxbox-1.3.7"){.xref}, navigating through the file system until you can choose [**fluxbox**]{.command}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lxqt-qdbus and startlxqtwayland]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/wayland, and /usr/share/themes/Vent{,dark},]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------
  []{#lxqt-qdbus}[[**lxqt-qdbus**]{.command}]{.term}               is a dbus wrapper for keybinds on wayland compositors.
  []{#startlxqtwayland}[[**startlxqtwayland**]{.command}]{.term}   is used to start the desktop wayland session for [LXQt]{.application}
  ---------------------------------------------------------------- -----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lxqt-session.md "lxqt-session-2.4.0"){accesskey="p"}

    lxqt-session-2.4.0

-   [Next](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){accesskey="n"}

    xdg-desktop-portal-lxqt-1.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

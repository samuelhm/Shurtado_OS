::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){accesskey="p"}

    xdg-desktop-portal-1.20.4

-   [Next](dm.md "Display Managers"){accesskey="n"}

    Display Managers

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-desktop-portal-gtk}xdg-desktop-portal-gtk-1.15.3 {#xdg-desktop-portal-gtk-1.15.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdg-desktop-portal-gtk {#introduction-to-xdg-desktop-portal-gtk .sect2}

[xdg-desktop-portal-gtk]{.application} is a backend for [xdg-desktop-portal]{.application}, that is using GTK and various pieces of GNOME infrastructure.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz](https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz){.ulink}

-   Download MD5 sum: 2d6e2ad2953c386a1db11618fa3803b0

-   Download size: 96 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: 0.1 SBU
:::

### xdg-desktop-portal-gtk Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} and [xdg-desktop-portal-1.20.4](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref}

#### Recommended

[gnome-desktop-44.5](../gnome/gnome-desktop.md "gnome-desktop-44.5"){.xref} (for compiling more portal interfaces)
:::::

::: {.installation lang="en"}
## Installation of xdg-desktop-portal-gtk {#installation-of-xdg-desktop-portal-gtk .sect2}

Install [xdg-desktop-portal-gtk]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D wallpaper=disabled`{.option}: Use this option if you have not installed the recommended dependency [gnome-desktop-44.5](../gnome/gnome-desktop.md "gnome-desktop-44.5"){.xref}.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [one daemon in /usr/libexec]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xdg-desktop-portal (if no other [xdg-desktop-portal]{.application} backend is installed)]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){accesskey="p"}

    xdg-desktop-portal-1.20.4

-   [Next](dm.md "Display Managers"){accesskey="n"}

    Display Managers

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

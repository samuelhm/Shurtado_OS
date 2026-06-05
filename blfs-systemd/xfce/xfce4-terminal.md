::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](parole.md "Parole-4.20.0"){accesskey="p"}

    Parole-4.20.0

-   [Next](xfburn.md "Xfburn-0.8.0"){accesskey="n"}

    Xfburn-0.8.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-terminal}xfce4-terminal-1.2.0 {#xfce4-terminal-1.2.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Terminal {#introduction-to-xfce4-terminal .sect2}

[Xfce4 Terminal]{.application} is a [GTK+3]{.application} terminal emulator. This is useful for running commands or programs in the comfort of an Xorg window; you can drag and drop files into the [Xfce4 Terminal]{.application} or copy and paste text with your mouse.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/xfce4-terminal/1.2/xfce4-terminal-1.2.0.tar.xz](https://archive.xfce.org/src/apps/xfce4-terminal/1.2/xfce4-terminal-1.2.0.tar.xz){.ulink}

-   Download MD5 sum: 1662d52f7ffdcfde7c4ef76fd2358947

-   Download size: 444 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: 0.1 SBU
:::

### Xfce4 Terminal Dependencies

#### Required

[libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref} and [VTE-0.84.0](../gnome/vte.md "VTE-0.84.0"){.xref}

#### Optional

[gtk-layer-shell](https://github.com/wmww/gtk-layer-shell){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Terminal {#installation-of-xfce4-terminal .sect2}

First, work around a problem where functions from a package not in BLFS are used accidentally:

``` userinput
sed -e '570i #ifdef HAVE_GTK_LAYER_SHELL' \
    -e '574a #endif'                      \
    -i  terminal/terminal-window-dropdown.c
```

Install [Xfce4 Terminal]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..      \
      --prefix=/usr \
      --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xfce4-terminal]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xfce4/terminal]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- -----------------------------------------------
  []{#xfce4-terminal-prog}[[**xfce4-terminal**]{.command}]{.term}   is a [GTK+ 3]{.application} terminal emulator
  ----------------------------------------------------------------- -----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](parole.md "Parole-4.20.0"){accesskey="p"}

    Parole-4.20.0

-   [Next](xfburn.md "Xfburn-0.8.0"){accesskey="n"}

    Xfburn-0.8.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

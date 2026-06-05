::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0"){accesskey="p"}

    gnome-icon-theme-symbolic-3.12.0

-   [Next](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){accesskey="n"}

    hicolor-icon-theme-0.18

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-themes-extra}gnome-themes-extra-3.28 {#gnome-themes-extra-3.28 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Themes Extra {#introduction-to-gnome-themes-extra .sect2}

The [GNOME Themes Extra]{.application} package, formerly known as [GNOME Themes Standard]{.application}, contains various components of the default [GNOME]{.application} theme.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz](https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz){.ulink}

-   Download MD5 sum: f9f2c6c521948da427f702372e16f826

-   Download size: 2.8 MB

-   Estimated disk space required: 40 MB

-   Estimated build time: 0.3 SBU
:::

### GNOME Themes Extra Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} with [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, and [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Themes Extra {#installation-of-gnome-themes-extra .sect2}

Install [GNOME Themes Extra]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-gtk2-engine &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-gtk2-engine`*: This switch disables the GTK+-2 theming engine because GTK+-2 is no longer part of BLFS.

`--disable-gtk3-engine`{.option}: This switch disables the GTK+-3 theming engine.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/icons/HighContrast, /usr/share/themes/Adwaita, /usr/share/themes/Adwaita-dark, and /usr/share/themes/HighContrast]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0"){accesskey="p"}

    gnome-icon-theme-symbolic-3.12.0

-   [Next](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){accesskey="n"}

    hicolor-icon-theme-0.18

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

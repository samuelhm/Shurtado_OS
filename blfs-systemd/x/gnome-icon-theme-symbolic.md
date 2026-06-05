::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0"){accesskey="p"}

    gnome-icon-theme-extras-3.12.0

-   [Next](gnome-themes-extra.md "gnome-themes-extra-3.28"){accesskey="n"}

    gnome-themes-extra-3.28

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-icon-theme-symbolic}gnome-icon-theme-symbolic-3.12.0 {#gnome-icon-theme-symbolic-3.12.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Icon Theme Symbolic {#introduction-to-gnome-icon-theme-symbolic .sect2}

The [GNOME Icon Theme Symbolic]{.application} package contains symbolic icons for the default [GNOME]{.application} icon theme.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-icon-theme-symbolic/3.12/gnome-icon-theme-symbolic-3.12.0.tar.xz](https://download.gnome.org/sources/gnome-icon-theme-symbolic/3.12/gnome-icon-theme-symbolic-3.12.0.tar.xz){.ulink}

-   Download MD5 sum: 3c9c0e6b9fa04b3cbbb84da825a26fd9

-   Download size: 228 KB

-   Estimated disk space required: 6.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Icon Theme Symbolic Dependencies

#### Required

[gnome-icon-theme-3.12.0](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){.xref}

#### Optional

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref} and [Inkscape-1.4.4](../xsoft/inkscape.md "Inkscape-1.4.4"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Icon Theme Symbolic {#installation-of-gnome-icon-theme-symbolic .sect2}

Install [GNOME Icon Theme Symbolic]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/icons/gnome/scalable]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0"){accesskey="p"}

    gnome-icon-theme-extras-3.12.0

-   [Next](gnome-themes-extra.md "gnome-themes-extra-3.28"){accesskey="n"}

    gnome-themes-extra-3.28

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

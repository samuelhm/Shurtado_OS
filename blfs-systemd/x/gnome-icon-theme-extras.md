::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){accesskey="p"}

    gnome-icon-theme-3.12.0

-   [Next](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0"){accesskey="n"}

    gnome-icon-theme-symbolic-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-icon-theme-extras}gnome-icon-theme-extras-3.12.0 {#gnome-icon-theme-extras-3.12.0 .sect1}

::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Icon Theme Extras {#introduction-to-gnome-icon-theme-extras .sect2}

The [GNOME Icon Theme Extras]{.application} package contains extra icons for the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-icon-theme-extras/3.12/gnome-icon-theme-extras-3.12.0.tar.xz](https://download.gnome.org/sources/gnome-icon-theme-extras/3.12/gnome-icon-theme-extras-3.12.0.tar.xz){.ulink}

-   Download MD5 sum: 91f8f7e35a3d8d926716d88b8b1e9a29

-   Download size: 1.7 MB

-   Estimated disk space required: 12 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Icon Theme Extras Dependencies

#### Required

[gnome-icon-theme-3.12.0](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){.xref}

#### Optional

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref} and [Inkscape-1.4.4](../xsoft/inkscape.md "Inkscape-1.4.4"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Icon Theme Extras {#installation-of-gnome-icon-theme-extras .sect2}

Install [GNOME Icon Theme Extras]{.application} by running the following commands:

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
:::::::

::: navfooter
-   [Prev](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){accesskey="p"}

    gnome-icon-theme-3.12.0

-   [Next](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0"){accesskey="n"}

    gnome-icon-theme-symbolic-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](breeze-icons.md "breeze-icons-6.26.0"){accesskey="p"}

    breeze-icons-6.26.0

-   [Next](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0"){accesskey="n"}

    gnome-icon-theme-extras-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-icon-theme}gnome-icon-theme-3.12.0 {#gnome-icon-theme-3.12.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Icon Theme {#introduction-to-gnome-icon-theme .sect2}

The [GNOME Icon Theme]{.application} package contains an assortment of non-scalable icons of different sizes and themes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-icon-theme/3.12/gnome-icon-theme-3.12.0.tar.xz](https://download.gnome.org/sources/gnome-icon-theme/3.12/gnome-icon-theme-3.12.0.tar.xz){.ulink}

-   Download MD5 sum: f14bed7f804e843189ffa7021141addd

-   Download size: 17 MB

-   Estimated disk space required: 85 MB

-   Estimated build time: 0.5 SBU
:::

### GNOME Icon Theme Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, [hicolor-icon-theme-0.18](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}, [icon-naming-utils-0.8.90](icon-naming-utils.md "icon-naming-utils-0.8.90"){.xref}, and [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Icon Theme {#installation-of-gnome-icon-theme .sect2}

Install [GNOME Icon Theme]{.application} by running the following commands:

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
**Installed Directory:** [/usr/share/icons/gnome]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](breeze-icons.md "breeze-icons-6.26.0"){accesskey="p"}

    breeze-icons-6.26.0

-   [Next](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0"){accesskey="n"}

    gnome-icon-theme-extras-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

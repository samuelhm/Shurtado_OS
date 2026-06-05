::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](icons.md "Icons"){accesskey="p"}

    Icons

-   [Next](breeze-icons.md "breeze-icons-6.26.0"){accesskey="n"}

    breeze-icons-6.26.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#adwaita-icon-theme}adwaita-icon-theme-50.0 {#adwaita-icon-theme-50.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Adwaita Icon Theme {#introduction-to-adwaita-icon-theme .sect2}

The [Adwaita Icon Theme]{.application} package contains an icon theme for [GTK+ 3]{.application} and [GTK 4]{.application} applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/adwaita-icon-theme/50/adwaita-icon-theme-50.0.tar.xz](https://download.gnome.org/sources/adwaita-icon-theme/50/adwaita-icon-theme-50.0.tar.xz){.ulink}

-   Download MD5 sum: a03d8d68377a88fcf06e090ba6a6ec2f

-   Download size: 4.3 MB

-   Estimated disk space required: 31 MB

-   Estimated build time: less than 0.1 SBU
:::

### Adwaita Icon Theme Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref} or [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}, and [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Adwaita Icon Theme {#installation-of-adwaita-icon-theme .sect2}

Install [Adwaita Icon Theme]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

This package does not come with a test suite.

Remove any old icons and install the new ones. As the `root`{.systemitem} user:

``` root
rm -rf /usr/share/icons/Adwaita/ &&
ninja install
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
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/icons/Adwaita]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](icons.md "Icons"){accesskey="p"}

    Icons

-   [Next](breeze-icons.md "breeze-icons-6.26.0"){accesskey="n"}

    breeze-icons-6.26.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

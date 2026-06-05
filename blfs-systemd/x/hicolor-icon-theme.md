::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-themes-extra.md "gnome-themes-extra-3.28"){accesskey="p"}

    gnome-themes-extra-3.28

-   [Next](icon-naming-utils.md "icon-naming-utils-0.8.90"){accesskey="n"}

    icon-naming-utils-0.8.90

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#hicolor-icon-theme}hicolor-icon-theme-0.18 {#hicolor-icon-theme-0.18 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to hicolor-icon-theme {#introduction-to-hicolor-icon-theme .sect2}

The [hicolor-icon-theme]{.application} package contains a default fallback theme for implementations of the icon theme specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.18.tar.xz](https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.18.tar.xz){.ulink}

-   Download MD5 sum: ef14f3af03bcde9ed134aad626bdbaad

-   Download size: 32 KB

-   Estimated disk space required: 644 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of hicolor-icon-theme {#installation-of-hicolor-icon-theme .sect2}

Install [hicolor-icon-theme]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
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
**Installed Directory:** [/usr/share/icons/hicolor]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- --------------------------------------------
  []{#hicolor-icon-themes}[/usr/share/icons/hicolor/\*]{.term}   contains icon definitions used as defaults
  -------------------------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-themes-extra.md "gnome-themes-extra-3.28"){accesskey="p"}

    gnome-themes-extra-3.28

-   [Next](icon-naming-utils.md "icon-naming-utils-0.8.90"){accesskey="n"}

    icon-naming-utils-0.8.90

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

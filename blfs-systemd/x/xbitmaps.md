::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](mesa.md "Mesa-26.0.7"){accesskey="p"}

    Mesa-26.0.7

-   [Next](x7app.md "Xorg Applications"){accesskey="n"}

    Xorg Applications

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xbitmaps}xbitmaps-1.1.4 {#xbitmaps-1.1.4 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xbitmaps {#introduction-to-xbitmaps .sect2}

The [xbitmaps]{.application} package contains bitmap images used by multiple applications built in Xorg chapter.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/data/xbitmaps-1.1.4.tar.xz](https://www.x.org/pub/individual/data/xbitmaps-1.1.4.tar.xz){.ulink}

-   Download MD5 sum: 793992635c45250028eaec226af416fc

-   Download size: 112 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### xbitmaps Dependencies

#### Required

[util-macros-1.20.2](util-macros.md "util-macros-1.20.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of xbitmaps {#installation-of-xbitmaps .sect2}

Install [xbitmaps]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG
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
**Installed Directory:** [`$XORG_PREFIX`{.envar}/include/X11/bitmaps]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](mesa.md "Mesa-26.0.7"){accesskey="p"}

    Mesa-26.0.7

-   [Next](x7app.md "Xorg Applications"){accesskey="n"}

    Xorg Applications

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

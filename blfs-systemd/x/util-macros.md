::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorg7.md "Introduction to Xorg-7"){accesskey="p"}

    Introduction to Xorg-7

-   [Next](xorgproto.md "xorgproto-2025.1"){accesskey="n"}

    xorgproto-2025.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#util-macros}util-macros-1.20.2 {#util-macros-1.20.2 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to util-macros {#introduction-to-util-macros .sect2}

The [util-macros]{.application} package contains the [m4]{.application} macros used by all of the [Xorg]{.application} packages.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/util/util-macros-1.20.2.tar.xz](https://www.x.org/pub/individual/util/util-macros-1.20.2.tar.xz){.ulink}

-   Download MD5 sum: 5f683a1966834b0a6ae07b3680bcb863

-   Download size: 84 KB

-   Estimated disk space required: 524 KB

-   Estimated build time: less than 0.1 SBU
:::

### util-macros Dependencies

#### Required

[Xorg build environment](xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref} (should be set for the following instructions to work)
:::::

::: {.installation lang="en"}
## Installation of util-macros {#installation-of-util-macros .sect2}

Install [util-macros]{.application} by running the following commands:

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
**Installed Directory:** [`$XORG_PREFIX`{.envar}/share/pkgconfig and `$XORG_PREFIX`{.envar}/share/util-macros]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](xorg7.md "Introduction to Xorg-7"){accesskey="p"}

    Introduction to Xorg-7

-   [Next](xorgproto.md "xorgproto-2025.1"){accesskey="n"}

    xorgproto-2025.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorgproto.md "xorgproto-2025.1"){accesskey="p"}

    xorgproto-2025.1

-   [Next](libXdmcp.md "libXdmcp-1.1.5"){accesskey="n"}

    libXdmcp-1.1.5

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libXau}libXau-1.0.12 {#libxau-1.0.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libXau {#introduction-to-libxau .sect2}

The [libXau]{.application} package contains a library implementing the X11 Authorization Protocol. This is useful for restricting client access to the display.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/lib/libXau-1.0.12.tar.xz](https://www.x.org/pub/individual/lib/libXau-1.0.12.tar.xz){.ulink}

-   Download MD5 sum: 4c9f81acf00b62e5de56a912691bd737

-   Download size: 276 KB

-   Estimated disk space required: 2.9 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
:::

### libXau Dependencies

#### Required

[xorgproto-2025.1](xorgproto.md "xorgproto-2025.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libXau {#installation-of-libxau .sect2}

Install [libXau]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Library:** [libXau.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- -------------------------------------------------
  []{#libXau-x7}[`libXau.so`{.filename}]{.term}   is the library of X authority database routines
  ----------------------------------------------- -------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xorgproto.md "xorgproto-2025.1"){accesskey="p"}

    xorgproto-2025.1

-   [Next](libXdmcp.md "libXdmcp-1.1.5"){accesskey="n"}

    libXdmcp-1.1.5

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

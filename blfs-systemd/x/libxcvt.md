::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7lib.md "Xorg Libraries"){accesskey="p"}

    Xorg Libraries

-   [Next](xcb-util.md "xcb-util-0.4.1"){accesskey="n"}

    xcb-util-0.4.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxcvt}libxcvt-0.1.3 {#libxcvt-0.1.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxcvt {#introduction-to-libxcvt .sect2}

[libxcvt]{.application} is a library providing a standalone version of the X server implementation of the VESA CVT standard timing modelines generator. It is meant to be a direct replacement to the version formerly provided by the Xorg server.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/lib/libxcvt-0.1.3.tar.xz](https://www.x.org/pub/individual/lib/libxcvt-0.1.3.tar.xz){.ulink}

-   Download MD5 sum: 7fb9c51d33a680f724f34da41768b1d0

-   Download size: 12 KB

-   Estimated disk space required: 440 KB

-   Estimated build time: less than 0.1 SBU
:::

### libxcvt Dependencies

#### Required

[Xorg build environment](xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref} (should be set for the following instructions to work)
:::::

::: {.installation lang="en"}
## Installation of libxcvt {#installation-of-libxcvt .sect2}

Install [libxcvt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [cvt]{.segbody}
:::

::: seg
**Installed Library:** [libxcvt.so]{.segbody}
:::

::: seg
**Installed Directory:** [\$XORG_PREFIX/include/libxcvt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------
  []{#cvt}[[**cvt**]{.command}]{.term}               calculates VESA Coordinated Video Timing (CVT) modelines for use with X
  []{#libxcvt-lib}[`libxcvt.so`{.filename}]{.term}   contains functions for calculating VESA CVT
  -------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](x7lib.md "Xorg Libraries"){accesskey="p"}

    Xorg Libraries

-   [Next](xcb-util.md "xcb-util-0.4.1"){accesskey="n"}

    xcb-util-0.4.1

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

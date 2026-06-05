::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libxcvt.md "libxcvt-0.1.3"){accesskey="p"}

    libxcvt-0.1.3

-   [Next](xcb-utilities.md "XCB Utilities"){accesskey="n"}

    XCB Utilities

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xcb-util}xcb-util-0.4.1 {#xcb-util-0.4.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xcb-util {#introduction-to-xcb-util .sect2}

The [xcb-util]{.application} package provides additional extensions to the [XCB]{.application} library, many that were previously found in [Xlib]{.application}, but are not part of core X protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz](https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz){.ulink}

-   Download MD5 sum: 34d749eab0fd0ffd519ac64798d79847

-   Download size: 261 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### xcb-util Dependencies

#### Required

[libxcb-1.17.0](libxcb.md "libxcb-1.17.0"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for documentation)
:::::

::: {.installation lang="en"}
## Installation of xcb-util {#installation-of-xcb-util .sect2}

Install [xcb-util]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

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
**Installed Library:** [libxcb-util.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------
  []{#libxcb-util}[`libxcb-util.so`{.filename}]{.term}   Provides utility functions for other XCB utilities
  ------------------------------------------------------ ----------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libxcvt.md "libxcvt-0.1.3"){accesskey="p"}

    libxcvt-0.1.3

-   [Next](xcb-utilities.md "XCB Utilities"){accesskey="n"}

    XCB Utilities

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

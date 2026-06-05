::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xterm.md "xterm-410"){accesskey="p"}

    xterm-410

-   [Next](xinit.md "xinit-1.4.4"){accesskey="n"}

    xinit-1.4.4

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xclock}xclock-1.1.1 {#xclock-1.1.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xclock {#introduction-to-xclock .sect2}

The [xclock]{.application} package contains a simple clock application which is used in the default xinit configuration.

This package is provided for testing the completed Xorg installation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/app/xclock-1.1.1.tar.xz](https://www.x.org/pub/individual/app/xclock-1.1.1.tar.xz){.ulink}

-   Download MD5 sum: 1273e3f4c85f1801be11a5247c382d07

-   Download size: 156 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### xclock Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}
:::::

::: {.installation lang="en"}
## Installation of xclock {#installation-of-xclock .sect2}

Install [xclock]{.application} by running the following commands:

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
**Installed Programs:** [xclock]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------
  []{#xclock-bin}[[**xclock**]{.command}]{.term}   is an analog/digital clock for X
  ------------------------------------------------ ----------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xterm.md "xterm-410"){accesskey="p"}

    xterm-410

-   [Next](xinit.md "xinit-1.4.4"){accesskey="n"}

    xinit-1.4.4

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

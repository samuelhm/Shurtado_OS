::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](lzo.md "LZO-2.10"){accesskey="p"}

    LZO-2.10

-   [Next](nodejs.md "Node.js-24.16.0"){accesskey="n"}

    Node.js-24.16.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mtdev}mtdev-1.1.7 {#mtdev-1.1.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to mtdev {#introduction-to-mtdev .sect2}

The [mtdev]{.application} package contains Multitouch Protocol Translation Library which is used to transform all variants of kernel MT (Multitouch) events to the slotted type B protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://bitmath.org/code/mtdev/mtdev-1.1.7.tar.bz2](https://bitmath.org/code/mtdev/mtdev-1.1.7.tar.bz2){.ulink}

-   Download MD5 sum: 483ed7fdf7c1e7b7375c05a62848cce7

-   Download size: 296 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of mtdev {#installation-of-mtdev .sect2}

Install [mtdev]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [mtdev-test]{.segbody}
:::

::: seg
**Installed Library:** [libmtdev.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------
  []{#mtdev-test}[[**mtdev-test**]{.command}]{.term}   is a tool to test `libmtdev`{.filename}
  []{#libmtdev}[`libmtdev.so`{.filename}]{.term}       contains Multitouch Protocol Translation API functions
  ---------------------------------------------------- --------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lzo.md "LZO-2.10"){accesskey="p"}

    LZO-2.10

-   [Next](nodejs.md "Node.js-24.16.0"){accesskey="n"}

    Node.js-24.16.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

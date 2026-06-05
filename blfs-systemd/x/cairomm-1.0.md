::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](cairo.md "Cairo-1.18.4"){accesskey="p"}

    Cairo-1.18.4

-   [Next](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)"){accesskey="n"}

    libcairomm-1.16 (cairomm-1.18.0)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cairomm-1.0}libcairomm-1.0 (cairomm-1.14.5) {#libcairomm-1.0-cairomm-1.14.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libcairomm-1.0 {#introduction-to-libcairomm-1.0 .sect2}

The [libcairomm-1.0]{.application} package provides a C++ interface to [Cairo]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cairographics.org/releases/cairomm-1.14.5.tar.xz](https://www.cairographics.org/releases/cairomm-1.14.5.tar.xz){.ulink}

-   Download MD5 sum: 0974ef291d491f22df287f588580677d

-   Download size: 638 KB

-   Estimated disk space required: 9.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### libcairomm-1.0 Dependencies

#### Required

[Cairo-1.18.4](cairo.md "Cairo-1.18.4"){.xref} and [libsigc++-2.12.1](../general/libsigc.md "libsigc++-2.12.1"){.xref}

#### Recommended

[Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref} (for tests)

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libcairomm-1.0 {#installation-of-libcairomm-1.0 .sect2}

Install [Cairomm-1.0]{.application} by running the following commands:

``` userinput
mkdir bld &&
cd    bld &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D build-tests=true  \
      -D boost-shared=true &&
ninja
```

To run the test suite, run: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D build-tests=true`*: This switch is for building the unit tests. Remove if you have not installed [Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref}.

*`-D boost-shared=true`*: This switch has the package use the shared version of boost libraries. It is required if you have not installed the boost static libraries, and you have passed *`-D build-tests=true`*.

`-D build-documentation=true`{.option}: This switch builds the html documentation if doxygen is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libcairomm-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{lib,include}/cairomm-1.0 and /usr/share/{devhelp/books,doc}/cairomm-1.0 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------
  []{#libcairomm-1}[`libcairomm-1.0.so`{.filename}]{.term}   contains the [Cairo]{.application} API classes
  ---------------------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](cairo.md "Cairo-1.18.4"){accesskey="p"}

    Cairo-1.18.4

-   [Next](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)"){accesskey="n"}

    libcairomm-1.16 (cairomm-1.18.0)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

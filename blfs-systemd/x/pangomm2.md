::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pangomm.md "Pangomm-2.46.4"){accesskey="p"}

    Pangomm-2.46.4

-   [Next](qt6.md "Qt-6.11.1"){accesskey="n"}

    Qt-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pangomm2}Pangomm-2.56.1 {#pangomm-2.56.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pangomm {#introduction-to-pangomm .sect2}

The [Pangomm]{.application} package provides a C++ interface to [Pango]{.application}. This version is part of a new API for supporting gtkmm-4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/pangomm/2.56/pangomm-2.56.1.tar.xz](https://download.gnome.org/sources/pangomm/2.56/pangomm-2.56.1.tar.xz){.ulink}

-   Download MD5 sum: f3003015d87cb56c9cf731fa7a920a24

-   Download size: 728 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
:::

### Pangomm Dependencies

#### Required

[libcairomm-1.18.0](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)"){.xref}, [GLibmm-2.88.0](../general/glibmm2.md "GLibmm-2.88.0"){.xref} and [Pango-1.57.1](pango.md "Pango-1.57.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Pangomm {#installation-of-pangomm .sect2}

Install [Pangomm]{.application} by running the following commands:

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
**Installed Library:** [libpangomm-2.48.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pangomm-2.48, /usr/lib/pangomm-2.48, and /usr/share/{devhelp/books/pangomm-2.48,doc/pangomm-2.46.4}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ------------------------------------------------
  []{#libpangomm-2}[`libpangomm-2.48.so`{.filename}]{.term}   contains the [Pango]{.application} API classes
  ----------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](pangomm.md "Pangomm-2.46.4"){accesskey="p"}

    Pangomm-2.46.4

-   [Next](qt6.md "Qt-6.11.1"){accesskey="n"}

    Qt-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

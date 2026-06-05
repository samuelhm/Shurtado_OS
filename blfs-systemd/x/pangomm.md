::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pango.md "Pango-1.57.1"){accesskey="p"}

    Pango-1.57.1

-   [Next](pangomm2.md "Pangomm-2.56.1"){accesskey="n"}

    Pangomm-2.56.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pangomm}Pangomm-2.46.4 {#pangomm-2.46.4 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pangomm {#introduction-to-pangomm .sect2}

The [Pangomm]{.application} package provides a C++ interface to [Pango]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/pangomm/2.46/pangomm-2.46.4.tar.xz](https://download.gnome.org/sources/pangomm/2.46/pangomm-2.46.4.tar.xz){.ulink}

-   Download MD5 sum: 5947d35899db62813531d7ea8faee60c

-   Download size: 680 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.2 SBU
:::

### Pangomm Dependencies

#### Required

[libcairomm-1.14.5](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)"){.xref}, [GLibmm-2.66.8](../general/glibmm.md "GLibmm-2.66.8"){.xref} and [Pango-1.57.1](pango.md "Pango-1.57.1"){.xref}
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
**Installed Library:** [libpangomm-1.4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pangomm-1.4, /usr/lib/pangomm-1.4, and /usr/share/{devhelp/books/pangomm-1.4,doc/pangomm-2.46.4}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------
  []{#libpangomm-1}[`libpangomm-1.4.so`{.filename}]{.term}   contains the [Pango]{.application} API classes
  ---------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](pango.md "Pango-1.57.1"){accesskey="p"}

    Pango-1.57.1

-   [Next](pangomm2.md "Pangomm-2.56.1"){accesskey="n"}

    Pangomm-2.56.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

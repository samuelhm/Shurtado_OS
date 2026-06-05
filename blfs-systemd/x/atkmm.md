::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](lib.md "Graphical Environment Libraries"){accesskey="p"}

    Graphical Environment Libraries

-   [Next](at-spi2-core.md "at-spi2-core-2.60.4"){accesskey="n"}

    at-spi2-core-2.60.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#atkmm}Atkmm-2.28.5 {#atkmm-2.28.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Atkmm {#introduction-to-atkmm .sect2}

[Atkmm]{.application} is the official C++ interface for the ATK accessibility toolkit library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/atkmm/2.28/atkmm-2.28.5.tar.xz](https://download.gnome.org/sources/atkmm/2.28/atkmm-2.28.5.tar.xz){.ulink}

-   Download MD5 sum: c9bdc196eed368c274177b0c1caf140c

-   Download size: 596 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
:::

### Atkmm Dependencies

#### Required

[at-spi2-core-2.60.4](at-spi2-core.md "at-spi2-core-2.60.4"){.xref} and [GLibmm-2.66.8](../general/glibmm.md "GLibmm-2.66.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Atkmm {#installation-of-atkmm .sect2}

Install [Atkmm]{.application} by running the following commands:

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
**Installed Library:** [libatkmm-1.6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib}/atkmm-1.6 and /usr/share/{devhelp/books/atkmm-1.6,doc/atkmm-2.28.5}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------
  []{#libatkmm-1}[`libatkmm-1.6.so`{.filename}]{.term}   contains the [ATK]{.application} API classes
  ------------------------------------------------------ ----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lib.md "Graphical Environment Libraries"){accesskey="p"}

    Graphical Environment Libraries

-   [Next](at-spi2-core.md "at-spi2-core-2.60.4"){accesskey="n"}

    at-spi2-core-2.60.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libmng.md "libmng-2.0.3"){accesskey="p"}

    libmng-2.0.3

-   [Next](libpng.md "libpng-1.6.58"){accesskey="n"}

    libpng-1.6.58

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmypaint}libmypaint-1.6.1 {#libmypaint-1.6.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libmypaint {#introduction-to-libmypaint .sect2}

The [libmypaint]{.application} package, a.k.a. "brushlib", is a library for making brushstrokes which is used by MyPaint and other projects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mypaint/libmypaint/releases/download/v1.6.1/libmypaint-1.6.1.tar.xz](https://github.com/mypaint/libmypaint/releases/download/v1.6.1/libmypaint-1.6.1.tar.xz){.ulink}

-   Download MD5 sum: 7f1dab2d30ce8a3f494354c7c77a2977

-   Download size: 508 KB

-   Estimated disk space required: 11 MB (add 1 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.3 SBU for tests)
:::

### libmypaint Dependencies

#### Required

[Intltool-0.51.0](intltool.md "Intltool-0.51.0"){.xref} and [JSON-C-0.18](json-c.md "JSON-C-0.18"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (to create XML docs), [gegl (0.3 versions only)](https://download.gimp.org/pub/gegl/0.3/){.ulink} and [gperftools](https://github.com/gperftools/gperftools){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libmypaint {#installation-of-libmypaint .sect2}

Install [libmypaint]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
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
**Installed Programs:** [None.]{.segbody}
:::

::: seg
**Installed Libraries:** [libmypaint.so (and optionally libmypaint-gegl.so which is not used by any packages in this book).]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libmypaint]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------
  []{#libmypaint-lib}[`libmypaint.so`{.filename}]{.term}   contains functions for making brushstrokes
  -------------------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libmng.md "libmng-2.0.3"){accesskey="p"}

    libmng-2.0.3

-   [Next](libpng.md "libpng-1.6.58"){accesskey="n"}

    libpng-1.6.58

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

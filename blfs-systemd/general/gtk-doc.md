::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](graphviz.md "Graphviz-15.0.0"){accesskey="p"}

    Graphviz-15.0.0

-   [Next](highlight.md "Highlight-4.20"){accesskey="n"}

    Highlight-4.20

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtk-doc}GTK-Doc-1.36.1 {#gtk-doc-1.36.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GTK-Doc {#introduction-to-gtk-doc .sect2}

The [GTK-Doc]{.application} package contains a code documenter. This is useful for extracting specially formatted comments from the code to create API documentation. This package is [*optional*]{.emphasis}; if it is not installed, packages will not build the documentation. This does not mean that you will not have any documentation. If [GTK-Doc]{.application} is not available, the install process will copy any pre-built documentation to your system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtk-doc/1.36/gtk-doc-1.36.1.tar.xz](https://download.gnome.org/sources/gtk-doc/1.36/gtk-doc-1.36.1.tar.xz){.ulink}

-   Download MD5 sum: 819b11aa730cf5108f1df3f0eec91cf9

-   Download size: 584 KB

-   Estimated disk space required: 16 MB (add 2.2 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### GTK-Doc Dependencies

#### Required

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, and [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}

#### Optional

For tests: [dblatex](https://sourceforge.net/projects/dblatex/){.ulink} or [fop-2.11](../pst/fop.md "fop-2.11"){.xref} (XML PDF support), [Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}, and Python modules [lxml-6.1.1](python-modules.md#lxml "lxml-6.1.1"){.xref}, [parameterized](https://pypi.org/project/parameterized/){.ulink}, and [yelp-tools](https://download.gnome.org/sources/yelp-tools){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The optional python modules above can be easily installed with the [**pip3**]{.command} command.
:::
::::::

::: {.installation lang="en"}
## Installation of GTK-Doc {#installation-of-gtk-doc .sect2}

Install [GTK-Doc]{.application} by running the following commands:

``` userinput
mkdir -p build &&
cd       build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=false      &&
ninja
```

The test suite will hang if the package (or a previous version) is not already installed.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, ensure you have the python module [*parameterized*]{.emphasis} installed, and issue:

``` userinput
meson configure -D tests=true &&
ninja test
```

Some tests will fail depending on optionally installed packages.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D tests=false`*: prevents building tests. The default is *`true`*, but requires the [*parameterized*]{.emphasis} python module.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gtkdocize, gtkdoc-check, gtkdoc-depscan, gtkdoc-fixxref, gtkdoc-mkdb, gtkdoc-mkhtml, gtkdoc-mkhtml2, gtkdoc-mkman, gtkdoc-mkpdf, gtkdoc-rebase, gtkdoc-scan, and gtkdoc-scangobj]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/GtkDoc, /usr/share/gtk-doc, and /usr/share/help/\*/gtk-doc-manual]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gtkdoc}[[**gtkdoc\***]{.command}]{.term}   these are all shell, or [Python]{.application} scripts used by package `Makefile`{.filename} scripts to generate documentation for the package being built
  ---------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](graphviz.md "Graphviz-15.0.0"){accesskey="p"}

    Graphviz-15.0.0

-   [Next](highlight.md "Highlight-4.20"){accesskey="n"}

    Highlight-4.20

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

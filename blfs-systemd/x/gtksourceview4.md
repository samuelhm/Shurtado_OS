::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview.md "gtksourceview-3.24.11"){accesskey="p"}

    gtksourceview-3.24.11

-   [Next](gtksourceview5.md "gtksourceview5-5.20.0"){accesskey="n"}

    gtksourceview5-5.20.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtksourceview4}gtksourceview4-4.8.4 {#gtksourceview4-4.8.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GtkSourceView {#introduction-to-gtksourceview .sect2}

The [GtkSourceView]{.application} package contains libraries used for extending the [GTK+]{.application} text functions to include syntax highlighting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtksourceview/4.8/gtksourceview-4.8.4.tar.xz](https://download.gnome.org/sources/gtksourceview/4.8/gtksourceview-4.8.4.tar.xz){.ulink}

-   Download MD5 sum: 2bf056caaae27654ec3a5930dd5597d3

-   Download size: 1.1 MB

-   Estimated disk space required: 71 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests; both using parallelism=4)
:::

### GtkSourceView Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref} (or [dblatex](https://sourceforge.net/projects/dblatex/){.ulink}), and [Glade](https://glade.gnome.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GtkSourceView {#installation-of-gtksourceview .sect2}

Install [GtkSourceView]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue [**ninja test**]{.command}. The tests need to be run in a graphical environment.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D gtk_doc=true`{.option}: This option is normally used if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgtksourceview-4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,share,share/gtk-doc/html}/gtksourceview-4]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------
  []{#libgtksourceview-4}[`libgtksourceview-4.so`{.filename}]{.term}   contains function extensions for the GtkTextView widget
  -------------------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtksourceview.md "gtksourceview-3.24.11"){accesskey="p"}

    gtksourceview-3.24.11

-   [Next](gtksourceview5.md "gtksourceview5-5.20.0"){accesskey="n"}

    gtksourceview5-5.20.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

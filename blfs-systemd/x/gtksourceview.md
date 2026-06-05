::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtk-vnc.md "gtk-vnc-1.5.0"){accesskey="p"}

    gtk-vnc-1.5.0

-   [Next](gtksourceview4.md "gtksourceview4-4.8.4"){accesskey="n"}

    gtksourceview4-4.8.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtksourceview}gtksourceview-3.24.11 {#gtksourceview-3.24.11 .sect1}

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
-   Download (HTTP): [https://download.gnome.org/sources/gtksourceview/3.24/gtksourceview-3.24.11.tar.xz](https://download.gnome.org/sources/gtksourceview/3.24/gtksourceview-3.24.11.tar.xz){.ulink}

-   Download MD5 sum: b748da426a7d64e1304f0c532b0f2a67

-   Download size: 1.4 MB

-   Estimated disk space required: 80 MB (with tests)

-   Estimated build time: 0.2 SBU (using parallelism=4; with tests)
:::

### GtkSourceView Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref} (or [dblatex](https://sourceforge.net/projects/dblatex/){.ulink}), and [Glade](https://glade.gnome.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GtkSourceView {#installation-of-gtksourceview .sect2}

First, fix building this package with gcc-14 and later:

``` userinput
sed -e 's/g_object_ref (buffer)/g_object_ref (GTK_SOURCE_BUFFER (buffer))/' \
    -i gtksourceview/gtksourceview.c
```

Install [GtkSourceView]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To test the results, issue [**make check**]{.command}. The tests need to be run in a graphical environment.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgtksourceview-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,share,share/gtk-doc/html}/gtksourceview-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------
  []{#libgtksourceview-3}[`libgtksourceview-3.0.so`{.filename}]{.term}   contains function extensions for the GtkTextView widget
  ---------------------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtk-vnc.md "gtk-vnc-1.5.0"){accesskey="p"}

    gtk-vnc-1.5.0

-   [Next](gtksourceview4.md "gtksourceview4-4.8.4"){accesskey="n"}

    gtksourceview4-4.8.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

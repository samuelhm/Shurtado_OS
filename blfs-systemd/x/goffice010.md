::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glu.md "GLU-9.0.3"){accesskey="p"}

    GLU-9.0.3

-   [Next](graphene.md "Graphene-1.10.8"){accesskey="n"}

    Graphene-1.10.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#goffice010}GOffice-0.10.61 {#goffice-0.10.61 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GOffice {#introduction-to-goffice .sect2}

The [GOffice]{.application} package contains a library of [GLib]{.application}/[GTK]{.application} document centric objects and utilities. This is useful for performing common operations for document centric applications that are conceptually simple, but complex to implement fully. Some of the operations provided by the [GOffice]{.application} library include support for plugins, load/save routines for application documents and undo/redo functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/goffice/0.10/goffice-0.10.61.tar.xz](https://download.gnome.org/sources/goffice/0.10/goffice-0.10.61.tar.xz){.ulink}

-   Download MD5 sum: a8477240f8c358bd0add4abca40e3208

-   Download size: 2.5 MB

-   Estimated disk space required: 83 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
:::

### GOffice Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, [libgsf-1.14.58](../general/libgsf.md "libgsf-1.14.58"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref}

#### Optional

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [Lasem](https://download.gnome.org/sources/lasem/){.ulink}, and [libspectre](https://www.freedesktop.org/wiki/Software/libspectre){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GOffice {#installation-of-goffice .sect2}

Install [GOffice]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

If you wish to run the tests, issue: [**make check**]{.command}.

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
**Installed Libraries:** [libgoffice-0.10.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libgoffice-0.10, /usr/{lib,share}/goffice, and /usr/share/gtk-doc/html/goffice-0.10]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------
  []{#libgoffice010}[`libgoffice-0.10.so`{.filename}]{.term}   contains API functions to provide support for document centric objects and utilities
  ------------------------------------------------------------ --------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](glu.md "GLU-9.0.3"){accesskey="p"}

    GLU-9.0.3

-   [Next](graphene.md "Graphene-1.10.8"){accesskey="n"}

    Graphene-1.10.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

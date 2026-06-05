::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview4.md "gtksourceview4-4.8.4"){accesskey="p"}

    gtksourceview4-4.8.4

-   [Next](imlib2.md "imlib2-1.12.6"){accesskey="n"}

    imlib2-1.12.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtksourceview5}gtksourceview5-5.20.0 {#gtksourceview5-5.20.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GtkSourceView {#introduction-to-gtksourceview .sect2}

The [GtkSourceView]{.application} package contains a library used for extending the [GTK]{.application} text functions to include syntax highlighting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtksourceview/5.20/gtksourceview-5.20.0.tar.xz](https://download.gnome.org/sources/gtksourceview/5.20/gtksourceview-5.20.0.tar.xz){.ulink}

-   Download MD5 sum: 08a754c0b10c05c6e74f77695e6e04ce

-   Download size: 1.2 MB

-   Estimated disk space required: 155 MB

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
:::

### GtkSourceView Dependencies

#### Required

[GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}, and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}
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

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D documentation=true`{.option}: Use this switch if you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to generate the API documentation.

`-D sysprof=true`{.option}: Use this switch if you have [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink} installed and wish to build with sysprof profiler support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgtksourceview-5.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gtksourceview-5 and /usr/share/gtksourceview-5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------
  []{#libgtksourceview-5}[`libgtksourceview-5.so`{.filename}]{.term}   contains function extensions for the GtkTextView widget
  -------------------------------------------------------------------- ---------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtksourceview4.md "gtksourceview4-4.8.4"){accesskey="p"}

    gtksourceview4-4.8.4

-   [Next](imlib2.md "imlib2-1.12.6"){accesskey="n"}

    imlib2-1.12.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

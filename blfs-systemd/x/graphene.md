::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](goffice010.md "GOffice-0.10.61"){accesskey="p"}

    GOffice-0.10.61

-   [Next](gtk3.md "GTK-3.24.52"){accesskey="n"}

    GTK-3.24.52

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#graphene}Graphene-1.10.8 {#graphene-1.10.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Graphene {#introduction-to-graphene .sect2}

The [Graphene]{.application} package provides a thin layer of types for graphics libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/graphene/1.10/graphene-1.10.8.tar.xz](https://download.gnome.org/sources/graphene/1.10/graphene-1.10.8.tar.xz){.ulink}

-   Download MD5 sum: 169e3c507b5a5c26e9af492412070b81

-   Download size: 328 KB

-   Estimated disk space required: 7.6 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Graphene Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)
:::::

::: {.installation lang="en"}
## Installation of Graphene {#installation-of-graphene .sect2}

Install [Graphene]{.application} by running the following commands:

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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=true`{.option}: Use this switch if you have [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to generate the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgraphene-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/graphene-1.0, /usr/lib/graphene-1.0, /usr/{libexec,share}/installed-tests/graphene-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------
  []{#libgraphene}[`libgraphene-1.0.so`{.filename}]{.term}   contains functions that provide a thin layer of types for graphics libraries
  ---------------------------------------------------------- ------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](goffice010.md "GOffice-0.10.61"){accesskey="p"}

    GOffice-0.10.61

-   [Next](gtk3.md "GTK-3.24.52"){accesskey="n"}

    GTK-3.24.52

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

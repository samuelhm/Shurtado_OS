::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](aalib.md "AAlib-1.4rc5"){accesskey="p"}

    AAlib-1.4rc5

-   [Next](exiv2.md "Exiv2-0.28.8"){accesskey="n"}

    Exiv2-0.28.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#babl}babl-0.1.126 {#babl-0.1.126 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Babl {#introduction-to-babl .sect2}

The [Babl]{.application} package is a dynamic, any to any, pixel format translation library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gimp.org/pub/babl/0.1/babl-0.1.126.tar.xz](https://download.gimp.org/pub/babl/0.1/babl-0.1.126.tar.xz){.ulink}

-   Download MD5 sum: bfe3e2aecbbd419494723495aec586de

-   Download size: 320 KB

-   Estimated disk space required: 17 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
:::

### Babl Dependencies

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, and [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}

#### Optional

[w3m](https://w3m.sourceforge.net/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Babl {#installation-of-babl .sect2}

Install [Babl]{.application} by running the following commands:

``` userinput
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&

install -v -m755 -d                         /usr/share/gtk-doc/html/babl/graphics &&
install -v -m644 docs/*.{css,html}          /usr/share/gtk-doc/html/babl          &&
install -v -m644 docs/graphics/*.{html,svg} /usr/share/gtk-doc/html/babl/graphics
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**install -v -m755 -d /usr/share/gtk-doc/html/babl/graphics**]{.command}: This and the subsequent commands install the library html documentation under `/usr/share/gtk-doc/html`{.filename} where other gtk packages put the programmer-oriented documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libbabl-0.1.so and libraries in /usr/lib/babl-0.1]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib}/babl-0.1 and /usr/share/gtk-doc/html/babl]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------
  []{#libbabl}[`libbabl-0.1.so`{.filename}]{.term}   contains functions to access BablFishes to convert between formats
  -------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](aalib.md "AAlib-1.4rc5"){accesskey="p"}

    AAlib-1.4rc5

-   [Next](exiv2.md "Exiv2-0.28.8"){accesskey="n"}

    Exiv2-0.28.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

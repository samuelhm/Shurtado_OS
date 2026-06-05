::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libraw.md "libraw-0.22.1"){accesskey="p"}

    libraw-0.22.1

-   [Next](libspiro.md "Libspiro-20220722"){accesskey="n"}

    Libspiro-20220722

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#librsvg}librsvg-2.62.3 {#librsvg-2.62.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to librsvg {#introduction-to-librsvg .sect2}

The [librsvg]{.application} package contains a library and tools used to manipulate, convert and view Scalable Vector Graphic (SVG) images.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/librsvg/2.62/librsvg-2.62.3.tar.xz](https://download.gnome.org/sources/librsvg/2.62/librsvg-2.62.3.tar.xz){.ulink}

-   Download MD5 sum: bf6d56ffe4cfa5426cf1a67bcabdf5ce

-   Download size: 6.5 MB

-   Estimated disk space required: 2.0 GB (with tests; 18 MB installed)

-   Estimated build time: 0.6 SBU (add 0.3 SBU for tests; both using parallelism=4)
:::

### librsvg Dependencies

#### Required

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [cargo-c-0.10.23](cargo-c.md "cargo-c-0.10.23"){.xref}, and [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::

#### Recommended

[gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[dav1d-1.5.3](../multimedia/dav1d.md "dav1d-1.5.3"){.xref} (to support embedded AVIF in SVG), [docutils-0.23](python-modules.md#docutils "docutils-0.23"){.xref} (for man pages), and [Gi-DocGen-2026.1](python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (for documentation)
::::::

::: {.installation lang="en"}
## Installation of librsvg {#installation-of-librsvg .sect2}

First, fix the installation path of the API documentation:

``` userinput
sed -e "/OUTDIR/s|,| / 'librsvg-2.62.3', '--no-namespace-dir',|" \
    -e '/output/s|Rsvg-2.0|librsvg-2.62.3|'                      \
    -i doc/meson.build
```

Install [librsvg]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue:

``` userinput
meson test -v
```

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
**Installed Programs:** [rsvg-convert]{.segbody}
:::

::: seg
**Installed Library:** [librsvg-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/librsvg-2.0 and /usr/share/doc/librsvg-2.62.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------
  []{#rsvg-convert}[[**rsvg-convert**]{.command}]{.term}   is used to convert images into PNG, PDF, PS, SVG and other formats
  []{#librsvg-2}[`librsvg-2.so`{.filename}]{.term}         provides the functions to render Scalable Vector Graphics
  -------------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libraw.md "libraw-0.22.1"){accesskey="p"}

    libraw-0.22.1

-   [Next](libspiro.md "Libspiro-20220722"){accesskey="n"}

    Libspiro-20220722

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](at-spi2-core.md "at-spi2-core-2.60.4"){accesskey="p"}

    at-spi2-core-2.60.4

-   [Next](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)"){accesskey="n"}

    libcairomm-1.0 (cairomm-1.14.5)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cairo}Cairo-1.18.4 {#cairo-1.18.4 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Cairo {#introduction-to-cairo .sect2}

[Cairo]{.application} is a 2D graphics library with support for multiple output devices. Currently supported output targets include the [X]{.application} Window System, Win32, image buffers, PostScript, PDF and SVG. Experimental backends include OpenGL, Quartz and XCB file output. [Cairo]{.application} is designed to produce consistent output on all output media while taking advantage of display hardware acceleration when available (e.g. through the X Render Extension). The [Cairo]{.application} API provides operations similar to the drawing operators of PostScript and PDF. Operations in [Cairo]{.application} include stroking and filling cubic Bézier splines, transforming and compositing translucent images, and antialiased text rendering. All drawing operations can be transformed by any [affine transformation](https://en.wikipedia.org/wiki/Affine_transformation){.ulink} (scale, rotation, shear, etc.)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cairographics.org/releases/cairo-1.18.4.tar.xz](https://www.cairographics.org/releases/cairo-1.18.4.tar.xz){.ulink}

-   Download MD5 sum: db575fb41bbda127e0147e401f36f8ac

-   Download size: 31 MB

-   Estimated disk space required: 95 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Cairo Dependencies

#### Required

[libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref} and [Pixman-0.46.4](../general/pixman.md "Pixman-0.46.4"){.xref}

#### Recommended

[Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (required for most GUIs), and [Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Optional

[ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libdrm-2.4.134](libdrm.md "Libdrm-2.4.134"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [LZO-2.10](../general/lzo.md "LZO-2.10"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink}, and [libspectre](https://www.freedesktop.org/wiki/Software/libspectre/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There is a circular dependency between cairo and harfbuzz. If cairo is built before harfbuzz, it is necessary to rebuild cairo after harfbuzz in order to build pango.
:::
::::::

::: {.installation lang="en"}
## Installation of Cairo {#installation-of-cairo .sect2}

Install [Cairo]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not have a working test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D xlib-xcb=enabled`{.option}: This switch enables several experimental Xlib/XCB functions used by some window managers.

`-D gtk_doc=true`{.option}: Use this parameter if GTK-Doc is installed and you wish to create and install the documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cairo-trace]{.segbody}
:::

::: seg
**Installed Libraries:** [libcairo.so, libcairo-gobject.so, and libcairo-script-interpreter.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/cairo and /usr/lib/cairo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
  []{#cairo-trace}[[**cairo-trace**]{.command}]{.term}                                   generates a log of all calls made by an application to [Cairo]{.application}
  []{#libcairo}[`libcairo.so`{.filename}]{.term}                                         contains the 2D graphics functions required for rendering to the various output targets
  []{#libcairo-gobject}[`libcairo-gobject.so`{.filename}]{.term}                         contains functions that integrate [Cairo]{.application} with [Glib]{.application}'s GObject type system
  []{#libcairo-script-interpreter}[`libcairo-script-interpreter.so`{.filename}]{.term}   contains the script interpreter functions for executing and manipulating [Cairo]{.application} execution traces
  -------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](at-spi2-core.md "at-spi2-core-2.60.4"){accesskey="p"}

    at-spi2-core-2.60.4

-   [Next](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)"){accesskey="n"}

    libcairomm-1.0 (cairomm-1.14.5)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

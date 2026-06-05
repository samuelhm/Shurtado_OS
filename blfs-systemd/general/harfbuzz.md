::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](graphite2.md "Graphite2-1.3.14"){accesskey="p"}

    Graphite2-1.3.14

-   [Next](imath.md "Imath-3.2.2"){accesskey="n"}

    Imath-3.2.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#harfbuzz}harfBuzz-14.2.1 {#harfbuzz-14.2.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Harfbuzz {#introduction-to-harfbuzz .sect2}

The [HarfBuzz]{.application} package contains an OpenType text shaping engine.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/harfbuzz/harfbuzz/releases/download/14.2.1/harfbuzz-14.2.1.tar.xz](https://github.com/harfbuzz/harfbuzz/releases/download/14.2.1/harfbuzz-14.2.1.tar.xz){.ulink}

-   Download MD5 sum: dda477eb1b44ac816ec1a8e4effee1af

-   Download size: 19 MB

-   Estimated disk space required: 164 MB (with tests)

-   Estimated build time: 0.9 SBU (with tests; both using parallelism=4)
:::

### HarfBuzz Dependencies

#### Recommended

[FreeType-2.14.3](freetype2.md "FreeType-2.14.3"){.xref}, [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (required for Pango; GObject Introspection required for building GNOME), [Graphite2-1.3.14](graphite2.md "Graphite2-1.3.14"){.xref} (required for building [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} or [LibreOffice-26.2.2.2](../xsoft/libreoffice.md "LibreOffice-26.2.2"){.xref} with system harfbuzz), and [ICU-78.3](icu.md "icu-78.3"){.xref}

#### Optional

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref} (circular: build cairo and all its recommended dependencies, including harfbuzz, first, then rebuild harfbuzz if the cairo backend is needed), [git-2.54.0](git.md "Git-2.54.0"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [GLEW-2.3.1](../x/glew.md "GLEW-2.3.1"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, and [glfw](https://linuxfromscratch.org/slfs/view/dev/graph/glfw.md){.ulink} (all three for the [hb-gpu]{.application} utility), [FontTools](https://pypi.org/project/FontTools/){.ulink} (Python 3 module, for the test suite), [ragel](https://www.colm.net/open-source/ragel/){.ulink}, and [wasm-micro-runtime](https://github.com/bytecodealliance/wasm-micro-runtime){.ulink}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Recommended dependencies are not strictly required to build the package. However, you might not get expected results at runtime if you don't install them. Please do not report bugs with this package if you [*have not*]{.emphasis} installed the recommended dependencies.
:::
::::::

::: {.installation lang="en"}
## Installation of HarfBuzz {#installation-of-harfbuzz .sect2}

Install [HarfBuzz]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D graphite2=enabled &&
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

*`-D graphite2=enabled`*: This switch enables [Graphite2]{.application} support, which is required for building [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} or [LibreOffice-26.2.2.2](../xsoft/libreoffice.md "LibreOffice-26.2.2"){.xref} with system harfbuzz.

`-D docs=disabled`{.option}: If [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} is installed, the documentation is built and installed. This switch prevents that.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [hb-info, hb-raster, hb-shape, hb-subset, hb-vector, and hb-view (only if Cairo is installed)]{.segbody}
:::

::: seg
**Installed Libraries:** [libharfbuzz.so, libharfbuzz-cairo.so (only if Cairo is installed), libharfbuzz-gobject.so, libharfbuzz-gpu.so, libharfbuzz-icu.so, libharfbuzz-raster.so, libharfbuzz-subset.so, and libharfbuzz-vector.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/harfbuzz, /usr/lib/cmake/harfbuzz, and /usr/share/gtk-doc/html/harfbuzz (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#hb-info}[[**hb-info**]{.command}]{.term}                           is used for gathering information about fonts installed on the system
  []{#hb-raster}[[**hb-raster**]{.command}]{.term}                       is used to render shaped text as a raster image using a given font
  []{#hb-shape}[[**hb-shape**]{.command}]{.term}                         is used for the conversion of text strings into positioned glyphs
  []{#hb-subset}[[**hb-subset**]{.command}]{.term}                       is used to create subsets of fonts, and display text using them
  []{#hb-vector}[[**hb-vector**]{.command}]{.term}                       is used to draw text in SVG format with a given font
  []{#hb-view}[[**hb-view**]{.command}]{.term}                           displays a graphical view of a string shape using a particular font as a set of glyphs. The output format is automatically defined by the file extension, the supported ones being ansi/png/svg/pdf/ps/eps. For example: [**hb-view --output-file=hello.png /usr/share/fonts/dejavu/DejaVuSans.ttf "Hello World."**]{.command}
  []{#libharfbuzz}[`libharfbuzz.so`{.filename}]{.term}                   is the HarfBuzz text shaping library
  []{#libharfbuzz-cairo}[`libharfbuzz-cairo.so`{.filename}]{.term}       provides Cairo integration for the Harfbuzz text shaping library
  []{#libharfbuzz-gobject}[`libharfbuzz-gobject.so`{.filename}]{.term}   provides GObject integration for the HarfBuzz text shaping library
  []{#libharfbuzz-gpu}[`libharfbuzz-gpu.so`{.filename}]{.term}           provides API functions for encoding glyph outlines on the CPU into compact blobs that the GPU decodes and rasterizes directly into a fragment shader
  []{#libharfbuzz-icu}[`libharfbuzz-icu.so`{.filename}]{.term}           provides ICU integration for the HarfBuzz text shaping library
  []{#libharfbuzz-raster}[`libharfbuzz-raster.so`{.filename}]{.term}     provides API functions for rasterizing glyphs to bitmaps, including color fonts
  []{#libharfbuzz-subset}[`libharfbuzz-subset.so`{.filename}]{.term}     provides API functions for performing subsetting operations on font files
  []{#libharfbuzz-vector}[`libharfbuzz-vector.so`{.filename}]{.term}     provides API functions for outputting glyphs to vector formats, including color fonts. Only SVG is currently supported, but more formats may come later
  ---------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](graphite2.md "Graphite2-1.3.14"){accesskey="p"}

    Graphite2-1.3.14

-   [Next](imath.md "Imath-3.2.2"){accesskey="n"}

    Imath-3.2.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

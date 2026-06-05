::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](fribidi.md "FriBidi-1.0.16"){accesskey="p"}

    FriBidi-1.0.16

-   [Next](giflib.md "giflib-6.1.3"){accesskey="n"}

    giflib-6.1.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gegl}gegl-0.4.70 {#gegl-0.4.70 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gegl {#introduction-to-gegl .sect2}

This package provides the GEneric Graphics Library, which is a graph based image processing format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gimp.org/pub/gegl/0.4/gegl-0.4.70.tar.xz](https://download.gimp.org/pub/gegl/0.4/gegl-0.4.70.tar.xz){.ulink}

-   Download MD5 sum: 2442d5f0cb97bcc1b50d2082e29c9375

-   Download size: 5.9 MB

-   Estimated disk space required: 159 MB (With tests)

-   Estimated build time: 0.9 SBU (with tests, both with parallelism=4)
:::

#### Required

[babl-0.1.126](babl.md "babl-0.1.126"){.xref} and [JSON-GLib-1.10.8](json-glib.md "JSON-GLib-1.10.8"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (build with pango and libpng), [Pygments-2.20.0](python-modules.md#pygments "Pygments-2.20.0"){.xref}, and [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}

#### Optional

[asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref}, [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref} (currently broken), [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [gexiv2-0.16.0](../gnome/gexiv2.md "gexiv2-0.16.0"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [jasper-4.2.9](jasper.md "jasper-4.2.9"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libraw-0.22.1](libraw.md "libraw-0.22.1"){.xref}, [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, [libspiro-20220722](libspiro.md "Libspiro-20220722"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [luajit-20260213](luajit.md "luajit-20260213"){.xref}, [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}, [Poppler-26.06.0](poppler.md "Poppler-26.06.0"){.xref}, [Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}, [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref}, [v4l-utils-1.32.0](../multimedia/v4l-utils.md "v4l-utils-1.32.0"){.xref}, [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}, [lensfun](https://lensfun.github.io/){.ulink}, [libnsgif](https://www.netsurf-browser.org/projects/libnsgif/){.ulink}, [libumfpack](https://faculty.cse.tamu.edu/davis/suitesparse.md){.ulink}, [maxflow](https://github.com/gerddie/maxflow){.ulink}, [MRG](https://github.com/hodefoting/mrg/releases){.ulink}, [OpenCL](https://www.khronos.org/opencl/){.ulink}, [OpenEXR](https://www.openexr.com){.ulink}, [poly2tri-c](https://github.com/KyleLink/poly2tri-c){.ulink}, [source-highlight](https://www.gnu.org/software/src-highlite/){.ulink}, and [w3m](https://w3m.sourceforge.net/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of gegl {#installation-of-gegl .sect2}

If you are installing over a previous version of [gegl]{.application}, one of the modules will need to be removed. As the `root`{.systemitem} user, run the following command to remove it:

``` root
rm -f /usr/lib/gegl-0.4/vector-fill.so
```

Install [gegl]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests, issue: [**ninja test**]{.command}. Many tests are skipped depending on what optional dependencies are installed. Fourteen tests are known to fail in the `gegl:ff-load-save`{.filename} portion of the test suite due to incompatibilities with recent versions of ffmpeg.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D docs=true`{.option}: Use this switch to build and install the documentation (requires [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}).
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gegl and gegl-imgcmp]{.segbody}
:::

::: seg
**Installed Libraries:** [libgegl-0.4.so, libgegl-npd-0.4.so, and modules in /usr/lib/gegl-0.4]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/gegl-0.4 and /usr/include/gegl-0.4]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------
  []{#gegl-prog}[[**gegl**]{.command}]{.term}                    is a commandline tool for interfacing with the gegl library
  []{#gegl-imgcmp}[[**gegl-imgcmp**]{.command}]{.term}           is a simple image difference detection tool for use in regression testing
  []{#libgegl-0.4}[`libgegl-0.4.so`{.filename}]{.term}           provides infrastructure to do demand based cached non destructive image editing on larger than RAM buffers
  []{#libgegl-npd-0.4}[`libgegl-npd-0.4.so`{.filename}]{.term}   is the GEGL N-point image deformation library
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](fribidi.md "FriBidi-1.0.16"){accesskey="p"}

    FriBidi-1.0.16

-   [Next](giflib.md "giflib-6.1.3"){accesskey="n"}

    giflib-6.1.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

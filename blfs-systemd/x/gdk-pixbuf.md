::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](freeglut.md "Freeglut-3.8.0"){accesskey="p"}

    Freeglut-3.8.0

-   [Next](glew.md "GLEW-2.3.1"){accesskey="n"}

    GLEW-2.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gdk-pixbuf}gdk-pixbuf-2.44.6 {#gdk-pixbuf-2.44.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gdk Pixbuf {#introduction-to-gdk-pixbuf .sect2}

The [Gdk Pixbuf]{.application} package is a toolkit for image loading and pixel buffer manipulation. It is used by [GTK+ 3]{.application} to load and manipulate images. In the past it was distributed as part of [GTK+ 2]{.application}, but it was split off into a separate package in preparation for the change to [GTK+ 3]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gdk-pixbuf/2.44/gdk-pixbuf-2.44.6.tar.xz](https://download.gnome.org/sources/gdk-pixbuf/2.44/gdk-pixbuf-2.44.6.tar.xz){.ulink}

-   Download MD5 sum: ad6ce42706cd6947971c7d046c804222

-   Download size: 5.8 MB

-   Estimated disk space required: 68 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### Gdk Pixbuf Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME) and [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref}

#### Recommended

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} and [glycin-2.1.1](../general/glycin.md "glycin-2.1.1"){.xref} (circular: build gdk-pixbuf without glycin first, then build glycin with all its recommended dependencies, and rebuild gdk-pixbuf again)

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} (to generate documentation), [libavif-1.4.2](../general/libavif.md "libavif-1.4.2"){.xref} (runtime, deprecated), [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} (deprecated), [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref} (runtime, deprecated), [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref} (deprecated), [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref} (runtime, deprecated), and [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref} (deprecated)
:::::

:::: {.installation lang="en"}
## Installation of Gdk Pixbuf {#installation-of-gdk-pixbuf .sect2}

Install [Gdk Pixbuf]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                \
      --prefix=/usr           \
      --buildtype=release     \
      -D png=disabled         \
      -D gif=disabled         \
      -D jpeg=disabled        \
      -D tiff=disabled        \
      -D thumbnailer=disabled \
      --wrap-mode=nofallback  \
      $(pkgconf glycin-2 || echo -D glycin=disabled) &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir =/s@\$@ / 'gdk-pixbuf-2.44.6'@" -i ../docs/meson.build &&
meson configure -D gtk_doc=true                                        &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package on to your system using a [“[DESTDIR]{.quote}”]{.quote} method, an important file was not installed and should be copied and/or generated. Generate it using the following command as the `root`{.systemitem} user:

``` root
gdk-pixbuf-query-loaders --update-cache
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents [**meson**]{.command} from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D *=disabled`*: Don't build the components obsoleted in favor of glycin. Those components are automatically disabled when building this package with glycin installed, but explicitly specify those options to make the configuration of the first build (without glycin) consistent.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gdk-pixbuf-csource, gdk-pixbuf-pixdata, and gdk-pixbuf-query-loaders]{.segbody}
:::

::: seg
**Installed Libraries:** [libgdk_pixbuf-2.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gdk-pixbuf-2.0, /usr/lib/gdk-pixbuf-2.0, /usr/libexec/installed-tests/gdk-pixbuf, /usr/share/installed-tests/gdk-pixbuf, /usr/share/gtk-doc/html/gdk-pixbuf, and /usr/share/thumbnailers]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  []{#gdk-pixbuf-csource}[[**gdk-pixbuf-csource**]{.command}]{.term}               is a small utility that generates C code containing images, used for compiling images directly into programs
  []{#gdk-pixbuf-pixdata}[[**gdk-pixbuf-pixdata**]{.command}]{.term}               is a tool used to convert GdkPixbuf to GdkPixdata
  []{#gdk-pixbuf-query-loaders}[[**gdk-pixbuf-query-loaders**]{.command}]{.term}   collects information about loadable modules for [Gdk Pixbuf]{.application} and writes it to the default cache file location, or to stdout
  []{#libgdk_pixbuf-2}[`libgdk_pixbuf-2.0.so`{.filename}]{.term}                   contains functions used to load and render images
  -------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](freeglut.md "Freeglut-3.8.0"){accesskey="p"}

    Freeglut-3.8.0

-   [Next](glew.md "GLEW-2.3.1"){accesskey="n"}

    GLEW-2.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

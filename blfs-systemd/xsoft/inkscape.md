::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](gparted.md "Gparted-1.8.1"){accesskey="p"}

    Gparted-1.8.1

-   [Next](rxvt-unicode.md "rxvt-unicode-9.31"){accesskey="n"}

    rxvt-unicode-9.31

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#inkscape}Inkscape-1.4.4 {#inkscape-1.4.4 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Inkscape {#introduction-to-inkscape .sect2}

[Inkscape]{.application} is a what you see is what you get Scalable Vector Graphics editor. It is useful for creating, viewing and changing SVG images.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://inkscape.org/gallery/item/59505/inkscape-1.4.4.tar.xz](https://inkscape.org/gallery/item/59505/inkscape-1.4.4.tar.xz){.ulink}

-   Download MD5 sum: 60ed50c2de060307ad1a6555c7653458

-   Download size: 52 MB

-   Estimated disk space required: 1.1 GB (216 MB installed)

-   Estimated build time: 2.2 SBU (with parallelism=8)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/inkscape-1.4.4-poppler_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/inkscape-1.4.4-poppler_fixes-1.patch){.ulink}
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tarball `inkscape-1.4.4.tar.xz`{.filename} will extract to the directory `inkscape-1.4.4_2026-05-05_dcaf3e7d9e/`{.filename}.
:::

### Inkscape Dependencies

#### Required

[Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref}, [double-conversion-3.4.0](../general/double-conversion.md "Double-conversion-3.4.0"){.xref}, [GC-8.2.12](../general/gc.md "GC-8.2.12"){.xref}, [gsl-2.8](../general/gsl.md "gsl-2.8"){.xref}, [Gtkmm-3.24.10](../x/gtkmm3.md "Gtkmm-3.24.10"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, and [popt-1.19](../general/popt.md "Popt-1.19"){.xref}

#### Recommended

[ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} (runtime), [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref} (to eliminate plugin warnings), [Potrace-1.16](../general/potrace.md "Potrace-1.16"){.xref} (for the bucket-fill tool), also various Python modules at runtime for the core extensions: [cachecontrol-0.14.4](../general/python-modules.md#cachecontrol "cachecontrol-0.14.4"){.xref}, [cssselect-1.4.0](../general/python-modules.md#cssselect "CSSSelect-1.4.0"){.xref}, [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref}, [NumPy-2.4.6](../general/python-modules.md#numpy "NumPy-2.4.6"){.xref}, [pySerial-3.5](../general/python-modules.md#pyserial "pySerial-3.5"){.xref}, and [Scour-0.38.2](../general/python-modules.md#scour "Scour-0.38.2"){.xref}

#### Optional

[Aspell-0.60.8.2](../general/aspell.md "Aspell-0.60.8.2"){.xref}, [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} (to run inkscape from scripts), [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref}, [GraphicsMagick](https://sourceforge.net/projects/graphicsmagick){.ulink}, [libcdr](https://github.com/LibreOffice/libcdr){.ulink}, [libvisio](https://github.com/LibreOffice/libvisio){.ulink}, [libwpg](https://libwpg.sourceforge.net/){.ulink} (or [libwpd](https://libwpd.sourceforge.net/){.ulink})
:::::::

:::: {.installation lang="en"}
## Installation of Inkscape {#installation-of-inkscape .sect2}

First, fix build failures starting with poppler-26.05 and later:

``` userinput
patch -Np1 -i ../inkscape-1.4.4-poppler_fixes-1.patch
```

Install [Inkscape]{.application} by running the following commands:

``` userinput
mkdir build                        &&
cd    build                        &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D WITH_INTERNAL_2GEOM=ON    \
      -W no-dev                    \
      ..                           &&
make
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed (for the icon cache) and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to build the release library without any debug \`assert\` in the code.

*`-D WITH_INTERNAL_2GEOM=ON`*: This switch is useless for the first build of [Inkscape]{.application}, but it prevents linking to the previously installed `lib2geom.so`{.filename} library when upgrading [Inkscape]{.application}.

*`-W no-dev`*: This parameter silences several warnings only intended for project developers.

`-D WITH_DBUS=ON`{.option}: use this if you wish to use [**inkscape**]{.command} in interactive scripts which manipulate images.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [inkscape and inkview]{.segbody}
:::

::: seg
**Installed Library:** [lib2geom.so and libinkscape_base.so (in /usr/lib/inkscape)]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/2geom-1.4.0, /usr/lib/inkscape, and /usr/share/inkscape]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------
  []{#inkscape-prog}[[**inkscape**]{.command}]{.term}              is a SVG (Scalable Vector Graphics) editing program
  []{#inkview}[[**inkview**]{.command}]{.term}                     is a simple program for displaying SVG files
  []{#libinkscape_base}[`libinkscape_base.so`{.filename}]{.term}   provides the routines used by inkscape and inkview
  []{#lib2geom}[`lib2geom.so`{.filename}]{.term}                   is a C++ 2D geometry library for vector graphics
  ---------------------------------------------------------------- -----------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](gparted.md "Gparted-1.8.1"){accesskey="p"}

    Gparted-1.8.1

-   [Next](rxvt-unicode.md "rxvt-unicode-9.31"){accesskey="n"}

    rxvt-unicode-9.31

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

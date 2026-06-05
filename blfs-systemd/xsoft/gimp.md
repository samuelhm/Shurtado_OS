::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](freerdp.md "FreeRDP-3.26.0"){accesskey="p"}

    FreeRDP-3.26.0

-   [Next](gparted.md "Gparted-1.8.1"){accesskey="n"}

    Gparted-1.8.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gimp}Gimp-3.2.4 {#gimp-3.2.4 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Gimp {#introduction-to-gimp .sect2}

The [Gimp]{.application} package contains the GNU Image Manipulation Program which is useful for photo retouching, image composition and image authoring.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gimp.org/gimp/v3.2/gimp-3.2.4.tar.xz](https://download.gimp.org/gimp/v3.2/gimp-3.2.4.tar.xz){.ulink}

-   Download MD5 sum: 4a5a233cf24e599bbf73084a3583e29f

-   Download size: 34 MB

-   Estimated disk space required: 639 MB (173 MB installed)

-   Estimated build time: 1.4 SBU (Using parallelism=4)
:::

### Additional Downloads

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The English version of the help files is complete, but some parts of the text for other languages may not yet be translated.
:::

::: itemizedlist
-   Download (HTTP): [https://download.gimp.org/pub/gimp/help/gimp-help-3.0.2.tar.bz2](https://download.gimp.org/pub/gimp/help/gimp-help-3.0.2.tar.bz2){.ulink}

-   Download size: 123 MB

-   Download MD5 sum: a9afbeea7d55bb8655f91e2b0ca1d7a8

-   Estimated disk space required: 310 MB (74 MB installed)

-   Estimated build time: 0.5 SBU
:::

### Gimp Dependencies

#### Required

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref}, [gegl-0.4.70](../general/gegl.md "gegl-0.4.70"){.xref}, [gexiv2-0.16.0](../gnome/gexiv2.md "gexiv2-0.16.0"){.xref}, [glib-networking-2.80.1](../basicnet/glib-networking.md "glib-networking-2.80.1"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [libmypaint-1.6.1](../general/libmypaint.md "libmypaint-1.6.1"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} (to build the translated help files), [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [mypaint-brushes-2.0.2](../general/mypaint-brushes.md "mypaint-brushes-2.0.2"){.xref}, and [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref} (including poppler-data)

#### Recommended

[Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref}, [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref} (with libgs installed), [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, and [xdg-utils-1.2.1](xdg-utils.md "xdg-utils-1.2.1"){.xref}

#### Optional

[AAlib-1.4rc5](../general/aalib.md "AAlib-1.4rc5"){.xref}, [alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Gjs-1.88.0](../gnome/gjs.md "Gjs-1.88.0"){.xref}, [libheif-1.23.0](../general/libheif.md "libheif-1.23.0"){.xref}, [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref}, [libmng-2.0.3](../general/libmng.md "libmng-2.0.3"){.xref}, [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [cfitsio](https://github.com/HEASARC/cfitsio){.ulink}, [libbacktrace](https://github.com/ianlancetaylor/libbacktrace){.ulink}, [libiff](https://github.com/svanderburg/libiff){.ulink}, [libilbm](https://github.com/svanderburg/libilbm){.ulink}, [libwmf](https://wvware.sourceforge.net/libwmf.md){.ulink}, [OpenEXR](https://www.openexr.com/){.ulink}, and [qoi](https://github.com/phoboslab/qoi){.ulink}

#### Optional, for building the help system

[dblatex](https://dblatex.sourceforge.net/){.ulink} (for PDF docs), [pngnq](https://pngnq.sourceforge.net/){.ulink} and [pngcrush](https://pmt.sourceforge.net/pngcrush/){.ulink} to optimize the png files, but see the note on the help download above

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/gimp](https://wiki.linuxfromscratch.org/blfs/wiki/gimp){.ulink}
:::::::

:::: {.installation lang="en"}
## Installation of Gimp {#installation-of-gimp .sect2}

If upgrading from a previous Gimp-3 installation, as the `root`{.systemitem} user, remove some files and directories from the old installation or the build system may mistakenly pick them up, causing a build failure:

``` root
rm -rf /usr/{lib,share}/gimp/3.0 &&
rm -f  /usr/share/gir-1.0/Gimp-3.0.gir &&
rm -f  /usr/lib/girepository-1.0/Gimp-3.0.typelib &&
rm -f  /usr/lib/libgimp*-3.0.so*
```

Upstream provides a patch for building against gexiv2-0.16.0 and later. Use it as follows:

``` userinput
patch -Np1 -i build/macos/patches/0001-build-macos-Do-not-require-gexiv2-0.14-on-homebrew.patch
```

Install [Gimp]{.application} by running the following commands:

``` userinput
mkdir gimp-build &&
cd    gimp-build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D headless-tests=disabled &&
ninja
```

To test the results (requires a terminal in a graphical environment) issue: [**ninja test**]{.command}. Three tests, `gimp:app / save-and-export`{.filename}, `gimp:app / single-window-mode`{.filename}, and `gimp:app / ui`{.filename}, are known to fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
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

::: {.installation lang="en"}
## Installation of Gimp-Help {#installation-of-gimp-help .sect2}

The `gimp-help`{.filename} tarball contains images and English text help for help files, together with translations. If you wish to install local copies of the help files to read offline, unpack the gimp-help tarball and change into the root of the newly created source tree.

``` userinput
tar -xf ../../gimp-help-3.0.2.tar.bz2 &&
cd gimp-help-3.0.2

sed -i 's/import libxml2//' configure &&

ALL_LINGUAS="en" \
./configure --prefix=/usr
```

Building non-English languages is only possible with the libxml2 Python 3 module, which is deprecated and no longer enabled in the BLFS libxml2 build.

Now build the help files:

``` userinput
make
```

Issue the following commands as the `root`{.systemitem} user to install the help files:

``` root
make install &&
chown -R root:root /usr/share/gimp/3.0/help
```
:::

::: {.commands lang="en"}
## []{#gimp-cmd-explanations}Command Explanations {#command-explanations .sect2}

*`-D headless-tests=disabled`*: This switch disables using [**xvfb-run**]{.command} for running the tests. Without this switch, many tests fail if [**xvfb-run**]{.command} has been installed.
:::

:::: {.configuration lang="en"}
## Configuring The Gimp {#configuring-the-gimp .sect2}

::: {.sect3 lang="en"}
### []{#gimp-config}Config Files {#config-files .sect3}

`/etc/gimp/3.0/*`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gimp-3.0, gimp-console-3.0, gimptool-3.0, gimp-test-clipboard-3.0, gimp-script-fu-interpreter-3.0, and gimp{,-console,tool,-test-clipboard,script-fu-interpreter}{,-3} (symlinks)]{.segbody}
:::

::: seg
**Installed Libraries:** [libgimp-3.0.so, libgimp-scriptfu-3.0, libgimpbase-3.0.so, libgimpcolor-3.0.so, libgimpconfig-3.0.so, libgimpmath-3.0.so, libgimpmodule-3.0.so, libgimpthumb-3.0.so, libgimpui-3.0.so, and libgimpwidgets-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/gimp, /usr/include/gimp-3.0, /usr/lib/gimp-3.0, /usr/lib/gimp/3.0, /usr/share/gimp/3.0, and /usr/share/doc/gimp-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gimp-3.0}[[**gimp-3.0**]{.command}]{.term}                       is the GNU Image Manipulation Program. It works with a variety of image formats and provides a large selection of tools
  []{#gimp-console-3.0}[[**gimp-console-3.0**]{.command}]{.term}       is a console program that behaves as if The [Gimp]{.application} was called with the `--no-interface`{.option} command-line option
  []{#gimptool-3.0}[[**gimptool-3.0**]{.command}]{.term}               is a tool that can build plug-ins or scripts and install them if they are distributed in one source file. [**gimptool-3.0**]{.command} can also be used by programs that need to know what libraries and include-paths The [Gimp]{.application} was compiled with
  []{#libgimp-3.0}[`libgimp-3.0.so`{.filename}]{.term}                 provides C bindings for The [Gimp]{.application}'s Procedural Database (PDB), which offers an interface to core functions and to functionality provided by plug-ins
  []{#libgimpbase-3.0}[`libgimpbase-3.0.so`{.filename}]{.term}         provides the C functions for basic [Gimp]{.application} functionality such as determining enumeration data types, gettext translation, determining The [Gimp]{.application}'s version number and capabilities, handling data files and accessing the environment
  []{#libgimpcolor-3.0}[`libgimpcolor-3.0.so`{.filename}]{.term}       provides the C functions relating to RGB, HSV and CMYK colors as well as converting colors between different color models and performing adaptive supersampling on an area
  []{#libgimpconfig-3.0}[`libgimpconfig-3.0.so`{.filename}]{.term}     contains C functions for reading and writing config information
  []{#libgimpmath-3.0}[`libgimpmath-3.0.so`{.filename}]{.term}         contains C functions which provide mathematical definitions and macros, manipulate 3x3 transformation matrices, set up and manipulate vectors and the MD5 message-digest algorithm
  []{#libgimpmodule-3.0}[`libgimpmodule-3.0.so`{.filename}]{.term}     provides the C functions which implement module loading using GModule and supports keeping a list of GimpModule's found in a given searchpath
  []{#libgimpthumb-3.0}[`libgimpthumb-3.0.so`{.filename}]{.term}       provides the C functions for handling The [Gimp]{.application}'s thumbnail objects
  []{#libgimpui-3.0}[`libgimpui-3.0.so`{.filename}]{.term}             contains The [Gimp]{.application}'s common user interface functions
  []{#libgimpwidgets-3.0}[`libgimpwidgets-3.0.so`{.filename}]{.term}   contains The [Gimp]{.application} and [GTK]{.application}'s widget creation and manipulation functions
  -------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](freerdp.md "FreeRDP-3.26.0"){accesskey="p"}

    FreeRDP-3.26.0

-   [Next](gparted.md "Gparted-1.8.1"){accesskey="n"}

    Gparted-1.8.1

-   [Up](other.md "Chapter 41. Other X-based Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

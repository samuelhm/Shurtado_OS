::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](brasero.md "Brasero-3.12.3"){accesskey="p"}

    Brasero-3.12.3

-   [Next](evolution.md "Evolution-3.60.2"){accesskey="n"}

    Evolution-3.60.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#evince}Evince-48.4 {#evince-48.4 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Evince {#introduction-to-evince .sect2}

[Evince]{.application} is a document viewer for multiple document formats. It supports PDF, Postscript, DjVu, TIFF and DVI. It is useful for viewing documents of various types using one simple application instead of the multiple document viewers that once existed on the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/evince/48/evince-48.4.tar.xz](https://download.gnome.org/sources/evince/48/evince-48.4.tar.xz){.ulink}

-   Download MD5 sum: 5df36228e83ac93a5860f013af50c5c8

-   Download size: 2.9 MB

-   Estimated disk space required: 90 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### Evince Dependencies

#### Required

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}

#### Recommended

[gnome-keyring-50.0](gnome-keyring.md "gnome-keyring-50.0"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, and [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}

#### Optional

[Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref} (to enable printing if support is built into [GTK+ 3]{.application}), [gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [gspell-1.14.3](../general/gspell.md "gspell-1.14.3"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [libgxps-0.3.2](../general/libgxps.md "libgxps-0.3.2"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), [DjVuLibre](https://djvu.sourceforge.net/){.ulink}, [libspectre](https://www.freedesktop.org/wiki/Software/libspectre/){.ulink}, and [Synctex](https://github.com/jlaurens/synctex){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Evince {#installation-of-evince .sect2}

Install [Evince]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

CPPFLAGS+=" -I/opt/texlive/2025/include -DNO_DEBUG" \
meson setup --prefix=/usr                \
            --buildtype=release          \
            -D gtk_doc=false             \
            --wrap-mode=nodownload       \
            ..                           &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "/docs_dir/s@\$@ / 'evince-48.4'@" -i ../help/meson.build &&
meson configure -D gtk_doc=true                                 &&
ninja
```

This package does not have a working test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a [“[DESTDIR]{.quote}”]{.quote} method, `/usr/share/glib-2.0/schemas/gschemas.compiled`{.filename} was not updated/created. Create (or update) the file using the following command as the `root`{.systemitem} user:

``` root
glib-compile-schemas /usr/share/glib-2.0/schemas
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`CPPFLAGS+=" -I/opt/texlive/2025/include"`*: Make sure that meson can find libkpathsea headers from TeXLive if it is installed. This has no effect on systems without TeXLive installed.

*`--wrap-mode=nodownload`*: This switch disables fetching any dependency: the build system tries to fetch gi-docgen even if *`-D gtk_doc=false`* is passed.

*`-D gtk_doc=false`*: Allow building this package without [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed. If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and you wish to rebuild and install the API documentation, a [**meson configure**]{.command} command will reset this option.

`-D gspell=false`{.option}: This switch turns off support for the spell checking plugin.

`-D introspection=false`{.option}: Use this option if you don't have built [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} with GObject Introspection and don't wish to have introspection support built into Evince.

`-D nautilus=false`{.option}: This switch disables building the [Nautilus]{.application} Plugin. Use this switch if [Nautilus]{.application} is not installed.

`-D keyring=false`{.option}: This switch disables the use of [libsecret]{.application}. Use this switch if [libsecret]{.application} is not installed.

`-D ps=enabled`{.option}: Use this switch if [libspectre]{.application} is installed and you want to view PostScript files with [Evince]{.application}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [evince, evince-previewer, and evince-thumbnailer]{.segbody}
:::

::: seg
**Installed Libraries:** [libevdocument3.so and libevview3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,share}/evince, /usr/share/gtk-doc/html/{evince,libevdocument-3.0,libevview-3.0} (optional), and /usr/share/help/\*/evince]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------------------------
  []{#evince-prog}[[**evince**]{.command}]{.term}                      is a multiple format document viewer
  []{#evince-previewer}[[**evince-previewer**]{.command}]{.term}       is an application that implements the printing previewer
  []{#evince-thumbnailer}[[**evince-thumbnailer**]{.command}]{.term}   is a simple program used to create thumbnail images of supported documents
  -------------------------------------------------------------------- ----------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](brasero.md "Brasero-3.12.3"){accesskey="p"}

    Brasero-3.12.3

-   [Next](evolution.md "Evolution-3.60.2"){accesskey="n"}

    Evolution-3.60.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

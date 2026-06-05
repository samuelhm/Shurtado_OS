::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](graphene.md "Graphene-1.10.8"){accesskey="p"}

    Graphene-1.10.8

-   [Next](gtk4.md "GTK-4.22.4"){accesskey="n"}

    GTK-4.22.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtk3}GTK-3.24.52 {#gtk-3.24.52 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GTK3 {#introduction-to-gtk3 .sect2}

The [GTK3]{.application} package contains libraries used for creating graphical user interfaces for applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtk/3.24/gtk-3.24.52.tar.xz](https://download.gnome.org/sources/gtk/3.24/gtk-3.24.52.tar.xz){.ulink}

-   Download MD5 sum: 4dfad1e56bf8ad25dfab58add17e7146

-   Download size: 13 MB

-   Estimated disk space required: 302 MB (with tests)

-   Estimated build time: 0.6 SBU (using parallelism=4; add 2.4 SBU for tests)
:::

### GTK3 Dependencies

#### Required

[at-spi2-core-2.60.4](at-spi2-core.md "at-spi2-core-2.60.4"){.xref}, [gdk-pixbuf-2.44.6](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [libepoxy-1.5.10](libepoxy.md "libepoxy-1.5.10"){.xref}, and [Pango-1.57.1](pango.md "Pango-1.57.1"){.xref}

#### Recommended

[adwaita-icon-theme-50.0](adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref} (at runtime; default for some gtk3 settings keys) [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} (for generating manual pages), [hicolor-icon-theme-0.18](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref} (needed for tests), [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (for generating manual pages), [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, and [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}

#### Recommended (Required if building GNOME)

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [Evince-48.4](../gnome/evince.md "Evince-48.4"){.xref} (runtime for the print previewer), [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref}, [PyAtSpi2-2.58.2](../general/python-modules.md#pyatspi2 "PyAtSpi2-2.58.2"){.xref} (for tests), [sassc-3.6.2](../general/sassc.md "sassc-3.6.2"){.xref}, [tinysparql-3.11.1](../gnome/tinysparql.md "tinysparql-3.11.1"){.xref}, and [PAPI](https://icl.utk.edu/papi/){.ulink}
:::::

::::: {.installation lang="en"}
## Installation of GTK3 {#installation-of-gtk3 .sect2}

Install [GTK3]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D man=true         \
      -D broadway_backend=true &&
ninja
```

To test the results you need a graphical session, then issue [**dbus-run-session ninja test**]{.command}.

One test, `gtk:reftest treeview-fixed-height.ui`{.filename}, is known to fail due to small output differences compared to what the test suite expects.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package on to your system using a [“[DESTDIR]{.quote}”]{.quote} method, an important file was not installed and must be copied and/or generated. Generate it using the following command as the `root`{.systemitem} user:

``` root
gtk-query-immodules-3.0 --update-cache
```
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a [“[DESTDIR]{.quote}”]{.quote} method, `/usr/share/glib-2.0/schemas/gschemas.compiled`{.filename} was not updated/created. Create (or update) the file using the following command as the `root`{.systemitem} user:

``` root
glib-compile-schemas /usr/share/glib-2.0/schemas
```
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D broadway_backend=true`*: This switch enables the HTML5 GTK backend.

*`-D man=true`*: This switch allows generating manual pages.

`-D gtk_doc=true`{.option}: This switch enables building documentation. It requires [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}.

`-D tracker3=true`{.option}: This switch enables the search function based on TinySPARQL in the GTK3 file chooser dialog. It requires [tinysparql-3.11.1](../gnome/tinysparql.md "tinysparql-3.11.1"){.xref}.

`-D cloudproviders=true`{.option}: Use this switch if you have [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref} installed and wish to enable support for cloud providers in a file chooser window.
:::

::::: {.configuration lang="en"}
## Configuring GTK3 {#configuring-gtk3 .sect2}

::: {.sect3 lang="en"}
### []{#gtk3-config}Config Files {#config-files .sect3}

`~/.config/gtk-3.0/settings.ini`{.filename} and `/etc/gtk-3.0/settings.ini`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[GTK3]{.application} themes change the way a [GTK3]{.application} application looks. An icon theme can be used to change the icons that appear on the application's toolbar. If you have installed a [GTK3]{.application} theme (e.g. the Adwaita theme built in [GTK3]{.application}), an icon theme (such as [oxygen-icons-6.1.0](oxygen-icons.md "oxygen-icons-6.1.0"){.xref}) and/or a font ([Dejavu fonts](TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref}), you can set your preferences in `~/.config/gtk-3.0/settings.ini`{.filename}, or the default system wide configuration file (as the `root`{.systemitem} user), in `/etc/gtk-3.0/settings.ini`{.filename}. For the local user an example is:

``` userinput
mkdir -vp ~/.config/gtk-3.0
cat > ~/.config/gtk-3.0/settings.ini << "EOF"
[Settings]
gtk-theme-name = Adwaita
gtk-icon-theme-name = oxygen
gtk-font-name = DejaVu Sans 12
gtk-cursor-theme-size = 18
gtk-toolbar-style = GTK_TOOLBAR_BOTH_HORIZ
gtk-xft-antialias = 1
gtk-xft-hinting = 1
gtk-xft-hintstyle = hintslight
gtk-xft-rgba = rgb
gtk-cursor-theme-name = Adwaita
EOF
```

There are many settings keys, some with default values. You can find them at [Settings: GTK3 Reference Manual](https://developer.gnome.org/gtk3/stable/GtkSettings.md){.ulink}. There are many more themes available at [https://www.gnome-look.org/browse/](https://www.gnome-look.org/browse/){.ulink} and other places.

As part of GTK-3.0's redesign, the scroll bar buttons are no longer visible on the scrollbar in many applications. If this functionality is desired, modify the `gtk.css`{.filename} file and restore them using the following command:

``` userinput
cat > ~/.config/gtk-3.0/gtk.css << "EOF"
*  {
   -GtkScrollbar-has-backward-stepper: 1;
   -GtkScrollbar-has-forward-stepper: 1;
}
EOF
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [broadwayd, gtk3-demo, gtk3-demo-application, gtk3-icon-browser, gtk3-widget-factory, gtk-builder-tool, gtk-encode-symbolic-svg, gtk-launch, gtk-query-immodules-3.0, gtk-query-settings, and gtk-update-icon-cache]{.segbody}
:::

::: seg
**Installed Libraries:** [libgailutil-3.so, libgdk-3.so, and libgtk-3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/gtk-3.0, /usr/include/{gail,gtk}-3.0, /usr/{lib,share}/gtk-3.0, and /usr/share/themes/{Default,Emacs}/gtk-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#broadwayd}[[**broadwayd**]{.command}]{.term}                               provides support for displaying [GTK3]{.application} applications in a web browser, using HTML5 and web sockets
  []{#gtk3-demo}[[**gtk3-demo**]{.command}]{.term}                               is a simple program that demonstrates some of the tasks that can be done with [GTK3]{.application}
  []{#gtk3-demo-application}[[**gtk3-demo-application**]{.command}]{.term}       is a simple [GTK3]{.application} application
  []{#gtk3-icon-browser}[[**gtk3-icon-browser**]{.command}]{.term}               is a utility to explore the icons in the current icon theme. It shows icons in various sizes, their symbolic variants where available, as well as a description of the icon and its context
  []{#gtk3-widget-factory}[[**gtk3-widget-factory**]{.command}]{.term}           is a program to view [GTK3]{.application} themes and widgets
  []{#gtk-builder-tool}[[**gtk-builder-tool**]{.command}]{.term}                 performs various operations on GtkBuilder .ui files
  []{#gtk-encode-symbolic-svg}[[**gtk-encode-symbolic-svg**]{.command}]{.term}   converts symbolic SVG icons into specially prepared PNG files. [GTK3]{.application} can load and recolor these PNGs, just like original SVGs, but loading them is much faster
  []{#gtk-launch}[[**gtk-launch**]{.command}]{.term}                             launches an application using the given name. The name should match the application desktop file name, as residing in `/usr/share/applications`{.filename}, with or without the '.desktop' suffix
  []{#gtk-query-immodules-3.0}[[**gtk-query-immodules-3.0**]{.command}]{.term}   collects information about loadable input method modules for [GTK3]{.application} and writes it to the default cache file location, or to standard output
  []{#gtk-query-settings}[[**gtk-query-settings**]{.command}]{.term}             provides a complete listing of all settings related to [GTK3]{.application}
  []{#gtk-update-icon-cache3}[[**gtk-update-icon-cache**]{.command}]{.term}      is an icon theme caching utility that creates mmap()able cache files for icon themes
  []{#libgailutil-3}[`libgailutil-3.so`{.filename}]{.term}                       contains functions that implement the accessibility interfaces defined by the [GNOME]{.application} Accessibility Toolkit
  []{#libgdk-3}[`libgdk-3.so`{.filename}]{.term}                                 contains functions that act as a wrapper around the low-level drawing and windowing functions provided by the underlying graphics system
  []{#libgtk-3}[`libgtk-3.so`{.filename}]{.term}                                 contains functions that provide an API to implement graphical user interfaces
  ------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](graphene.md "Graphene-1.10.8"){accesskey="p"}

    Graphene-1.10.8

-   [Next](gtk4.md "GTK-4.22.4"){accesskey="n"}

    GTK-4.22.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

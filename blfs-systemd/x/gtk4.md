::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtk3.md "GTK-3.24.52"){accesskey="p"}

    GTK-3.24.52

-   [Next](gtkmm3.md "Gtkmm-3.24.10"){accesskey="n"}

    Gtkmm-3.24.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gtk4}GTK-4.22.4 {#gtk-4.22.4 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GTK 4 {#introduction-to-gtk-4 .sect2}

The [GTK 4]{.application} package contains libraries used for creating graphical user interfaces for applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gtk/4.22/gtk-4.22.4.tar.xz](https://download.gnome.org/sources/gtk/4.22/gtk-4.22.4.tar.xz){.ulink}

-   Download MD5 sum: 2420b9b289937c1c9f97332470db1889

-   Download size: 17 MB

-   Estimated disk space required: 1.4 GB (with docs and tests)

-   Estimated build time: 1.5 SBU (using parallelism=4; with docs; add 2.1 SBU for tests)
:::

### GTK 4 Dependencies

#### Required

[gdk-pixbuf-2.44.6](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [graphene-1.10.8](graphene.md "Graphene-1.10.8"){.xref}, [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libepoxy-1.5.10](libepoxy.md "libepoxy-1.5.10"){.xref}, [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [Pango-1.57.1](pango.md "Pango-1.57.1"){.xref}, [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, and [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}

#### Recommended

[adwaita-icon-theme-50.0](adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref} (runtime, default for some gtk4 settings keys), [gst-plugins-bad-1.28.3](../multimedia/gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){.xref}, [glslc from shaderc-2026.2](../general/glslc.md "glslc from shaderc-2026.2"){.xref}, [gst-plugins-good-1.28.3](../multimedia/gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref} (runtime, built with [libvpx-1.16.0](../multimedia/libvpx.md "libvpx-1.16.0"){.xref}), [hicolor-icon-theme-0.18](hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref} (needed for tests and for defaults), [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}, and [xdg-desktop-portal-1.20.4](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref} (runtime, with the backend suitable for your desktop environment, for example [xdg-desktop-portal-gnome-50.0](../gnome/xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){.xref})

#### Recommended (Required if building GNOME)

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref} (for some tests), [colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref}, [Evince-48.4](../gnome/evince.md "Evince-48.4"){.xref} (runtime for the print previewer), [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref}, [Highlight-4.20](../general/highlight.md "Highlight-4.20"){.xref} (runtime, only used by [**gtk4-demo**]{.command} for syntax highlighting of demo source code), [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref}, [sassc-3.6.2](../general/sassc.md "sassc-3.6.2"){.xref}, [tinysparql-3.11.1](../gnome/tinysparql.md "tinysparql-3.11.1"){.xref}, [accesskit-c](https://github.com/AccessKit/accesskit-c){.ulink}, [cpdb](https://github.com/OpenPrinting/cpdb-libs){.ulink}, [pydbus](https://pypi.org/project/pydbus/){.ulink} (for some tests), and [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink}
:::::

::: {.kernel lang="en"}
## []{#gtk4-kernel}Kernel Configuration {#kernel-configuration .sect2}

Some GTK-4 features need the following options in the kernel configuration. It's also needed by the test suite.

``` screen
Device Drivers --->
  DMABUF options --->
    [*] userspace dmabuf misc driver                                   [UDMABUF]
```
:::

::: {.installation lang="en"}
## Installation of GTK 4 {#installation-of-gtk-4 .sect2}

Install [GTK 4]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D broadway-backend=true \
            -D introspection=enabled \
            -D vulkan=enabled        \
            .. &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "s@'doc'@& / 'gtk-4.22.4'@" -i ../docs/reference/meson.build &&
meson configure -D documentation=true                            &&
ninja
```

To run the tests, issue:

``` userinput
env -u{GALLIUM_DRIVER,MESA_LOADER_DRIVER_OVERRIDE}          \
    LIBGL_ALWAYS_SOFTWARE=1 VK_LOADER_DRIVERS_SELECT='lvp*' \
    dbus-run-session meson test --setup x11                 \
                                --no-suite=headless
```

If you are in a Wayland session, replace the one occurrence of `x11`{.literal} with `wayland`{.literal}. Many tests will fail if `~/.config/gtk-4.0/settings.ini`{.filename} exists and the gtk-modules line is not commented out. Several other tests may fail for unknown reasons. On systems with NVIDIA graphics cards, the tests may take significantly longer.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D broadway-backend=true`*: This switch enables the HTML5 GDK backend.

*`-D introspection=enabled`*: This switch enables using GObject Introspection to generate GIR bindings of this packages. These bindings are required by GNOME.

`-D cloudproviders=enabled`{.option}: Use this switch if you have [libcloudproviders-0.3.6](../general/libcloudproviders.md "libcloudproviders-0.3.6"){.xref} installed and wish to enable support for cloud providers in a file chooser window.

`-D tracker=enabled`{.option}: Use this switch if you have [tinysparql-3.11.1](../gnome/tinysparql.md "tinysparql-3.11.1"){.xref} installed and wish to use search functionality when running a file chooser.

`-D colord=enabled`{.option}: Use this switch if you have [colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref} installed and wish to use colord with the CUPS printing backend.

`-D man-pages=true`{.option}: Use this switch if you have [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} installed and wish to generate the man pages.

`-D sysprof=enabled`{.option}: Use this switch if you have [sysprof](https://wiki.gnome.org/Apps/Sysprof){.ulink} installed and wish to enable tracing support for GTK4-based applications.

`-D vulkan=disabled`{.option}: Use this switch instead of *`-D vulkan=enabled`* if you don't have [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref} or [glslc from shaderc-2026.2](../general/glslc.md "glslc from shaderc-2026.2"){.xref} installed. It will disable the Vulkan backend that the upstream prefers to use on Wayland-based graphical environments.

`LIBGL_ALWAYS_SOFTWARE=1`{.envar} and `VK_LOADER_DRIVERS_SELECT='lvp*'`{.envar}: Force the test suite to use the softpipe or llvmpipe Gallium driver and the lavapipe Vulkan driver from Mesa. The test suite is so sensitive that the minor differences caused by a different Mesa driver can trigger test failures.

[**env -u{GALLIUM_DRIVER,MESA_LOADER_DRIVER_OVERRIDE}**]{.command}: Unset variables which may conflict with `LIBGL_ALWAYS_SOFTWARE=1`{.envar}.

*`--no-suite=headless`*: Disable the tests requiring the external dependency pydbus.
:::

::::: {.configuration lang="en"}
## Configuring GTK 4 {#configuring-gtk-4 .sect2}

::: {.sect3 lang="en"}
### []{#gtk4-config}Config Files {#config-files .sect3}

`~/.config/gtk-4.0/settings.ini`{.filename} and `/usr/share/gtk-4.0/settings.ini`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[GTK 4]{.application} themes change the way a [GTK 4]{.application} application looks. An icon theme can be used to change the icons that appear on the application's toolbar. If you have installed a [GTK 4]{.application} theme (e.g. the Adwaita theme built in [GTK 4]{.application}), an icon theme (such as [oxygen-icons-6.1.0](oxygen-icons.md "oxygen-icons-6.1.0"){.xref}) and/or a font ([Dejavu fonts](TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref}), you can set your preferences in `~/.config/gtk-4.0/settings.ini`{.filename}, or the default system-wide configuration file (as the `root`{.systemitem} user), in `/usr/share/gtk-4.0/settings.ini`{.filename}. For the local user, an example is:

``` userinput
mkdir -pv ~/.config/gtk-4.0
cat > ~/.config/gtk-4.0/settings.ini << "EOF"
[Settings]
gtk-theme-name = Adwaita
gtk-icon-theme-name = oxygen
gtk-font-name = DejaVu Sans 12
gtk-cursor-theme-size = 18
gtk-xft-antialias = 1
gtk-xft-hinting = 1
gtk-xft-hintstyle = hintslight
gtk-xft-rgba = rgb
gtk-cursor-theme-name = Adwaita
EOF
```

There are many settings keys, some with default values. You can find them at [Settings: GTK 4 Reference Manual](https://docs.gtk.org/gtk4/class.Settings.md#properties){.ulink}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gtk4-broadwayd, gtk4-builder-tool, gtk4-demo, gtk4-demo-application, gtk4-encode-symbolic-svg, gtk4-image-tool, gtk4-launch, gtk4-node-editor, gtk4-path-editor, gtk4-print-editor, gtk4-query-settings, gtk4-rendernode-tool, gtk4-update-icon-cache, and gtk4-widget-factory]{.segbody}
:::

::: seg
**Installed Libraries:** [libgtk-4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gtk-4.0, /usr/lib/gtk-4.0, and /usr/share/gtk-4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gtk4-broadwayd}[[**gtk4-broadwayd**]{.command}]{.term}                       provides support for displaying GTK 4 applications in a web browser using HTML5 and web sockets
  []{#gtk4-builder-tool}[[**gtk4-builder-tool**]{.command}]{.term}                 performs various operations on GtkBuilder .ui files
  []{#gtk4-demo}[[**gtk4-demo**]{.command}]{.term}                                 is a simple program that demonstrates some of the tasks that can be done with GTK 4
  []{#gtk4-demo-application}[[**gtk4-demo-application**]{.command}]{.term}         is a simple GTK 4 application which is useful for testing
  []{#gtk4-encode-symbolic-svg}[[**gtk4-encode-symbolic-svg**]{.command}]{.term}   converts symbolic SVG icons into special PNG files. GTK 4 can load and recolor these PNGs, just like original SVGs, but loading them is much faster
  []{#gtk4-image-tool}[[**gtk4-image-tool**]{.command}]{.term}                     performs various operations on images, including comparisons, conversions, listing information on the images, relabeling the images, and showing the images
  []{#gtk4-launch}[[**gtk4-launch**]{.command}]{.term}                             launches an application using the given name. The name should match the application .desktop file name (as seen in `/usr/share/applications`{.filename}), with or without the '.desktop' extension
  []{#gtk4-node-editor}[[**gtk4-node-editor**]{.command}]{.term}                   is a utility to show and edit render node files. Such render node files can be obtained e.g. from the GTK inspector
  []{#gtk4-path-tool}[[**gtk4-path-tool**]{.command}]{.term}                       performs various tasks on paths, including decompositions, reversals, restrictions, rendering, displaying the path, and listing information about the paths
  []{#gtk4-print-editor}[[**gtk4-print-editor**]{.command}]{.term}                 is a simple program to demonstrate printing using GTK 4 applications
  []{#gtk4-query-settings}[[**gtk4-query-settings**]{.command}]{.term}             provides a complete listing of all settings related to GTK 4
  []{#gtk4-rendernode-tool}[[**gtk4-rendernode-tool**]{.command}]{.term}           performs various tasks on GTK render nodes, including benchmarks, comparisons, extracting data URLs, displaying information about the nodes, displaying the nodes, and taking screenshots of nodes
  []{#gtk4-update-icon-cache}[[**gtk4-update-icon-cache**]{.command}]{.term}       is an icon theme caching utility that creates mmap()able cache files for icon themes
  []{#gtk4-widget-factory}[[**gtk4-widget-factory**]{.command}]{.term}             is a program to view GTK 4 themes and widgets
  []{#libgtk-4}[`libgtk-4.so`{.filename}]{.term}                                   contains functions that provide an API to implement graphical user interfaces
  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](gtk3.md "GTK-3.24.52"){accesskey="p"}

    GTK-3.24.52

-   [Next](gtkmm3.md "Gtkmm-3.24.10"){accesskey="n"}

    Gtkmm-3.24.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

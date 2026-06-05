<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtk3.md "GTK-3.24.52")

    GTK-3.24.52

-   [Next](gtkmm3.md "Gtkmm-3.24.10")

    Gtkmm-3.24.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GTK-4.22.4 {#gtk-4.22.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GTK 4 {#introduction-to-gtk-4}

The <span class="application">GTK 4</span> package contains libraries used for creating graphical user interfaces for applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtk/4.22/gtk-4.22.4.tar.xz">https://download.gnome.org/sources/gtk/4.22/gtk-4.22.4.tar.xz</a>

-   Download MD5 sum: 2420b9b289937c1c9f97332470db1889

-   Download size: 17 MB

-   Estimated disk space required: 1.4 GB (with docs and tests)

-   Estimated build time: 1.5 SBU (using parallelism=4; with docs; add 2.1 SBU for tests)
</div>

### GTK 4 Dependencies

#### Required

<a class="xref" href="gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="graphene.md" title="Graphene-1.10.8">graphene-1.10.8</a>, <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="libepoxy.md" title="libepoxy-1.5.10">libepoxy-1.5.10</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, and <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>

#### Recommended

<a class="xref" href="adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a> (runtime, default for some gtk4 settings keys), <a class="xref" href="../multimedia/gst10-plugins-bad.md" title="gst-plugins-bad-1.28.3">gst-plugins-bad-1.28.3</a>, <a class="xref" href="../general/glslc.md" title="glslc from shaderc-2026.2">glslc from shaderc-2026.2</a>, <a class="xref" href="../multimedia/gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a> (runtime, built with <a class="xref" href="../multimedia/libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>), <a class="xref" href="hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a> (needed for tests and for defaults), <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>, and <a class="xref" href="xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a> (runtime, with the backend suitable for your desktop environment, for example <a class="xref" href="../gnome/xdg-desktop-portal-gnome.md" title="xdg-desktop-portal-gnome-50.0">xdg-desktop-portal-gnome-50.0</a>)

#### Recommended (Required if building GNOME)

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a> (for some tests), <a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, <a class="xref" href="../gnome/evince.md" title="Evince-48.4">Evince-48.4</a> (runtime for the print previewer), <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/highlight.md" title="Highlight-4.20">Highlight-4.20</a> (runtime, only used by <span class="command"><strong>gtk4-demo</strong></span> for syntax highlighting of demo source code), <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a>, <a class="xref" href="../general/sassc.md" title="sassc-3.6.2">sassc-3.6.2</a>, <a class="xref" href="../gnome/tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>, <a class="ulink" href="https://github.com/AccessKit/accesskit-c">accesskit-c</a>, <a class="ulink" href="https://github.com/OpenPrinting/cpdb-libs">cpdb</a>, <a class="ulink" href="https://pypi.org/project/pydbus/">pydbus</a> (for some tests), and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Some GTK-4 features need the following options in the kernel configuration. It's also needed by the test suite.

```console
Device Drivers --->
  DMABUF options --->
    [*] userspace dmabuf misc driver                                   [UDMABUF]
```
</div>

<div class="installation" lang="en">
## Installation of GTK 4 {#installation-of-gtk-4}

Install <span class="application">GTK 4</span> by running the following commands:

```bash
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

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "s@'doc'@& / 'gtk-4.22.4'@" -i ../docs/reference/meson.build &&
meson configure -D documentation=true                            &&
ninja
```

To run the tests, issue:

```bash
env -u{GALLIUM_DRIVER,MESA_LOADER_DRIVER_OVERRIDE}          \
    LIBGL_ALWAYS_SOFTWARE=1 VK_LOADER_DRIVERS_SELECT='lvp*' \
    dbus-run-session meson test --setup x11                 \
                                --no-suite=headless
```

If you are in a Wayland session, replace the one occurrence of <code class="literal">x11</code> with <code class="literal">wayland</code>. Many tests will fail if <code class="filename">~/.config/gtk-4.0/settings.ini</code> exists and the gtk-modules line is not commented out. Several other tests may fail for unknown reasons. On systems with NVIDIA graphics cards, the tests may take significantly longer.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D broadway-backend=true`*: This switch enables the HTML5 GDK backend.

*`-D introspection=enabled`*: This switch enables using GObject Introspection to generate GIR bindings of this packages. These bindings are required by GNOME.

<code class="option">-D cloudproviders=enabled</code>: Use this switch if you have <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a> installed and wish to enable support for cloud providers in a file chooser window.

<code class="option">-D tracker=enabled</code>: Use this switch if you have <a class="xref" href="../gnome/tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a> installed and wish to use search functionality when running a file chooser.

<code class="option">-D colord=enabled</code>: Use this switch if you have <a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a> installed and wish to use colord with the CUPS printing backend.

<code class="option">-D man-pages=true</code>: Use this switch if you have <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> installed and wish to generate the man pages.

<code class="option">-D sysprof=enabled</code>: Use this switch if you have <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a> installed and wish to enable tracing support for GTK4-based applications.

<code class="option">-D vulkan=disabled</code>: Use this switch instead of *`-D vulkan=enabled`* if you don't have <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a> or <a class="xref" href="../general/glslc.md" title="glslc from shaderc-2026.2">glslc from shaderc-2026.2</a> installed. It will disable the Vulkan backend that the upstream prefers to use on Wayland-based graphical environments.

<code class="envar">LIBGL_ALWAYS_SOFTWARE=1</code> and <code class="envar">VK_LOADER_DRIVERS_SELECT='lvp*'</code>: Force the test suite to use the softpipe or llvmpipe Gallium driver and the lavapipe Vulkan driver from Mesa. The test suite is so sensitive that the minor differences caused by a different Mesa driver can trigger test failures.

<span class="command"><strong>env -u{GALLIUM_DRIVER,MESA_LOADER_DRIVER_OVERRIDE}</strong></span>: Unset variables which may conflict with <code class="envar">LIBGL_ALWAYS_SOFTWARE=1</code>.

*`--no-suite=headless`*: Disable the tests requiring the external dependency pydbus.
</div>

<div class="configuration" lang="en">
## Configuring GTK 4 {#configuring-gtk-4}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.config/gtk-4.0/settings.ini</code> and <code class="filename">/usr/share/gtk-4.0/settings.ini</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">GTK 4</span> themes change the way a <span class="application">GTK 4</span> application looks. An icon theme can be used to change the icons that appear on the application's toolbar. If you have installed a <span class="application">GTK 4</span> theme (e.g. the Adwaita theme built in <span class="application">GTK 4</span>), an icon theme (such as <a class="xref" href="oxygen-icons.md" title="oxygen-icons-6.1.0">oxygen-icons-6.1.0</a>) and/or a font (<a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>), you can set your preferences in <code class="filename">~/.config/gtk-4.0/settings.ini</code>, or the default system-wide configuration file (as the <code class="systemitem">root</code> user), in <code class="filename">/usr/share/gtk-4.0/settings.ini</code>. For the local user, an example is:

```bash
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

There are many settings keys, some with default values. You can find them at <a class="ulink" href="https://docs.gtk.org/gtk4/class.Settings.md#properties">Settings: GTK 4 Reference Manual</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gtk4-broadwayd, gtk4-builder-tool, gtk4-demo, gtk4-demo-application, gtk4-encode-symbolic-svg, gtk4-image-tool, gtk4-launch, gtk4-node-editor, gtk4-path-editor, gtk4-print-editor, gtk4-query-settings, gtk4-rendernode-tool, gtk4-update-icon-cache, and gtk4-widget-factory</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgtk-4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gtk-4.0, /usr/lib/gtk-4.0, and /usr/share/gtk-4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gtk4-broadwayd"></a><span class="command"><span class="term"><strong>gtk4-broadwayd</strong></span></span>                       provides support for displaying GTK 4 applications in a web browser using HTML5 and web sockets
  <a id="gtk4-builder-tool"></a><span class="command"><span class="term"><strong>gtk4-builder-tool</strong></span></span>                 performs various operations on GtkBuilder .ui files
  <a id="gtk4-demo"></a><span class="command"><span class="term"><strong>gtk4-demo</strong></span></span>                                 is a simple program that demonstrates some of the tasks that can be done with GTK 4
  <a id="gtk4-demo-application"></a><span class="command"><span class="term"><strong>gtk4-demo-application</strong></span></span>         is a simple GTK 4 application which is useful for testing
  <a id="gtk4-encode-symbolic-svg"></a><span class="command"><span class="term"><strong>gtk4-encode-symbolic-svg</strong></span></span>   converts symbolic SVG icons into special PNG files. GTK 4 can load and recolor these PNGs, just like original SVGs, but loading them is much faster
  <a id="gtk4-image-tool"></a><span class="command"><span class="term"><strong>gtk4-image-tool</strong></span></span>                     performs various operations on images, including comparisons, conversions, listing information on the images, relabeling the images, and showing the images
  <a id="gtk4-launch"></a><span class="command"><span class="term"><strong>gtk4-launch</strong></span></span>                             launches an application using the given name. The name should match the application .desktop file name (as seen in <code class="filename">/usr/share/applications</code>), with or without the '.desktop' extension
  <a id="gtk4-node-editor"></a><span class="command"><span class="term"><strong>gtk4-node-editor</strong></span></span>                   is a utility to show and edit render node files. Such render node files can be obtained e.g. from the GTK inspector
  <a id="gtk4-path-tool"></a><span class="command"><span class="term"><strong>gtk4-path-tool</strong></span></span>                       performs various tasks on paths, including decompositions, reversals, restrictions, rendering, displaying the path, and listing information about the paths
  <a id="gtk4-print-editor"></a><span class="command"><span class="term"><strong>gtk4-print-editor</strong></span></span>                 is a simple program to demonstrate printing using GTK 4 applications
  <a id="gtk4-query-settings"></a><span class="command"><span class="term"><strong>gtk4-query-settings</strong></span></span>             provides a complete listing of all settings related to GTK 4
  <a id="gtk4-rendernode-tool"></a><span class="command"><span class="term"><strong>gtk4-rendernode-tool</strong></span></span>           performs various tasks on GTK render nodes, including benchmarks, comparisons, extracting data URLs, displaying information about the nodes, displaying the nodes, and taking screenshots of nodes
  <a id="gtk4-update-icon-cache"></a><span class="command"><span class="term"><strong>gtk4-update-icon-cache</strong></span></span>       is an icon theme caching utility that creates mmap()able cache files for icon themes
  <a id="gtk4-widget-factory"></a><span class="command"><span class="term"><strong>gtk4-widget-factory</strong></span></span>             is a program to view GTK 4 themes and widgets
  <a id="libgtk-4"></a><span class="term"><code class="filename">libgtk-4.so</code></span>                                   contains functions that provide an API to implement graphical user interfaces
  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtk3.md "GTK-3.24.52")

    GTK-3.24.52

-   [Next](gtkmm3.md "Gtkmm-3.24.10")

    Gtkmm-3.24.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

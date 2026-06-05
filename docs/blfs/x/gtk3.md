<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](graphene.md "Graphene-1.10.8")

    Graphene-1.10.8

-   [Next](gtk4.md "GTK-4.22.4")

    GTK-4.22.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GTK-3.24.52 {#gtk-3.24.52}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GTK3 {#introduction-to-gtk3}

The <span class="application">GTK3</span> package contains libraries used for creating graphical user interfaces for applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtk/3.24/gtk-3.24.52.tar.xz">https://download.gnome.org/sources/gtk/3.24/gtk-3.24.52.tar.xz</a>

-   Download MD5 sum: 4dfad1e56bf8ad25dfab58add17e7146

-   Download size: 13 MB

-   Estimated disk space required: 302 MB (with tests)

-   Estimated build time: 0.6 SBU (using parallelism=4; add 2.4 SBU for tests)
</div>

### GTK3 Dependencies

#### Required

<a class="xref" href="at-spi2-core.md" title="at-spi2-core-2.60.4">at-spi2-core-2.60.4</a>, <a class="xref" href="gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="libepoxy.md" title="libepoxy-1.5.10">libepoxy-1.5.10</a>, and <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a>

#### Recommended

<a class="xref" href="adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a> (at runtime; default for some gtk3 settings keys) <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> (for generating manual pages), <a class="xref" href="hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a> (needed for tests), <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (for generating manual pages), <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, and <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>

#### Recommended (Required if building GNOME)

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../gnome/evince.md" title="Evince-48.4">Evince-48.4</a> (runtime for the print previewer), <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a>, <a class="xref" href="../general/python-modules.md#pyatspi2" title="PyAtSpi2-2.58.2">PyAtSpi2-2.58.2</a> (for tests), <a class="xref" href="../general/sassc.md" title="sassc-3.6.2">sassc-3.6.2</a>, <a class="xref" href="../gnome/tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>, and <a class="ulink" href="https://icl.utk.edu/papi/">PAPI</a>
</div>

<div class="installation" lang="en">
## Installation of GTK3 {#installation-of-gtk3}

Install <span class="application">GTK3</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D man=true         \
      -D broadway_backend=true &&
ninja
```

To test the results you need a graphical session, then issue <span class="command"><strong>dbus-run-session ninja test</strong></span>.

One test, <code class="filename">gtk:reftest treeview-fixed-height.ui</code>, is known to fail due to small output differences compared to what the test suite expects.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package on to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, an important file was not installed and must be copied and/or generated. Generate it using the following command as the <code class="systemitem">root</code> user:

```bash
gtk-query-immodules-3.0 --update-cache
```
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D broadway_backend=true`*: This switch enables the HTML5 GTK backend.

*`-D man=true`*: This switch allows generating manual pages.

<code class="option">-D gtk_doc=true</code>: This switch enables building documentation. It requires <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>.

<code class="option">-D tracker3=true</code>: This switch enables the search function based on TinySPARQL in the GTK3 file chooser dialog. It requires <a class="xref" href="../gnome/tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>.

<code class="option">-D cloudproviders=true</code>: Use this switch if you have <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a> installed and wish to enable support for cloud providers in a file chooser window.
</div>

<div class="configuration" lang="en">
## Configuring GTK3 {#configuring-gtk3}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">~/.config/gtk-3.0/settings.ini</code> and <code class="filename">/etc/gtk-3.0/settings.ini</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">GTK3</span> themes change the way a <span class="application">GTK3</span> application looks. An icon theme can be used to change the icons that appear on the application's toolbar. If you have installed a <span class="application">GTK3</span> theme (e.g. the Adwaita theme built in <span class="application">GTK3</span>), an icon theme (such as <a class="xref" href="oxygen-icons.md" title="oxygen-icons-6.1.0">oxygen-icons-6.1.0</a>) and/or a font (<a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>), you can set your preferences in <code class="filename">~/.config/gtk-3.0/settings.ini</code>, or the default system wide configuration file (as the <code class="systemitem">root</code> user), in <code class="filename">/etc/gtk-3.0/settings.ini</code>. For the local user an example is:

```bash
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

There are many settings keys, some with default values. You can find them at <a class="ulink" href="https://developer.gnome.org/gtk3/stable/GtkSettings.md">Settings: GTK3 Reference Manual</a>. There are many more themes available at <a class="ulink" href="https://www.gnome-look.org/browse/">https://www.gnome-look.org/browse/</a> and other places.

As part of GTK-3.0's redesign, the scroll bar buttons are no longer visible on the scrollbar in many applications. If this functionality is desired, modify the <code class="filename">gtk.css</code> file and restore them using the following command:

```bash
cat > ~/.config/gtk-3.0/gtk.css << "EOF"
*  {
   -GtkScrollbar-has-backward-stepper: 1;
   -GtkScrollbar-has-forward-stepper: 1;
}
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">broadwayd, gtk3-demo, gtk3-demo-application, gtk3-icon-browser, gtk3-widget-factory, gtk-builder-tool, gtk-encode-symbolic-svg, gtk-launch, gtk-query-immodules-3.0, gtk-query-settings, and gtk-update-icon-cache</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgailutil-3.so, libgdk-3.so, and libgtk-3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/gtk-3.0, /usr/include/{gail,gtk}-3.0, /usr/{lib,share}/gtk-3.0, and /usr/share/themes/{Default,Emacs}/gtk-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="broadwayd"></a><span class="command"><span class="term"><strong>broadwayd</strong></span></span>                               provides support for displaying <span class="application">GTK3</span> applications in a web browser, using HTML5 and web sockets
  <a id="gtk3-demo"></a><span class="command"><span class="term"><strong>gtk3-demo</strong></span></span>                               is a simple program that demonstrates some of the tasks that can be done with <span class="application">GTK3</span>
  <a id="gtk3-demo-application"></a><span class="command"><span class="term"><strong>gtk3-demo-application</strong></span></span>       is a simple <span class="application">GTK3</span> application
  <a id="gtk3-icon-browser"></a><span class="command"><span class="term"><strong>gtk3-icon-browser</strong></span></span>               is a utility to explore the icons in the current icon theme. It shows icons in various sizes, their symbolic variants where available, as well as a description of the icon and its context
  <a id="gtk3-widget-factory"></a><span class="command"><span class="term"><strong>gtk3-widget-factory</strong></span></span>           is a program to view <span class="application">GTK3</span> themes and widgets
  <a id="gtk-builder-tool"></a><span class="command"><span class="term"><strong>gtk-builder-tool</strong></span></span>                 performs various operations on GtkBuilder .ui files
  <a id="gtk-encode-symbolic-svg"></a><span class="command"><span class="term"><strong>gtk-encode-symbolic-svg</strong></span></span>   converts symbolic SVG icons into specially prepared PNG files. <span class="application">GTK3</span> can load and recolor these PNGs, just like original SVGs, but loading them is much faster
  <a id="gtk-launch"></a><span class="command"><span class="term"><strong>gtk-launch</strong></span></span>                             launches an application using the given name. The name should match the application desktop file name, as residing in <code class="filename">/usr/share/applications</code>, with or without the '.desktop' suffix
  <a id="gtk-query-immodules-3.0"></a><span class="command"><span class="term"><strong>gtk-query-immodules-3.0</strong></span></span>   collects information about loadable input method modules for <span class="application">GTK3</span> and writes it to the default cache file location, or to standard output
  <a id="gtk-query-settings"></a><span class="command"><span class="term"><strong>gtk-query-settings</strong></span></span>             provides a complete listing of all settings related to <span class="application">GTK3</span>
  <a id="gtk-update-icon-cache3"></a><span class="command"><span class="term"><strong>gtk-update-icon-cache</strong></span></span>      is an icon theme caching utility that creates mmap()able cache files for icon themes
  <a id="libgailutil-3"></a><span class="term"><code class="filename">libgailutil-3.so</code></span>                       contains functions that implement the accessibility interfaces defined by the <span class="application">GNOME</span> Accessibility Toolkit
  <a id="libgdk-3"></a><span class="term"><code class="filename">libgdk-3.so</code></span>                                 contains functions that act as a wrapper around the low-level drawing and windowing functions provided by the underlying graphics system
  <a id="libgtk-3"></a><span class="term"><code class="filename">libgtk-3.so</code></span>                                 contains functions that provide an API to implement graphical user interfaces
  ------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](graphene.md "Graphene-1.10.8")

    Graphene-1.10.8

-   [Next](gtk4.md "GTK-4.22.4")

    GTK-4.22.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

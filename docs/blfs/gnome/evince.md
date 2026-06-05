<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](brasero.md "Brasero-3.12.3")

    Brasero-3.12.3

-   [Next](evolution.md "Evolution-3.60.2")

    Evolution-3.60.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Evince-48.4 {#evince-48.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Evince {#introduction-to-evince}

<span class="application">Evince</span> is a document viewer for multiple document formats. It supports PDF, Postscript, DjVu, TIFF and DVI. It is useful for viewing documents of various types using one simple application instead of the multiple document viewers that once existed on the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/evince/48/evince-48.4.tar.xz">https://download.gnome.org/sources/evince/48/evince-48.4.tar.xz</a>

-   Download MD5 sum: 5df36228e83ac93a5860f013af50c5c8

-   Download size: 2.9 MB

-   Estimated disk space required: 90 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### Evince Dependencies

#### Required

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>

#### Recommended

<a class="xref" href="gnome-keyring.md" title="gnome-keyring-50.0">gnome-keyring-50.0</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>

#### Optional

<a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a> (to enable printing if support is built into <span class="application">GTK+ 3</span>), <a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/libgxps.md" title="libgxps-0.3.2">libgxps-0.3.2</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), <a class="ulink" href="https://djvu.sourceforge.net/">DjVuLibre</a>, <a class="ulink" href="https://www.freedesktop.org/wiki/Software/libspectre/">libspectre</a>, and <a class="ulink" href="https://github.com/jlaurens/synctex">Synctex</a>
</div>

<div class="installation" lang="en">
## Installation of Evince {#installation-of-evince}

Install <span class="application">Evince</span> by running the following commands:

```bash
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

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir/s@\$@ / 'evince-48.4'@" -i ../help/meson.build &&
meson configure -D gtk_doc=true                                 &&
ninja
```

This package does not have a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`CPPFLAGS+=" -I/opt/texlive/2025/include"`*: Make sure that meson can find libkpathsea headers from TeXLive if it is installed. This has no effect on systems without TeXLive installed.

*`--wrap-mode=nodownload`*: This switch disables fetching any dependency: the build system tries to fetch gi-docgen even if *`-D gtk_doc=false`* is passed.

*`-D gtk_doc=false`*: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.

<code class="option">-D gspell=false</code>: This switch turns off support for the spell checking plugin.

<code class="option">-D introspection=false</code>: Use this option if you don't have built <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> with GObject Introspection and don't wish to have introspection support built into Evince.

<code class="option">-D nautilus=false</code>: This switch disables building the <span class="application">Nautilus</span> Plugin. Use this switch if <span class="application">Nautilus</span> is not installed.

<code class="option">-D keyring=false</code>: This switch disables the use of <span class="application">libsecret</span>. Use this switch if <span class="application">libsecret</span> is not installed.

<code class="option">-D ps=enabled</code>: Use this switch if <span class="application">libspectre</span> is installed and you want to view PostScript files with <span class="application">Evince</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">evince, evince-previewer, and evince-thumbnailer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libevdocument3.so and libevview3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,share}/evince, /usr/share/gtk-doc/html/{evince,libevdocument-3.0,libevview-3.0} (optional), and /usr/share/help/\*/evince</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------------------------
  <a id="evince-prog"></a><span class="command"><span class="term"><strong>evince</strong></span></span>                      is a multiple format document viewer
  <a id="evince-previewer"></a><span class="command"><span class="term"><strong>evince-previewer</strong></span></span>       is an application that implements the printing previewer
  <a id="evince-thumbnailer"></a><span class="command"><span class="term"><strong>evince-thumbnailer</strong></span></span>   is a simple program used to create thumbnail images of supported documents
  -------------------------------------------------------------------- ----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](brasero.md "Brasero-3.12.3")

    Brasero-3.12.3

-   [Next](evolution.md "Evolution-3.60.2")

    Evolution-3.60.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

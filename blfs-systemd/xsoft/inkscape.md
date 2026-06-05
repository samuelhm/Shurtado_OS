<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](gparted.md "Gparted-1.8.1")

    Gparted-1.8.1

-   [Next](rxvt-unicode.md "rxvt-unicode-9.31")

    rxvt-unicode-9.31

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Inkscape-1.4.4 {#inkscape-1.4.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Inkscape {#introduction-to-inkscape}

<span class="application">Inkscape</span> is a what you see is what you get Scalable Vector Graphics editor. It is useful for creating, viewing and changing SVG images.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://inkscape.org/gallery/item/59505/inkscape-1.4.4.tar.xz">https://inkscape.org/gallery/item/59505/inkscape-1.4.4.tar.xz</a>

-   Download MD5 sum: 60ed50c2de060307ad1a6555c7653458

-   Download size: 52 MB

-   Estimated disk space required: 1.1 GB (216 MB installed)

-   Estimated build time: 2.2 SBU (with parallelism=8)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/inkscape-1.4.4-poppler_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/inkscape-1.4.4-poppler_fixes-1.patch</a>
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tarball <code class="filename">inkscape-1.4.4.tar.xz</code> will extract to the directory <code class="filename">inkscape-1.4.4_2026-05-05_dcaf3e7d9e/</code>.
</div>

### Inkscape Dependencies

#### Required

<a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>, <a class="xref" href="../general/double-conversion.md" title="Double-conversion-3.4.0">double-conversion-3.4.0</a>, <a class="xref" href="../general/gc.md" title="GC-8.2.12">GC-8.2.12</a>, <a class="xref" href="../general/gsl.md" title="gsl-2.8">gsl-2.8</a>, <a class="xref" href="../x/gtkmm3.md" title="Gtkmm-3.24.10">Gtkmm-3.24.10</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, and <a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>

#### Recommended

<a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a> (runtime), <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a> (to eliminate plugin warnings), <a class="xref" href="../general/potrace.md" title="Potrace-1.16">Potrace-1.16</a> (for the bucket-fill tool), also various Python modules at runtime for the core extensions: <a class="xref" href="../general/python-modules.md#cachecontrol" title="cachecontrol-0.14.4">cachecontrol-0.14.4</a>, <a class="xref" href="../general/python-modules.md#cssselect" title="CSSSelect-1.4.0">cssselect-1.4.0</a>, <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>, <a class="xref" href="../general/python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a>, <a class="xref" href="../general/python-modules.md#pyserial" title="pySerial-3.5">pySerial-3.5</a>, and <a class="xref" href="../general/python-modules.md#scour" title="Scour-0.38.2">Scour-0.38.2</a>

#### Optional

<a class="xref" href="../general/aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a>, <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (to run inkscape from scripts), <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a>, <a class="ulink" href="https://sourceforge.net/projects/graphicsmagick">GraphicsMagick</a>, <a class="ulink" href="https://github.com/LibreOffice/libcdr">libcdr</a>, <a class="ulink" href="https://github.com/LibreOffice/libvisio">libvisio</a>, <a class="ulink" href="https://libwpg.sourceforge.net/">libwpg</a> (or <a class="ulink" href="https://libwpd.sourceforge.net/">libwpd</a>)
</div>

<div class="installation" lang="en">
## Installation of Inkscape {#installation-of-inkscape}

First, fix build failures starting with poppler-26.05 and later:

```bash
patch -Np1 -i ../inkscape-1.4.4-poppler_fixes-1.patch
```

Install <span class="application">Inkscape</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to build the release library without any debug \`assert\` in the code.

*`-D WITH_INTERNAL_2GEOM=ON`*: This switch is useless for the first build of <span class="application">Inkscape</span>, but it prevents linking to the previously installed <code class="filename">lib2geom.so</code> library when upgrading <span class="application">Inkscape</span>.

*`-W no-dev`*: This parameter silences several warnings only intended for project developers.

<code class="option">-D WITH_DBUS=ON</code>: use this if you wish to use <span class="command"><strong>inkscape</strong></span> in interactive scripts which manipulate images.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">inkscape and inkview</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">lib2geom.so and libinkscape_base.so (in /usr/lib/inkscape)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/2geom-1.4.0, /usr/lib/inkscape, and /usr/share/inkscape</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------
  <a id="inkscape-prog"></a><span class="command"><span class="term"><strong>inkscape</strong></span></span>              is a SVG (Scalable Vector Graphics) editing program
  <a id="inkview"></a><span class="command"><span class="term"><strong>inkview</strong></span></span>                     is a simple program for displaying SVG files
  <a id="libinkscape_base"></a><span class="term"><code class="filename">libinkscape_base.so</code></span>   provides the routines used by inkscape and inkview
  <a id="lib2geom"></a><span class="term"><code class="filename">lib2geom.so</code></span>                   is a C++ 2D geometry library for vector graphics
  ---------------------------------------------------------------- -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gparted.md "Gparted-1.8.1")

    Gparted-1.8.1

-   [Next](rxvt-unicode.md "rxvt-unicode-9.31")

    rxvt-unicode-9.31

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](freeglut.md "Freeglut-3.8.0")

    Freeglut-3.8.0

-   [Next](glew.md "GLEW-2.3.1")

    GLEW-2.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gdk-pixbuf-2.44.6 {#gdk-pixbuf-2.44.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gdk Pixbuf {#introduction-to-gdk-pixbuf}

The <span class="application">Gdk Pixbuf</span> package is a toolkit for image loading and pixel buffer manipulation. It is used by <span class="application">GTK+ 3</span> to load and manipulate images. In the past it was distributed as part of <span class="application">GTK+ 2</span>, but it was split off into a separate package in preparation for the change to <span class="application">GTK+ 3</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gdk-pixbuf/2.44/gdk-pixbuf-2.44.6.tar.xz">https://download.gnome.org/sources/gdk-pixbuf/2.44/gdk-pixbuf-2.44.6.tar.xz</a>

-   Download MD5 sum: ad6ce42706cd6947971c7d046c804222

-   Download size: 5.8 MB

-   Estimated disk space required: 68 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### Gdk Pixbuf Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME) and <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>

#### Recommended

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> and <a class="xref" href="../general/glycin.md" title="glycin-2.1.1">glycin-2.1.1</a> (circular: build gdk-pixbuf without glycin first, then build glycin with all its recommended dependencies, and rebuild gdk-pixbuf again)

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (to generate documentation), <a class="xref" href="../general/libavif.md" title="libavif-1.4.2">libavif-1.4.2</a> (runtime, deprecated), <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> (deprecated), <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a> (runtime, deprecated), <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> (deprecated), <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a> (runtime, deprecated), and <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a> (deprecated)
</div>

<div class="installation" lang="en">
## Installation of Gdk Pixbuf {#installation-of-gdk-pixbuf}

Install <span class="application">Gdk Pixbuf</span> by running the following commands:

```bash
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

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir =/s@\$@ / 'gdk-pixbuf-2.44.6'@" -i ../docs/meson.build &&
meson configure -D gtk_doc=true                                        &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package on to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, an important file was not installed and should be copied and/or generated. Generate it using the following command as the <code class="systemitem">root</code> user:

```bash
gdk-pixbuf-query-loaders --update-cache
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D *=disabled`*: Don't build the components obsoleted in favor of glycin. Those components are automatically disabled when building this package with glycin installed, but explicitly specify those options to make the configuration of the first build (without glycin) consistent.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gdk-pixbuf-csource, gdk-pixbuf-pixdata, and gdk-pixbuf-query-loaders</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgdk_pixbuf-2.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gdk-pixbuf-2.0, /usr/lib/gdk-pixbuf-2.0, /usr/libexec/installed-tests/gdk-pixbuf, /usr/share/installed-tests/gdk-pixbuf, /usr/share/gtk-doc/html/gdk-pixbuf, and /usr/share/thumbnailers</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gdk-pixbuf-csource"></a><span class="command"><span class="term"><strong>gdk-pixbuf-csource</strong></span></span>               is a small utility that generates C code containing images, used for compiling images directly into programs
  <a id="gdk-pixbuf-pixdata"></a><span class="command"><span class="term"><strong>gdk-pixbuf-pixdata</strong></span></span>               is a tool used to convert GdkPixbuf to GdkPixdata
  <a id="gdk-pixbuf-query-loaders"></a><span class="command"><span class="term"><strong>gdk-pixbuf-query-loaders</strong></span></span>   collects information about loadable modules for <span class="application">Gdk Pixbuf</span> and writes it to the default cache file location, or to stdout
  <a id="libgdk_pixbuf-2"></a><span class="term"><code class="filename">libgdk_pixbuf-2.0.so</code></span>                   contains functions used to load and render images
  -------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](freeglut.md "Freeglut-3.8.0")

    Freeglut-3.8.0

-   [Next](glew.md "GLEW-2.3.1")

    GLEW-2.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

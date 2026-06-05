<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](at-spi2-core.md "at-spi2-core-2.60.4")

    at-spi2-core-2.60.4

-   [Next](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)")

    libcairomm-1.0 (cairomm-1.14.5)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cairo-1.18.4 {#cairo-1.18.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cairo {#introduction-to-cairo}

<span class="application">Cairo</span> is a 2D graphics library with support for multiple output devices. Currently supported output targets include the <span class="application">X</span> Window System, Win32, image buffers, PostScript, PDF and SVG. Experimental backends include OpenGL, Quartz and XCB file output. <span class="application">Cairo</span> is designed to produce consistent output on all output media while taking advantage of display hardware acceleration when available (e.g. through the X Render Extension). The <span class="application">Cairo</span> API provides operations similar to the drawing operators of PostScript and PDF. Operations in <span class="application">Cairo</span> include stroking and filling cubic Bézier splines, transforming and compositing translucent images, and antialiased text rendering. All drawing operations can be transformed by any <a class="ulink" href="https://en.wikipedia.org/wiki/Affine_transformation">affine transformation</a> (scale, rotation, shear, etc.)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cairographics.org/releases/cairo-1.18.4.tar.xz">https://www.cairographics.org/releases/cairo-1.18.4.tar.xz</a>

-   Download MD5 sum: db575fb41bbda127e0147e401f36f8ac

-   Download size: 31 MB

-   Estimated disk space required: 95 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Cairo Dependencies

#### Required

<a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> and <a class="xref" href="../general/pixman.md" title="Pixman-0.46.4">Pixman-0.46.4</a>

#### Recommended

<a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (required for most GUIs), and <a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/lzo.md" title="LZO-2.10">LZO-2.10</a>, <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a>, and <a class="ulink" href="https://www.freedesktop.org/wiki/Software/libspectre/">libspectre</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There is a circular dependency between cairo and harfbuzz. If cairo is built before harfbuzz, it is necessary to rebuild cairo after harfbuzz in order to build pango.
</div>
</div>

<div class="installation" lang="en">
## Installation of Cairo {#installation-of-cairo}

Install <span class="application">Cairo</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not have a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D xlib-xcb=enabled</code>: This switch enables several experimental Xlib/XCB functions used by some window managers.

<code class="option">-D gtk_doc=true</code>: Use this parameter if GTK-Doc is installed and you wish to create and install the documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cairo-trace</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcairo.so, libcairo-gobject.so, and libcairo-script-interpreter.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/cairo and /usr/lib/cairo</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
  <a id="cairo-trace"></a><span class="command"><span class="term"><strong>cairo-trace</strong></span></span>                                   generates a log of all calls made by an application to <span class="application">Cairo</span>
  <a id="libcairo"></a><span class="term"><code class="filename">libcairo.so</code></span>                                         contains the 2D graphics functions required for rendering to the various output targets
  <a id="libcairo-gobject"></a><span class="term"><code class="filename">libcairo-gobject.so</code></span>                         contains functions that integrate <span class="application">Cairo</span> with <span class="application">Glib</span>'s GObject type system
  <a id="libcairo-script-interpreter"></a><span class="term"><code class="filename">libcairo-script-interpreter.so</code></span>   contains the script interpreter functions for executing and manipulating <span class="application">Cairo</span> execution traces
  -------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](at-spi2-core.md "at-spi2-core-2.60.4")

    at-spi2-core-2.60.4

-   [Next](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)")

    libcairomm-1.0 (cairomm-1.14.5)

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](graphite2.md "Graphite2-1.3.14")

    Graphite2-1.3.14

-   [Next](imath.md "Imath-3.2.2")

    Imath-3.2.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# harfBuzz-14.2.1 {#harfbuzz-14.2.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Harfbuzz {#introduction-to-harfbuzz}

The <span class="application">HarfBuzz</span> package contains an OpenType text shaping engine.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/harfbuzz/harfbuzz/releases/download/14.2.1/harfbuzz-14.2.1.tar.xz">https://github.com/harfbuzz/harfbuzz/releases/download/14.2.1/harfbuzz-14.2.1.tar.xz</a>

-   Download MD5 sum: dda477eb1b44ac816ec1a8e4effee1af

-   Download size: 19 MB

-   Estimated disk space required: 164 MB (with tests)

-   Estimated build time: 0.9 SBU (with tests; both using parallelism=4)
</div>

### HarfBuzz Dependencies

#### Recommended

<a class="xref" href="freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (required for Pango; GObject Introspection required for building GNOME), <a class="xref" href="graphite2.md" title="Graphite2-1.3.14">Graphite2-1.3.14</a> (required for building <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> or <a class="xref" href="../xsoft/libreoffice.md" title="LibreOffice-26.2.2">LibreOffice-26.2.2.2</a> with system harfbuzz), and <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>

#### Optional

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> (circular: build cairo and all its recommended dependencies, including harfbuzz, first, then rebuild harfbuzz if the cairo backend is needed), <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../x/glew.md" title="GLEW-2.3.1">GLEW-2.3.1</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, and <a class="ulink" href="https://linuxfromscratch.org/slfs/view/dev/graph/glfw.md">glfw</a> (all three for the <span class="application">hb-gpu</span> utility), <a class="ulink" href="https://pypi.org/project/FontTools/">FontTools</a> (Python 3 module, for the test suite), <a class="ulink" href="https://www.colm.net/open-source/ragel/">ragel</a>, and <a class="ulink" href="https://github.com/bytecodealliance/wasm-micro-runtime">wasm-micro-runtime</a>

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

Recommended dependencies are not strictly required to build the package. However, you might not get expected results at runtime if you don't install them. Please do not report bugs with this package if you <span class="emphasis"><em>have not</em></span> installed the recommended dependencies.
</div>
</div>

<div class="installation" lang="en">
## Installation of HarfBuzz {#installation-of-harfbuzz}

Install <span class="application">HarfBuzz</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D graphite2=enabled &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D graphite2=enabled`*: This switch enables <span class="application">Graphite2</span> support, which is required for building <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> or <a class="xref" href="../xsoft/libreoffice.md" title="LibreOffice-26.2.2">LibreOffice-26.2.2.2</a> with system harfbuzz.

<code class="option">-D docs=disabled</code>: If <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> is installed, the documentation is built and installed. This switch prevents that.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">hb-info, hb-raster, hb-shape, hb-subset, hb-vector, and hb-view (only if Cairo is installed)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libharfbuzz.so, libharfbuzz-cairo.so (only if Cairo is installed), libharfbuzz-gobject.so, libharfbuzz-gpu.so, libharfbuzz-icu.so, libharfbuzz-raster.so, libharfbuzz-subset.so, and libharfbuzz-vector.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/harfbuzz, /usr/lib/cmake/harfbuzz, and /usr/share/gtk-doc/html/harfbuzz (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="hb-info"></a><span class="command"><span class="term"><strong>hb-info</strong></span></span>                           is used for gathering information about fonts installed on the system
  <a id="hb-raster"></a><span class="command"><span class="term"><strong>hb-raster</strong></span></span>                       is used to render shaped text as a raster image using a given font
  <a id="hb-shape"></a><span class="command"><span class="term"><strong>hb-shape</strong></span></span>                         is used for the conversion of text strings into positioned glyphs
  <a id="hb-subset"></a><span class="command"><span class="term"><strong>hb-subset</strong></span></span>                       is used to create subsets of fonts, and display text using them
  <a id="hb-vector"></a><span class="command"><span class="term"><strong>hb-vector</strong></span></span>                       is used to draw text in SVG format with a given font
  <a id="hb-view"></a><span class="command"><span class="term"><strong>hb-view</strong></span></span>                           displays a graphical view of a string shape using a particular font as a set of glyphs. The output format is automatically defined by the file extension, the supported ones being ansi/png/svg/pdf/ps/eps. For example: <span class="command"><strong>hb-view --output-file=hello.png /usr/share/fonts/dejavu/DejaVuSans.ttf "Hello World."</strong></span>
  <a id="libharfbuzz"></a><span class="term"><code class="filename">libharfbuzz.so</code></span>                   is the HarfBuzz text shaping library
  <a id="libharfbuzz-cairo"></a><span class="term"><code class="filename">libharfbuzz-cairo.so</code></span>       provides Cairo integration for the Harfbuzz text shaping library
  <a id="libharfbuzz-gobject"></a><span class="term"><code class="filename">libharfbuzz-gobject.so</code></span>   provides GObject integration for the HarfBuzz text shaping library
  <a id="libharfbuzz-gpu"></a><span class="term"><code class="filename">libharfbuzz-gpu.so</code></span>           provides API functions for encoding glyph outlines on the CPU into compact blobs that the GPU decodes and rasterizes directly into a fragment shader
  <a id="libharfbuzz-icu"></a><span class="term"><code class="filename">libharfbuzz-icu.so</code></span>           provides ICU integration for the HarfBuzz text shaping library
  <a id="libharfbuzz-raster"></a><span class="term"><code class="filename">libharfbuzz-raster.so</code></span>     provides API functions for rasterizing glyphs to bitmaps, including color fonts
  <a id="libharfbuzz-subset"></a><span class="term"><code class="filename">libharfbuzz-subset.so</code></span>     provides API functions for performing subsetting operations on font files
  <a id="libharfbuzz-vector"></a><span class="term"><code class="filename">libharfbuzz-vector.so</code></span>     provides API functions for outputting glyphs to vector formats, including color fonts. Only SVG is currently supported, but more formats may come later
  ---------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](graphite2.md "Graphite2-1.3.14")

    Graphite2-1.3.14

-   [Next](imath.md "Imath-3.2.2")

    Imath-3.2.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

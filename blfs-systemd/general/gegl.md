<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](fribidi.md "FriBidi-1.0.16")

    FriBidi-1.0.16

-   [Next](giflib.md "giflib-6.1.3")

    giflib-6.1.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gegl-0.4.70 {#gegl-0.4.70}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gegl {#introduction-to-gegl}

This package provides the GEneric Graphics Library, which is a graph based image processing format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gimp.org/pub/gegl/0.4/gegl-0.4.70.tar.xz">https://download.gimp.org/pub/gegl/0.4/gegl-0.4.70.tar.xz</a>

-   Download MD5 sum: 2442d5f0cb97bcc1b50d2082e29c9375

-   Download size: 5.9 MB

-   Estimated disk space required: 159 MB (With tests)

-   Estimated build time: 0.9 SBU (with tests, both with parallelism=4)
</div>

#### Required

<a class="xref" href="babl.md" title="babl-0.1.126">babl-0.1.126</a> and <a class="xref" href="json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (build with pango and libpng), <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>, and <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

#### Optional

<a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, <a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> (currently broken), <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="../gnome/gexiv2.md" title="gexiv2-0.16.0">gexiv2-0.16.0</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="jasper.md" title="jasper-4.2.9">jasper-4.2.9</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libraw.md" title="libraw-0.22.1">libraw-0.22.1</a>, <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="libspiro.md" title="Libspiro-20220722">libspiro-20220722</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="luajit.md" title="luajit-20260213">luajit-20260213</a>, <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, <a class="xref" href="poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, <a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="xref" href="../multimedia/v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, <a class="ulink" href="https://lensfun.github.io/">lensfun</a>, <a class="ulink" href="https://www.netsurf-browser.org/projects/libnsgif/">libnsgif</a>, <a class="ulink" href="https://faculty.cse.tamu.edu/davis/suitesparse.md">libumfpack</a>, <a class="ulink" href="https://github.com/gerddie/maxflow">maxflow</a>, <a class="ulink" href="https://github.com/hodefoting/mrg/releases">MRG</a>, <a class="ulink" href="https://www.khronos.org/opencl/">OpenCL</a>, <a class="ulink" href="https://www.openexr.com">OpenEXR</a>, <a class="ulink" href="https://github.com/KyleLink/poly2tri-c">poly2tri-c</a>, <a class="ulink" href="https://www.gnu.org/software/src-highlite/">source-highlight</a>, and <a class="ulink" href="https://w3m.sourceforge.net/">w3m</a>
</div>

<div class="installation" lang="en">
## Installation of gegl {#installation-of-gegl}

If you are installing over a previous version of <span class="application">gegl</span>, one of the modules will need to be removed. As the <code class="systemitem">root</code> user, run the following command to remove it:

```bash
rm -f /usr/lib/gegl-0.4/vector-fill.so
```

Install <span class="application">gegl</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To run the tests, issue: <span class="command"><strong>ninja test</strong></span>. Many tests are skipped depending on what optional dependencies are installed. Fourteen tests are known to fail in the <code class="filename">gegl:ff-load-save</code> portion of the test suite due to incompatibilities with recent versions of ffmpeg.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D docs=true</code>: Use this switch to build and install the documentation (requires <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>).
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gegl and gegl-imgcmp</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgegl-0.4.so, libgegl-npd-0.4.so, and modules in /usr/lib/gegl-0.4</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/gegl-0.4 and /usr/include/gegl-0.4</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------
  <a id="gegl-prog"></a><span class="command"><span class="term"><strong>gegl</strong></span></span>                    is a commandline tool for interfacing with the gegl library
  <a id="gegl-imgcmp"></a><span class="command"><span class="term"><strong>gegl-imgcmp</strong></span></span>           is a simple image difference detection tool for use in regression testing
  <a id="libgegl-0.4"></a><span class="term"><code class="filename">libgegl-0.4.so</code></span>           provides infrastructure to do demand based cached non destructive image editing on larger than RAM buffers
  <a id="libgegl-npd-0.4"></a><span class="term"><code class="filename">libgegl-npd-0.4.so</code></span>   is the GEGL N-point image deformation library
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fribidi.md "FriBidi-1.0.16")

    FriBidi-1.0.16

-   [Next](giflib.md "giflib-6.1.3")

    giflib-6.1.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

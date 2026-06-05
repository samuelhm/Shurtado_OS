<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libraw.md "libraw-0.22.1")

    libraw-0.22.1

-   [Next](libspiro.md "Libspiro-20220722")

    Libspiro-20220722

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# librsvg-2.62.3 {#librsvg-2.62.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to librsvg {#introduction-to-librsvg}

The <span class="application">librsvg</span> package contains a library and tools used to manipulate, convert and view Scalable Vector Graphic (SVG) images.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/librsvg/2.62/librsvg-2.62.3.tar.xz">https://download.gnome.org/sources/librsvg/2.62/librsvg-2.62.3.tar.xz</a>

-   Download MD5 sum: bf6d56ffe4cfa5426cf1a67bcabdf5ce

-   Download size: 6.5 MB

-   Estimated disk space required: 2.0 GB (with tests; 18 MB installed)

-   Estimated build time: 0.6 SBU (add 0.3 SBU for tests; both using parallelism=4)
</div>

### librsvg Dependencies

#### Required

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="cargo-c.md" title="cargo-c-0.10.23">cargo-c-0.10.23</a>, and <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>

#### Recommended

<a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a> (to support embedded AVIF in SVG), <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (for man pages), and <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of librsvg {#installation-of-librsvg}

First, fix the installation path of the API documentation:

```bash
sed -e "/OUTDIR/s|,| / 'librsvg-2.62.3', '--no-namespace-dir',|" \
    -e '/output/s|Rsvg-2.0|librsvg-2.62.3|'                      \
    -i doc/meson.build
```

Install <span class="application">librsvg</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue:

```bash
meson test -v
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">rsvg-convert</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">librsvg-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/librsvg-2.0 and /usr/share/doc/librsvg-2.62.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------
  <a id="rsvg-convert"></a><span class="command"><span class="term"><strong>rsvg-convert</strong></span></span>   is used to convert images into PNG, PDF, PS, SVG and other formats
  <a id="librsvg-2"></a><span class="term"><code class="filename">librsvg-2.so</code></span>         provides the functions to render Scalable Vector Graphics
  -------------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libraw.md "libraw-0.22.1")

    libraw-0.22.1

-   [Next](libspiro.md "Libspiro-20220722")

    Libspiro-20220722

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

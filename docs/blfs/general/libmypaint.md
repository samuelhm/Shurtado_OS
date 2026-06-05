<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libmng.md "libmng-2.0.3")

    libmng-2.0.3

-   [Next](libpng.md "libpng-1.6.58")

    libpng-1.6.58

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmypaint-1.6.1 {#libmypaint-1.6.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmypaint {#introduction-to-libmypaint}

The <span class="application">libmypaint</span> package, a.k.a. "brushlib", is a library for making brushstrokes which is used by MyPaint and other projects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mypaint/libmypaint/releases/download/v1.6.1/libmypaint-1.6.1.tar.xz">https://github.com/mypaint/libmypaint/releases/download/v1.6.1/libmypaint-1.6.1.tar.xz</a>

-   Download MD5 sum: 7f1dab2d30ce8a3f494354c7c77a2977

-   Download size: 508 KB

-   Estimated disk space required: 11 MB (add 1 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.3 SBU for tests)
</div>

### libmypaint Dependencies

#### Required

<a class="xref" href="intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a> and <a class="xref" href="json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to create XML docs), <a class="ulink" href="https://download.gimp.org/pub/gegl/0.3/">gegl (0.3 versions only)</a> and <a class="ulink" href="https://github.com/gperftools/gperftools">gperftools</a>
</div>

<div class="installation" lang="en">
## Installation of libmypaint {#installation-of-libmypaint}

Install <span class="application">libmypaint</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None.</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmypaint.so (and optionally libmypaint-gegl.so which is not used by any packages in this book).</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libmypaint</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------
  <a id="libmypaint-lib"></a><span class="term"><code class="filename">libmypaint.so</code></span>   contains functions for making brushstrokes
  -------------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmng.md "libmng-2.0.3")

    libmng-2.0.3

-   [Next](libpng.md "libpng-1.6.58")

    libpng-1.6.58

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

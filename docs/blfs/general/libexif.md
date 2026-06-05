<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libavif.md "libavif-1.4.2")

    libavif-1.4.2

-   [Next](libgxps.md "libgxps-0.3.2")

    libgxps-0.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libexif-0.6.26 {#libexif-0.6.26}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libexif {#introduction-to-libexif}

The <span class="application">libexif</span> package contains a library for parsing, editing, and saving EXIF data. Most digital cameras produce EXIF files, which are JPEG files with extra tags that contain information about the image. All EXIF tags described in EXIF standard 2.1 are supported.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libexif/libexif/releases/download/v0.6.26/libexif-0.6.26.tar.bz2">https://github.com/libexif/libexif/releases/download/v0.6.26/libexif-0.6.26.tar.bz2</a>

-   Download MD5 sum: d659a750d1be6330105de54eb3bf627a

-   Download size: 2.0 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libexif Dependencies

#### Optional (to Build Documentation)

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>
</div>

<div class="installation" lang="en">
## Installation of libexif {#installation-of-libexif}

Install <span class="application">libexif</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --with-doc-dir=/usr/share/doc/libexif-0.6.26 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Documentation was built and installed if you have the dependencies shown above installed. If you don't have the dependencies installed, there is a compressed tarball in the source tree <code class="filename">doc</code> directory that can be unpacked into /usr/share/doc/libexif-0.6.26.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libexif.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libexif and /usr/share/doc/libexif-0.6.26</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------
  <a id="libexif-lib"></a><span class="term"><code class="filename">libexif.so</code></span>   contains functions used for parsing, editing, and saving EXIF data
  -------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libavif.md "libavif-1.4.2")

    libavif-1.4.2

-   [Next](libgxps.md "libgxps-0.3.2")

    libgxps-0.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

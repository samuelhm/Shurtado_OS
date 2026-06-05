<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](openjpeg2.md "OpenJPEG-2.5.4")

    OpenJPEG-2.5.4

-   [Next](poppler.md "Poppler-26.06.0")

    Poppler-26.06.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pixman-0.46.4 {#pixman-0.46.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pixman {#introduction-to-pixman}

The <span class="application">Pixman</span> package contains a library that provides low-level pixel manipulation features such as image compositing and trapezoid rasterization.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cairographics.org/releases/pixman-0.46.4.tar.gz">https://www.cairographics.org/releases/pixman-0.46.4.tar.gz</a>

-   Download MD5 sum: c08173c8e1d2cc79428d931c13ffda59

-   Download size: 808 KB

-   Estimated disk space required: 28 MB (With tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
</div>

### Pixman Dependencies

#### Optional

<a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for tests and demos)
</div>

<div class="installation" lang="en">
## Installation of Pixman {#installation-of-pixman}

Install <span class="application">Pixman</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libpixman-1.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/pixman-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------
  <a id="libpixman"></a><span class="term"><code class="filename">libpixman-1.so</code></span>   contains functions that provide low-level pixel manipulation features
  ---------------------------------------------------- -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](openjpeg2.md "OpenJPEG-2.5.4")

    OpenJPEG-2.5.4

-   [Next](poppler.md "Poppler-26.06.0")

    Poppler-26.06.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

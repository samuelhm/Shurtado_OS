<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](feh.md "feh-3.12.2")

    feh-3.12.2

-   [Next](freerdp.md "FreeRDP-3.26.0")

    FreeRDP-3.26.0

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FontForge-20251009 {#fontforge-20251009}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FontForge {#introduction-to-fontforge}

The <span class="application">FontForge</span> package contains an outline font editor that lets you create your own postscript, truetype, opentype, cid-keyed, multi-master, cff, svg and bitmap (bdf, FON, NFNT) fonts, or edit existing ones.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fontforge/fontforge/releases/download/20251009/fontforge-20251009.tar.xz">https://github.com/fontforge/fontforge/releases/download/20251009/fontforge-20251009.tar.xz</a>

-   Download MD5 sum: 9407db5126f937618f1f5f1f9ee8aab2

-   Download size: 13 MB

-   Estimated disk space required: 170 MB (add 51 MB for the tests)

-   Estimated build time: 0.4 SBU (with parallelism=4, add 0.1 SBU for the tests)
</div>

### FontForge Dependencies

#### Required

<a class="xref" href="../x/gtkmm3.md" title="Gtkmm-3.24.10">Gtkmm-3.24.10</a>, <a class="xref" href="../general/libspiro.md" title="Libspiro-20220722">libspiro-20220722</a>, and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (to build html documentation), and <a class="xref" href="../general/woff2.md" title="woff2-1.0.2">WOFF2-1.0.2</a>
</div>

<div class="installation" lang="en">
## Installation of FontForge {#installation-of-fontforge}

Install <span class="application">FontForge</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev .. &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have installed <span class="command"><strong>sphinx-build</strong></span>, HTML documentation was built and installed in <code class="filename">/usr/share/doc/fontforge</code>. To be able to access it as a versioned directory, create a symlink as the <code class="systemitem">root</code> user:

```bash
ln -sv fontforge /usr/share/doc/fontforge-20251009
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to create an optimized release without debug information.

*`-W no-dev`*: This switch is used to suppress warnings intended for the package's developers.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fontforge, fontimage, fontlint and sfddiff</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfontforge.so and /usr/lib/python3.14.5/site-packages/{fontforge,psMat}.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/fontforge and optionally /usr/share/doc/fontforge{,-20251009}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------------------------
  <a id="fontforge-prog"></a><span class="command"><span class="term"><strong>fontforge</strong></span></span>   is a program that allows you to create and modify font files
  <a id="fontimage"></a><span class="command"><span class="term"><strong>fontimage</strong></span></span>        is a program that produces an image showing representative glyphs of the font
  <a id="fontlint"></a><span class="command"><span class="term"><strong>fontlint</strong></span></span>          is a program that checks the font for certain common errors
  <a id="sfddiff"></a><span class="command"><span class="term"><strong>sfddiff</strong></span></span>            is a program that compares two font files
  ------------------------------------------------------- -------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](feh.md "feh-3.12.2")

    feh-3.12.2

-   [Next](freerdp.md "FreeRDP-3.26.0")

    FreeRDP-3.26.0

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

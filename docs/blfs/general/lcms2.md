<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](jasper.md "jasper-4.2.9")

    jasper-4.2.9

-   [Next](libavif.md "libavif-1.4.2")

    libavif-1.4.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Little CMS-2.19.1 {#little-cms-2.19.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Little CMS2 {#introduction-to-little-cms2}

The Little Color Management System is a small-footprint color management engine, with special focus on accuracy and performance. It uses the International Color Consortium standard (ICC), which is the modern standard for color management.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mm2/Little-CMS/releases/download/lcms2.19.1/lcms2-2.19.1.tar.gz">https://github.com/mm2/Little-CMS/releases/download/lcms2.19.1/lcms2-2.19.1.tar.gz</a>

-   Download MD5 sum: 541978f73749499e9e0277bfe5a3c868

-   Download size: 5.5 MB

-   Estimated disk space required: 17 MB (with the tests)

-   Estimated build time: 0.2 SBU (with the tests)
</div>

### Little CMS2 Dependencies

#### Optional

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> and <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>
</div>

<div class="installation" lang="en">
## Installation of Little CMS2 {#installation-of-little-cms2}

Install <span class="application">Little CMS2</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">jpgicc, linkicc, psicc, tificc, and transicc</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblcms2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------
  <a id="jpgicc"></a><span class="command"><span class="term"><strong>jpgicc</strong></span></span>       is the Little CMS ICC profile applier for JPEG
  <a id="linkicc"></a><span class="command"><span class="term"><strong>linkicc</strong></span></span>     is the Little CMS ICC device link generator
  <a id="psicc"></a><span class="command"><span class="term"><strong>psicc</strong></span></span>         is the Little CMS ICC PostScript generator
  <a id="tificc"></a><span class="command"><span class="term"><strong>tificc</strong></span></span>       is the Little CMS ICC tiff generator
  <a id="transicc"></a><span class="command"><span class="term"><strong>transicc</strong></span></span>   is the Little CMS ColorSpace conversion calculator
  <a id="liblcms2"></a><span class="term"><code class="filename">liblcms2.so</code></span>   contains functions that implement the lcms2 API
  ------------------------------------------------ ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](jasper.md "jasper-4.2.9")

    jasper-4.2.9

-   [Next](libavif.md "libavif-1.4.2")

    libavif-1.4.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

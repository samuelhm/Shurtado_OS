<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](imath.md "Imath-3.2.2")

    Imath-3.2.2

-   [Next](lcms2.md "Little CMS-2.19.1")

    Little CMS-2.19.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# jasper-4.2.9 {#jasper-4.2.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to jasper {#introduction-to-jasper}

The <span class="application">jasper</span> Project is an open-source initiative to provide a free software-based reference implementation of the JPEG-2000 codec.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/jasper-software/jasper/archive/version-4.2.9/jasper-version-4.2.9.tar.gz">https://github.com/jasper-software/jasper/archive/version-4.2.9/jasper-version-4.2.9.tar.gz</a>

-   Download MD5 sum: 5c84b0c41b6b3363124f8bc7f8881f53

-   Download size: 1.9 MB

-   Estimated disk space required: 10 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### jasper Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>

#### Optional

<a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a> (required for <span class="command"><strong>jiv</strong></span>), <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (needed for generating html documentation), and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (needed to regenerate the pdf documentation)
</div>

<div class="installation" lang="en">
## Installation of jasper {#installation-of-jasper}

Install <span class="application">jasper</span> by running the following commands:

```bash
mkdir BUILD &&
cd    BUILD &&

cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D JAS_ENABLE_DOC=NO            \
      -D ALLOW_IN_SOURCE_BUILD=YES    \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/jasper-4.2.9 \
      ..  &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D JAS_ENABLE_DOC=NO`*: This option disables rebuilding the pdf documentation if <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> is installed.

*`-D ALLOW_IN_SOURCE_BUILD=YES`*: This switch allows building from within the source tree. In our case, this is needed to allow us to build inside of the BUILD directory instead of needing to create another directory outside of the source tree.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">imgcmp, imginfo, jasper, and jiv</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libjasper.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/jasper and /usr/share/doc/jasper-4.2.9</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------
  <a id="imgcmp"></a><span class="command"><span class="term"><strong>imgcmp</strong></span></span>           compares two images of the same geometry
  <a id="imginfo"></a><span class="command"><span class="term"><strong>imginfo</strong></span></span>         displays information about an image
  <a id="jasper-command"></a><span class="command"><span class="term"><strong>jasper</strong></span></span>   converts images between formats (BMP, JPS, JPC, JPG, PGX, PNM, MIF, and RAS)
  <a id="jiv"></a><span class="command"><span class="term"><strong>jiv</strong></span></span>                 displays images
  <a id="jasper-lib"></a><span class="term"><code class="filename">libjasper.so</code></span>    is a library used by programs for reading and writing JPEG2000 format files
  ---------------------------------------------------- ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](imath.md "Imath-3.2.2")

    Imath-3.2.2

-   [Next](lcms2.md "Little CMS-2.19.1")

    Little CMS-2.19.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

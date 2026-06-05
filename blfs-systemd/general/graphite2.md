<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1")

    libglycin-gtk4 from glycin-2.1.1

-   [Next](harfbuzz.md "harfBuzz-14.2.1")

    harfBuzz-14.2.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Graphite2-1.3.14 {#graphite2-1.3.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Graphite2 {#introduction-to-graphite2}

<span class="application">Graphite2</span> is a rendering engine for graphite fonts. These are TrueType fonts with additional tables containing smart rendering information and were originally developed to support complex non-Roman writing systems. They may contain rules for e.g. ligatures, glyph substitution, kerning, justification - this can make them useful even on text written in Roman writing systems such as English. Note that <span class="application">firefox</span> by default provides an internal copy of the graphite engine and cannot use a system version (although it can now be patched to use it), but it too should benefit from the availability of graphite fonts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz">https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz</a>

-   Download MD5 sum: 1bccb985a7da01092bfb53bb5041e836

-   Download size: 6.3 MB

-   Estimated disk space required: 30 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### Graphite2 Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="ulink" href="https://sourceforge.net/projects/silgraphite/files/silgraphite/2.3.1/">silgraphite</a> to build the <span class="command"><strong>comparerender</strong></span> test and benchmarking tool, and if that is present, and <a class="xref" href="harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a> to add more functionality to it (this is a circular dependency, you would need to first build <span class="application">graphite2</span> without <span class="application">harfbuzz</span>).

To build the documentation: <a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), and <a class="ulink" href="https://dblatex.sourceforge.net/">dblatex</a> (for PDF docs)

To execute the test suite you will need <a class="ulink" href="https://pypi.python.org/pypi/FontTools">FontTools</a> (Python 3 module), otherwise, the "cmp" tests fail.

#### Optional (at runtime)

You will need at least one suitable <a class="ulink" href="https://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_fonts">graphite font</a> for the package to be useful.
</div>

<div class="installation" lang="en">
## Installation of Graphite2 {#installation-of-graphite2}

Some tests fail if <a class="ulink" href="https://pypi.python.org/pypi/FontTools">FontTools</a> (Python 3 module) is not installed. These tests can be removed with:

```bash
sed -i '/cmptest/d' tests/CMakeLists.txt
```

Fix building this package with CMake 4.0 by updating its syntax to conform to newer versions of CMake:

```bash
sed -i '/cmake_policy(SET CMP0012 NEW)/d' CMakeLists.txt &&
sed -i 's/PythonInterp/Python3/' CMakeLists.txt          &&
find . -name CMakeLists.txt | xargs sed -i 's/VERSION 2.8.0 FATAL_ERROR/VERSION 4.0.0/'
```

Now fix a problem when building with gcc-15:

```bash
sed -i '/Font.h/i #include <cstdint>' tests/featuremap/featuremaptest.cpp
```

Install <span class="application">Graphite2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

If you wish to build the documentation, issue:

```bash
make docs
```

To test the results, issue: <span class="command"><strong>make test</strong></span>. One test named <code class="filename">nametabletest</code> is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the documentation, install, as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/doc/graphite2-1.3.14 &&

cp      -v -f    doc/{GTF,manual}.md \
                    /usr/share/doc/graphite2-1.3.14 &&
cp      -v -f    doc/{GTF,manual}.pdf \
                    /usr/share/doc/graphite2-1.3.14
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D CMAKE_VERBOSE_MAKEFILE=ON</code>: This switch turns on build verbose mode.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gr2fonttest, and optionally comparerender</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgraphite2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,share}/graphite2 and optionally /usr/share/doc/graphite2-1.3.14</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------
  <a id="comparerender"></a><span class="command"><span class="term"><strong>comparerender</strong></span></span>   is a test and benchmarking tool
  <a id="gr2fonttest"></a><span class="command"><span class="term"><strong>gr2fonttest</strong></span></span>       is a diagnostic console tool for graphite fonts
  <a id="libgraphite2"></a><span class="term"><code class="filename">libgraphite2.so</code></span>     is a rendering engine for graphite fonts
  ---------------------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1")

    libglycin-gtk4 from glycin-2.1.1

-   [Next](harfbuzz.md "harfBuzz-14.2.1")

    harfBuzz-14.2.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

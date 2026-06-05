<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](biber.md "biber-2.21")

    biber-2.21

-   [Next](xindy.md "xindy-2.5.1")

    xindy-2.5.1

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dvisvgm-3.6 {#dvisvgm-3.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dvisvgm {#introduction-to-dvisvgm}

The <span class="application">dvisvgm</span> package converts DVI, EPS and PDF files to SVG format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mgieseki/dvisvgm/releases/download/3.6/dvisvgm-3.6.tar.gz">https://github.com/mgieseki/dvisvgm/releases/download/3.6/dvisvgm-3.6.tar.gz</a>

-   Download MD5 sum: 46cf1f6d7092df0b65b68413ce19e1c2

-   Download size: 2.8 MB

-   Estimated disk space required: 268 MB (net 7 MB installed after overwriting files in \$TEXLIVE_PREFIX/texmf-dist/, add 948 MB for the tests)

-   Estimated build time: 0.8 SBU (add 0.5 SBU for the tests, both using parallelism=4)
</div>

### dvisvgm Dependencies

#### Required

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="../general/potrace.md" title="Potrace-1.16">Potrace-1.16</a>, and <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a>

#### Recommended

<a class="xref" href="../general/woff2.md" title="woff2-1.0.2">WOFF2-1.0.2</a>

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> with <a class="xref" href="xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="ulink" href="https://dblatex.sourceforge.net/">dblatex</a> (with the above) and <a class="ulink" href="https://github.com/Cyan4973/xxHash/releases/latest">xxHash</a> (the current version is included in the tarball)
</div>

<div class="installation" lang="en">
## Installation of dvisvgm {#installation-of-dvisvgm}

The test suite assumes that a modern version of <span class="application">Python</span> has been installed as plain <span class="command"><strong>python</strong></span>. Changing this to use <span class="command"><strong>python3</strong></span> requires a sed to one <code class="filename">Makefile.in</code> file.

Install <span class="application">dvisvgm</span> by running the following commands:

```bash
TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

sed -i 's/python/&3/' tests/Makefile.in         &&
./configure                                     \
    --bindir=$TEXLIVE_PREFIX/bin/${TEXARCH}     \
    --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man \
    --with-kpathsea=$TEXLIVE_PREFIX             &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-kpathsea=$TEXLIVE_PREFIX`*: This allows the build system to find the headers for <code class="filename">kpathsea</code>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dvisvgm</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ---------------------------------------------------
  <a id="dvisvgm-prog"></a><span class="command"><span class="term"><strong>dvisvgm</strong></span></span>   converts DVI, EPS and PDF files to the SVG format
  --------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](biber.md "biber-2.21")

    biber-2.21

-   [Next](xindy.md "xindy-2.5.1")

    xindy-2.5.1

-   [Up](typesetting.md "Chapter 51. Typesetting")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

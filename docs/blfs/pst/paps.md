<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](mupdf.md "MuPDF-1.26.12")

    MuPDF-1.26.12

-   [Next](typesetting.md "Typesetting")

    Typesetting

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# paps-0.8.0 {#paps-0.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to paps {#introduction-to-paps}

<span class="application">paps</span> is a text to PostScript converter that works through <span class="application">Pango</span>. Its input is a UTF-8 encoded text file and it outputs vectorized PostScript. It may be used for printing any complex script supported by <span class="application">Pango</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/dov/paps/releases/download/v0.8.0/paps-0.8.0.tar.gz">https://github.com/dov/paps/releases/download/v0.8.0/paps-0.8.0.tar.gz</a>

-   Download MD5 sum: 6bd661b8fd224adc3343a91e6521a4f2

-   Download size: 220 KB

-   Estimated disk space required: 4.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/paps-0.8.0-fmt_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/paps-0.8.0-fmt_fix-1.patch</a>
</div>

### paps Dependencies

#### Required

<a class="xref" href="../general/fmt.md" title="fmt-12.1.0">fmt-12.1.0</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, and <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of paps {#installation-of-paps}

First fix problems with glib-2.81.0 and fmt-12.1.0 or later:

```bash
sed -i -r 's/g_utf8_(next|offset)/(char*) &/' src/paps.cc &&
patch -Np1 -i ../paps-0.8.0-fmt_fix-1.patch
```

Install <span class="application">paps</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-Werror \
            --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

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
**Installed Program:** <span class="segbody">paps</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- --------------------------------------------------------------------------
  <a id="paps-prog"></a><span class="command"><span class="term"><strong>paps</strong></span></span>   is a text to PostScript converter that supports UTF-8 character encoding
  --------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mupdf.md "MuPDF-1.26.12")

    MuPDF-1.26.12

-   [Next](typesetting.md "Typesetting")

    Typesetting

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

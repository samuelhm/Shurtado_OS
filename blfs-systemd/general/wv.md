<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wayland-protocols.md "Wayland-Protocols-1.48")

    Wayland-Protocols-1.48

-   [Next](xapian.md "Xapian-2.0.0")

    Xapian-2.0.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# wv-1.2.9 {#wv-1.2.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to wv {#introduction-to-wv}

The <span class="application">wv</span> package contains tools for reading information from an MS Word document.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/wv/wv-1.2.9.tar.gz">https://anduin.linuxfromscratch.org/BLFS/wv/wv-1.2.9.tar.gz</a>

-   Download MD5 sum: dbccf2e9f747e50c913b7e3d126b73f7

-   Download size: 608 KB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.4 SBU
</div>

### wv Dependencies

#### Required

<a class="xref" href="libgsf.md" title="libgsf-1.14.58">libgsf-1.14.58</a> and <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>

#### Optional

<a class="ulink" href="https://wvware.sourceforge.net/libwmf.md">libwmf</a>
</div>

<div class="installation" lang="en">
## Installation of wv {#installation-of-wv}

Install <span class="application">wv</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not have a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
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
**Installed Programs:** <a class="ulink" href="https://wvware.sourceforge.net/">wvSummary and several other wv\* programs which are deprecated in favour of abiword: see <span class="segbody">https://wvware.sourceforge.net/</a></span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libwv-1.2.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/wv</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -----------------------------------------------------------
  <a id="wv-prog"></a><span class="command"><span class="term"><strong>wvSummary</strong></span></span>     displays the summary information from an MS Word document
  <a id="libwv-1.2"></a><span class="term"><code class="filename">libwv-1.2.so</code></span>   provides functions to access MS Word documents
  -------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wayland-protocols.md "Wayland-Protocols-1.48")

    Wayland-Protocols-1.48

-   [Next](xapian.md "Xapian-2.0.0")

    Xapian-2.0.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

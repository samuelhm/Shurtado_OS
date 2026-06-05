<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 47. Scanning

-   [Prev](sane.md "SANE-1.4.0")

    SANE-1.4.0

-   [Next](sgml.md "Standard Generalized Markup Language (SGML)")

    Standard Generalized Markup Language (SGML)

-   [Up](scanning.md "Chapter 47. Scanning")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Simple-scan-50.0 {#simple-scan-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Simple-scan {#introduction-to-simple-scan}

The <span class="application">Simple-scan</span> package contains a modern document scanning application. It captures images using SANE, and supports the latest color management and graphics standards.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/simple-scan/50/simple-scan-50.0.tar.xz">https://download.gnome.org/sources/simple-scan/50/simple-scan-50.0.tar.xz</a>

-   Download MD5 sum: fa447328d9e91e5624be2511f626ce06

-   Download size: 1.2 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
</div>

### Simple-scan Dependencies

#### Required

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../general/libgusb.md" title="libgusb-0.4.9">libgusb-0.4.9</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, and <a class="xref" href="sane.md" title="SANE-1.4.0">SANE-1.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of Simple-scan {#installation-of-simple-scan}

Install <span class="application">Simple-scan</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">simple-scan</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/help/\*/simple-scan</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------
  <a id="simple-scan-prog"></a><span class="command"><span class="term"><strong>simple-scan</strong></span></span>   is a modern document scanning application
  ----------------------------------------------------------- -------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sane.md "SANE-1.4.0")

    SANE-1.4.0

-   [Next](sgml.md "Standard Generalized Markup Language (SGML)")

    Standard Generalized Markup Language (SGML)

-   [Up](scanning.md "Chapter 47. Scanning")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

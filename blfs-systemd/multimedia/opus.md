<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](mlt.md "MLT-7.38.0")

    MLT-7.38.0

-   [Next](pipewire.md "Pipewire-1.6.6")

    Pipewire-1.6.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Opus-1.6.1 {#opus-1.6.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Opus {#introduction-to-opus}

<span class="application">Opus</span> is a lossy audio compression format developed by the Internet Engineering Task Force (IETF) that is particularly suitable for interactive speech and audio transmission over the Internet. This package provides the Opus development library and headers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/opus/opus-1.6.1.tar.gz">https://downloads.xiph.org/releases/opus/opus-1.6.1.tar.gz</a>

-   Download MD5 sum: 67cafc438c430aa74eeb605eef670886

-   Download size: 10 MB

-   Estimated disk space required: 41 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
</div>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of Opus {#installation-of-opus}

Install <span class="application">Opus</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr        \
            --buildtype=release  \
            -D docdir=/usr/share/doc/opus-1.6.1 &&
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
**Installed Library:** <span class="segbody">libopus.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/opus and /usr/share/doc/opus-1.6.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -----------------------------------------------------------
  <a id="libopus"></a><span class="term"><code class="filename">libopus.so</code></span>   provides the functions used to read and write Opus format
  ---------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mlt.md "MLT-7.38.0")

    MLT-7.38.0

-   [Next](pipewire.md "Pipewire-1.6.6")

    Pipewire-1.6.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

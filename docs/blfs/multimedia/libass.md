<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libaom.md "libaom-3.14.1")

    libaom-3.14.1

-   [Next](libcanberra.md "libcanberra-0.30")

    libcanberra-0.30

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libass-0.17.4 {#libass-0.17.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libass {#introduction-to-libass}

<span class="application">libass</span> is a portable subtitle renderer for the ASS/SSA (Advanced Substation Alpha/Substation Alpha) subtitle format that allows for more advanced subtitles than the conventional SRT and similar formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz">https://github.com/libass/libass/releases/download/0.17.4/libass-0.17.4.tar.xz</a>

-   Download MD5 sum: 10963e702850fd888cb270abcbe852c3

-   Download size: 444 KB

-   Estimated disk space required: 8.0 MB

-   Estimated build time: 0.1 SBU
</div>

### libass Dependencies

#### Required

<a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a> and <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a>

#### Recommended

<a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a> and <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>

#### Optional

<a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a> and <a class="ulink" href="https://github.com/adah1972/libunibreak">libunibreak</a>
</div>

<div class="installation" lang="en">
## Installation of libass {#installation-of-libass}

Install <span class="application">libass</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--disable-fontconfig</code>: Use this switch if you didn't install <span class="application">Fontconfig</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libass.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/ass</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------
  <a id="libass-lib"></a><span class="term"><code class="filename">libass.so</code></span>   provides the functions used to render ASS/SSA subtitle format
  ------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libaom.md "libaom-3.14.1")

    libaom-3.14.1

-   [Next](libcanberra.md "libcanberra-0.30")

    libcanberra-0.30

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

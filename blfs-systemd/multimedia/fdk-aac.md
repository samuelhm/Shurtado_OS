<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](faad2.md "FAAD2-2.11.2")

    FAAD2-2.11.2

-   [Next](flac.md "FLAC-1.5.0")

    FLAC-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# fdk-aac-2.0.3 {#fdk-aac-2.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to fdk-aac {#introduction-to-fdk-aac}

The <span class="application">fdk-aac</span> package provides the Fraunhofer FDK AAC library, which is purported to be a high quality Advanced Audio Coding implementation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.3.tar.gz">https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.3.tar.gz</a>

-   Download MD5 sum: f43e593991caefdce509ad837d3301bd

-   Download size: 2.8 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: 0.6 SBU (Using parallelism=4)
</div>
</div>

<div class="installation" lang="en">
## Installation of fdk-aac {#installation-of-fdk-aac}

Install <span class="application">fdk-aac</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfdk-aac.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/fdk-aac</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------
  <a id="libfdk-aac"></a><span class="term"><code class="filename">libfdk-aac.so</code></span>   provides the functions used to encode audio in AAC format
  ---------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](faad2.md "FAAD2-2.11.2")

    FAAD2-2.11.2

-   [Next](flac.md "FLAC-1.5.0")

    FLAC-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

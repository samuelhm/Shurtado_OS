<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdnav.md "libdvdnav-7.0.0")

    libdvdnav-7.0.0

-   [Next](libmad.md "libmad-0.15.1b")

    libmad-0.15.1b

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Libdv-1.0.0 {#libdv-1.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libdv {#introduction-to-libdv}

The Quasar DV Codec (<span class="application">libdv</span>) is a software CODEC for DV video, the encoding format used by most digital camcorders. It can be used to copy videos from camcorders using a firewire (IEEE 1394) connection.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/libdv/libdv-1.0.0.tar.gz">https://downloads.sourceforge.net/libdv/libdv-1.0.0.tar.gz</a>

-   Download MD5 sum: f895162161cfa4bb4a94c070a7caa6c7

-   Download size: 574 KB

-   Estimated disk space required: 6.0 MB

-   Estimated build time: 0.2 SBU
</div>

### Libdv Dependencies

#### Optional

<a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, and <a class="ulink" href="https://github.com/libsdl-org/sdl12-compat">SDL1</a>
</div>

<div class="installation" lang="en">
## Installation of Libdv {#installation-of-libdv}

Install <span class="application">libdv</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-xv     \
            --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755 -d      /usr/share/doc/libdv-1.0.0 &&
install -v -m644 README* /usr/share/doc/libdv-1.0.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-xv`*: This parameter is required if an <span class="application">X Window System</span> is not installed. It also prevents <span class="command"><strong>configure</strong></span> testing for <code class="filename">libXv</code> which is only used for an obsolete program <span class="command"><strong>playdv</strong></span> that will not be built with current <span class="application">linux</span> headers and would also need other obsolete dependencies.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dubdv, dvconnect, and encodedv</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libdv.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libdv and /usr/share/doc/libdv-1.0.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------
  <a id="dubdv"></a><span class="command"><span class="term"><strong>dubdv</strong></span></span>           inserts audio into a digital video stream
  <a id="dvconnect"></a><span class="command"><span class="term"><strong>dvconnect</strong></span></span>   is a small utility to send or capture raw data from and to the camcorder
  <a id="encodedv"></a><span class="command"><span class="term"><strong>encodedv</strong></span></span>     encodes a series of images to a digital video stream
  <a id="libdv-lib"></a><span class="term"><code class="filename">libdv.so</code></span>       provides functions for programs interacting with the Quasar DV CODEC
  -------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdvdnav.md "libdvdnav-7.0.0")

    libdvdnav-7.0.0

-   [Next](libmad.md "libmad-0.15.1b")

    libmad-0.15.1b

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

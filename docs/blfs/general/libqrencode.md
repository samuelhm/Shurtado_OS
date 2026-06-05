<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libpng.md "libpng-1.6.58")

    libpng-1.6.58

-   [Next](libraw.md "libraw-0.22.1")

    libraw-0.22.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libqrencode-4.1.1 {#libqrencode-4.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libqrencode {#introduction-to-libqrencode}

The <span class="application">libqrencode</span> package provides a fast and compact library for encoding data in a QR Code symbol, a 2D symbology that can be scanned by handheld terminals such as a mobile phone with a CCD sensor.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fukuchi/libqrencode/archive/v4.1.1/libqrencode-4.1.1.tar.gz">https://github.com/fukuchi/libqrencode/archive/v4.1.1/libqrencode-4.1.1.tar.gz</a>

-   Download MD5 sum: 486f879d1638d3fb58a4a5d45a88c600

-   Download size: 188 KB

-   Estimated disk space required: 6.6 MB (with documentation, add 5 MB for tests)

-   Estimated build time: less than 0.1 SBU, add 0.1 SBU for tests
</div>

### libqrencode Dependencies

#### Recommended

<a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> for generating documentation, and <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a> for tests
</div>

<div class="installation" lang="en">
## Installation of libqrencode {#installation-of-libqrencode}

Install <span class="application">libqrencode</span> by running the following commands:

```bash
sh autogen.sh             &&
./configure --prefix=/usr &&
make
```

If you have installed <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, you can build the documentation by issuing:

```bash
doxygen
```

The tests must be run after installing the package.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have built the optional documentation, install it as the <code class="systemitem">root</code> user:

```bash
install -vdm 755 /usr/share/doc/libqrencode-4.1.1 &&
mv html/*        /usr/share/doc/libqrencode-4.1.1
```

To test the results, if you have passed the <code class="option">--with-tests</code> option to <span class="command"><strong>configure</strong></span>, issue: <span class="command"><strong>make check</strong></span>.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--with-tests</code>: This option allows building the test programs. It requires <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>.

<code class="option">--without-tools</code>: This option prevents building the <span class="command"><strong>qrencode</strong></span> executable, removing the need for <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">qrencode</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libqrencode.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/qrencode-4.1.1 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------
  <a id="qrencode-prog"></a><span class="command"><span class="term"><strong>qrencode</strong></span></span>    encodes input data in a QR Code and saves it as a PNG or EPS image
  <a id="libqrencode"></a><span class="term"><code class="filename">libqrencode.so</code></span>   contains functions for encoding data in a QR code symbol
  ------------------------------------------------------ --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpng.md "libpng-1.6.58")

    libpng-1.6.58

-   [Next](libraw.md "libraw-0.22.1")

    libraw-0.22.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

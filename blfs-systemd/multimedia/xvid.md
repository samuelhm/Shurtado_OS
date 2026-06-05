<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](xine-lib.md "xine-lib-1.2.13")

    xine-lib-1.2.13

-   [Next](audioutils.md "Audio Utilities")

    Audio Utilities

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# XviD-1.3.7 {#xvid-1.3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to XviD {#introduction-to-xvid}

<span class="application">XviD</span> is an MPEG-4 compliant video CODEC.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz">https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz</a>

-   Download MD5 sum: 5c6c19324608ac491485dbb27d4da517

-   Download size: 804 KB

-   Estimated disk space required: 7.1 MB

-   Estimated build time: 0.1 SBU
</div>

### XviD Dependencies

#### Optional

<a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a> or <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>
</div>

<div class="installation" lang="en">
## Installation of XviD {#installation-of-xvid}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package tarball expands to <code class="filename">xvidcore</code>, not the expected <code class="filename">xvidcore-1.3.7</code>.
</div>

First, fix a problem when building with gcc-15:

```bash
sed -i '/typedef int bool;/d' src/encoder.h
```

Install <span class="application">XviD</span> by running the following commands:

```bash
cd build/generic &&
sed -i 's/^LN_S=@LN_S@/& -f -v/' platform.inc.in &&

./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
sed -i '/libdir.*STATIC_LIB/ s/^/#/' Makefile &&
make install &&

chmod -v 755 /usr/lib/libxvidcore.so.4.3 &&
install -v -m755 -d /usr/share/doc/xvidcore-1.3.7/examples &&
install -v -m644 ../../doc/* /usr/share/doc/xvidcore-1.3.7 &&
install -v -m644 ../../examples/* \
    /usr/share/doc/xvidcore-1.3.7/examples
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i 's/\^LN_S=@LN_S@/& -f -v/' platform.inc.in</strong></span>: Fix error during <span class="command"><strong>make install</strong></span> if reinstalling or upgrading.

<span class="command"><strong>sed -i '/libdir.\*STATIC_LIB/ s/\^/#/' Makefile</strong></span>: This command disables installing the static library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxvidcore.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/xvidcore-1.3.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------
  <a id="libxvidcore"></a><span class="term"><code class="filename">libxvidcore.so</code></span>   provides functions to encode and decode most MPEG-4 video data
  ------------------------------------------------------ ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xine-lib.md "xine-lib-1.2.13")

    xine-lib-1.2.13

-   [Next](audioutils.md "Audio Utilities")

    Audio Utilities

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

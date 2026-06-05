<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libvorbis.md "libvorbis-1.3.7")

    libvorbis-1.3.7

-   [Next](mlt.md "MLT-7.38.0")

    MLT-7.38.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libvpx-1.16.0 {#libvpx-1.16.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libvpx {#introduction-to-libvpx}

This package, from the WebM project, provides the reference implementations of the VP8 Codec (used in most current HTML5 video) and of the next-generation VP9 Codec.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/webmproject/libvpx/archive/v1.16.0/libvpx-1.16.0.tar.gz">https://github.com/webmproject/libvpx/archive/v1.16.0/libvpx-1.16.0.tar.gz</a>

-   Download MD5 sum: fb51551487ecfdec93f3d243b7fb1a67

-   Download size: 5.4 MB

-   Estimated disk space required: 73 MB (add 1.7 GB for tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add approx 11 SBU for tests using parallelism=4, including download time)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libvpx-1.16.0-security_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libvpx-1.16.0-security_fix-1.patch</a>
</div>

### libvpx Dependencies

#### Recommended

<a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a> or <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>, and <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a> (so <span class="command"><strong>configure</strong></span> can find yasm)

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> (to download test files) and <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to build documentation)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libvpx {#installation-of-libvpx}

If upgrading from a previous version of libvpx, update the timestamps of all the files to prevent the build system from retaining the files from the old installation:

```bash
find -type f | xargs touch
```

Next, fix a security vulnerability:

```bash
patch -Np1 -i ../libvpx-1.16.0-security_fix-1.patch
```

Install <span class="application">libvpx</span> by running the following commands:

```bash
sed -i 's/cp -p/cp/' build/make/Makefile &&

mkdir libvpx-build            &&
cd    libvpx-build            &&

../configure --prefix=/usr    \
             --enable-shared  \
             --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>LD_LIBRARY_PATH=. make test</strong></span>. The test suite downloads many files as part of its test process. A few parts of it will use all available cores.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ...</strong></span> : This command corrects the ownership and permissions of installed files.

<span class="command"><strong>mkdir libvpx-build && cd libvpx-build</strong></span>: The <span class="application">libvpx</span> developers recommend building in a dedicated build directory.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--disable-vp8</code>: This switch prevents building support for the VP8 codec.

<code class="option">--disable-vp9</code>: This switch prevents building support for the VP9 codec.

<code class="option">--target=generic-gnu</code>: This switch disables optimizations specific to x86 and x86-64, allowing to build this package without <span class="command"><strong>nasm</strong></span> and <span class="command"><strong>yasm</strong></span> installed.

<span class="command"><strong>LD_LIBRARY_PATH=.</strong></span>: This is needed for the test suite to use the library that was just built.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">vpxdec and vpxenc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libvpx.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/vpx</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------
  <a id="vpxdec"></a><span class="command"><span class="term"><strong>vpxdec</strong></span></span>       is the WebM Project VP8 and VP9 decoder
  <a id="vpxenc"></a><span class="command"><span class="term"><strong>vpxenc</strong></span></span>       is the WebM project VP8 and VP9 encoder
  <a id="libvpx-lib"></a><span class="term"><code class="filename">libvpx.so</code></span>   provides functions to use the VP8 and VP9 video codecs
  ------------------------------------------------ --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libvorbis.md "libvorbis-1.3.7")

    libvorbis-1.3.7

-   [Next](mlt.md "MLT-7.38.0")

    MLT-7.38.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

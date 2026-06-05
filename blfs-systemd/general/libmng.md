<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libjxl.md "libjxl-0.11.2")

    libjxl-0.11.2

-   [Next](libmypaint.md "libmypaint-1.6.1")

    libmypaint-1.6.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmng-2.0.3 {#libmng-2.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmng {#introduction-to-libmng}

The <span class="application">libmng</span> libraries are used by programs wanting to read and write Multiple-image Network Graphics (MNG) files which are the animation equivalents to PNG files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz">https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz</a>

-   Download MD5 sum: e9e899adb1b681b17f14d91e261878c5

-   Download size: 932 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
</div>

### libmng Dependencies

#### Required

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> and <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>
</div>

<div class="installation" lang="en">
## Installation of libmng {#installation-of-libmng}

Install <span class="application">libmng</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755 -d        /usr/share/doc/libmng-2.0.3 &&
install -v -m644 doc/*.txt /usr/share/doc/libmng-2.0.3
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
**Installed Library:** <span class="segbody">libmng.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libmng-2.0.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libmng-lib"></a><span class="term"><code class="filename">libmng.so</code></span>   provides functions for programs wishing to read and write MNG files which are animation files without the patent problems associated with certain other formats
  ------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libjxl.md "libjxl-0.11.2")

    libjxl-0.11.2

-   [Next](libmypaint.md "libmypaint-1.6.1")

    libmypaint-1.6.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

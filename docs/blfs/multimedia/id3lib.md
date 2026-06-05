<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-libav.md "gst-libav-1.28.3")

    gst-libav-1.28.3

-   [Next](intel-media-driver.md "intel-media-driver-26.1.5")

    intel-media-driver-26.1.5

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# id3lib-3.8.3 {#id3lib-3.8.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to id3lib {#introduction-to-id3lib}

<span class="application">id3lib</span> is a library for reading, writing and manipulating id3v1 and id3v2 multimedia data containers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/id3lib/id3lib-3.8.3.tar.gz">https://downloads.sourceforge.net/id3lib/id3lib-3.8.3.tar.gz</a>

-   Download MD5 sum: 19f27ddd2dda4b2d26a559a4f0f402a7

-   Download size: 932 KB

-   Estimated disk space required: 16 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patches: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/id3lib-3.8.3-consolidated_patches-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/id3lib-3.8.3-consolidated_patches-1.patch</a>
</div>
</div>

<div class="installation" lang="en">
## Installation of Id3lib {#installation-of-id3lib}

Install <span class="application">id3lib</span> by running the following commands:

```bash
patch -Np1 -i ../id3lib-3.8.3-consolidated_patches-1.patch &&

libtoolize -fc                &&
aclocal                       &&
autoconf                      &&
automake --add-missing --copy &&

./configure --prefix=/usr --disable-static &&
make
```

This packages does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install  &&
cp doc/man/* /usr/share/man/man1 &&

install -v -m755 -d /usr/share/doc/id3lib-3.8.3 &&
install -v -m644 doc/*.{gif,jpg,png,ico,css,txt,php,html} \
                    /usr/share/doc/id3lib-3.8.3
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
**Installed Programs:** <span class="segbody">id3convert, id3cp, id3info, and id3tag</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libid3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/id3 and /usr/share/doc/id3lib-3.8.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------
  <a id="id3convert"></a><span class="command"><span class="term"><strong>id3convert</strong></span></span>   converts between id3v1/v2 tagging formats
  <a id="id3cp"></a><span class="command"><span class="term"><strong>id3cp</strong></span></span>             extracts id3v1/v2 tags from digital audio files
  <a id="id3info"></a><span class="command"><span class="term"><strong>id3info</strong></span></span>         prints id3v1/v2 tag contents
  <a id="id3tag"></a><span class="command"><span class="term"><strong>id3tag</strong></span></span>           is a utility for editing id3v1/v2 tags
  <a id="libid3"></a><span class="term"><code class="filename">libid3.so</code></span>           provides functions for the id3v1/v2 tag editing programs as well as other external programs and libraries
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst10-libav.md "gst-libav-1.28.3")

    gst-libav-1.28.3

-   [Next](intel-media-driver.md "intel-media-driver-26.1.5")

    intel-media-driver-26.1.5

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

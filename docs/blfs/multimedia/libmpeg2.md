<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmad.md "libmad-0.15.1b")

    libmad-0.15.1b

-   [Next](libmusicbrainz5.md "libmusicbrainz-5.1.0")

    libmusicbrainz-5.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmpeg2-0.5.1 {#libmpeg2-0.5.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmpeg2 {#introduction-to-libmpeg2}

The <span class="application">libmpeg2</span> package contains a library for decoding MPEG-2 and MPEG-1 video streams. The library is able to decode all MPEG streams that conform to certain restrictions: <span class="quote">“<span class="quote">constrained parameters</span>”</span> for MPEG-1, and <span class="quote">“<span class="quote">main profile</span>”</span> for MPEG-2. This is useful for programs and applications needing to decode MPEG-2 and MPEG-1 video streams.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.videolan.org/contrib/libmpeg2/libmpeg2-0.5.1.tar.gz">https://download.videolan.org/contrib/libmpeg2/libmpeg2-0.5.1.tar.gz</a>

-   Download MD5 sum: 0f92c7454e58379b4a5a378485bbd8ef

-   Download size: 513 KB

-   Estimated disk space required: 6 MB

-   Estimated build time: 0.1 SBU
</div>

### libmpeg2 Dependencies

#### Optional

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a> and <a class="ulink" href="https://github.com/libsdl-org/sdl12-compat">SDL1</a>
</div>

<div class="installation" lang="en">
## Installation of libmpeg2 {#installation-of-libmpeg2}

Install <span class="application">libmpeg2</span> by running the following commands:

```bash
sed -i 's/static const/static/' libmpeg2/idct_mmx.c &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. To perform a more comprehensive regression test, see the file <code class="filename">test/README</code> in the source tree.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

install -v -m755 -d /usr/share/doc/libmpeg2-0.5.1 &&
install -v -m644 README doc/libmpeg2.txt \
                    /usr/share/doc/libmpeg2-0.5.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i ...</strong></span>: This <span class="command"><strong>sed</strong></span> fixes problems with recent GCC compilers.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">corrupt_mpeg2, extract_mpeg2 and mpeg2dec</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmpeg2.so and libmpeg2convert.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/mpeg2dec and /usr/share/doc/libmpeg2-0.5.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------
  <a id="extract_mpeg2"></a><span class="command"><span class="term"><strong>extract_mpeg2</strong></span></span>       extracts MPEG video streams from a multiplexed stream
  <a id="mpeg2dec"></a><span class="command"><span class="term"><strong>mpeg2dec</strong></span></span>                 decodes MPEG1 and MPEG2 video streams
  <a id="libmpeg2-lib"></a><span class="term"><code class="filename">libmpeg2.so</code></span>             contains API functions used to decode MPEG video streams
  <a id="libmpeg2convert"></a><span class="term"><code class="filename">libmpeg2convert.so</code></span>   contains API functions used for color conversions of MPEG video streams
  -------------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmad.md "libmad-0.15.1b")

    libmad-0.15.1b

-   [Next](libmusicbrainz5.md "libmusicbrainz-5.1.0")

    libmusicbrainz-5.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libmusicbrainz5.md "libmusicbrainz-5.1.0")

    libmusicbrainz-5.1.0

-   [Next](libplacebo.md "libplacebo-7.360.1")

    libplacebo-7.360.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libogg-1.3.6 {#libogg-1.3.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libogg {#introduction-to-libogg}

The <span class="application">libogg</span> package contains the Ogg file structure. This is useful for creating (encoding) or playing (decoding) a single physical bit stream.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/ogg/libogg-1.3.6.tar.xz">https://downloads.xiph.org/releases/ogg/libogg-1.3.6.tar.xz</a>

-   Download MD5 sum: 529275432dff072f63d4ed0f1f961384

-   Download size: 432 KB

-   Estimated disk space required: 3.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of libogg {#installation-of-libogg}

Install <span class="application">libogg</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libogg-1.3.6 &&
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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libogg.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ogg and /usr/share/doc/libogg-1.3.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------------------
  <a id="libogg-lib"></a><span class="term"><code class="filename">libogg.so</code></span>   provides the functions required for programs to read or write Ogg formatted bit streams
  ------------------------------------------------ -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmusicbrainz5.md "libmusicbrainz-5.1.0")

    libmusicbrainz-5.1.0

-   [Next](libplacebo.md "libplacebo-7.360.1")

    libplacebo-7.360.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

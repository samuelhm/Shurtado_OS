<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](inih.md "inih-62")

    inih-62

-   [Next](json-c.md "JSON-C-0.18")

    JSON-C-0.18

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Jansson-2.15.0 {#jansson-2.15.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Jansson {#introduction-to-jansson}

The <span class="application">Jansson</span> package contains a library used to encode, decode, and manipulate JSON data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/akheron/jansson/releases/download/v2.15.0/jansson-2.15.0.tar.bz2">https://github.com/akheron/jansson/releases/download/v2.15.0/jansson-2.15.0.tar.bz2</a>

-   Download MD5 sum: 6077c52677206a84304979b226322283

-   Download size: 476 KB

-   Estimated disk space required: 8.4 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of Jansson {#installation-of-jansson}

Install <span class="application">jansson</span> by running the following commands:

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

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libjansson.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------
  <a id="libjansson"></a><span class="term"><code class="filename">libjansson.so</code></span>   contains an API for encoding, decoding, and manipulating JSON data
  ---------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](inih.md "inih-62")

    inih-62

-   [Next](json-c.md "JSON-C-0.18")

    JSON-C-0.18

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

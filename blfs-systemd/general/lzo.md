<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](log4cplus.md "log4cplus-2.1.2")

    log4cplus-2.1.2

-   [Next](mtdev.md "mtdev-1.1.7")

    mtdev-1.1.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LZO-2.10 {#lzo-2.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LZO {#introduction-to-lzo}

<span class="application">LZO</span> is a data compression library which is suitable for data decompression and compression in real-time. This means it favors speed over compression ratio.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz">https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz</a>

-   Download MD5 sum: 39d3f3f9c55c87b1e5d6888e1420f4b5

-   Download size: 588 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.3 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of LZO {#installation-of-lzo}

Install <span class="application">LZO</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --docdir=/usr/share/doc/lzo-2.10 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. All the checks should pass. Now issue <span class="command"><strong>make test</strong></span> to run the full suite of tests.

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
**Installed Libraries:** <span class="segbody">liblzo2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/lzo and /usr/share/doc/lzo</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------
  <a id="liblzo2"></a><span class="term"><code class="filename">liblzo2.so</code></span>   is a data compression and decompression library
  ---------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](log4cplus.md "log4cplus-2.1.2")

    log4cplus-2.1.2

-   [Next](mtdev.md "mtdev-1.1.7")

    mtdev-1.1.7

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](lzo.md "LZO-2.10")

    LZO-2.10

-   [Next](nodejs.md "Node.js-24.16.0")

    Node.js-24.16.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mtdev-1.1.7 {#mtdev-1.1.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to mtdev {#introduction-to-mtdev}

The <span class="application">mtdev</span> package contains Multitouch Protocol Translation Library which is used to transform all variants of kernel MT (Multitouch) events to the slotted type B protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://bitmath.org/code/mtdev/mtdev-1.1.7.tar.bz2">https://bitmath.org/code/mtdev/mtdev-1.1.7.tar.bz2</a>

-   Download MD5 sum: 483ed7fdf7c1e7b7375c05a62848cce7

-   Download size: 296 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of mtdev {#installation-of-mtdev}

Install <span class="application">mtdev</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

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
**Installed Program:** <span class="segbody">mtdev-test</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libmtdev.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------
  <a id="mtdev-test"></a><span class="command"><span class="term"><strong>mtdev-test</strong></span></span>   is a tool to test <code class="filename">libmtdev</code>
  <a id="libmtdev"></a><span class="term"><code class="filename">libmtdev.so</code></span>       contains Multitouch Protocol Translation API functions
  ---------------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lzo.md "LZO-2.10")

    LZO-2.10

-   [Next](nodejs.md "Node.js-24.16.0")

    Node.js-24.16.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

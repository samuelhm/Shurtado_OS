<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libassuan.md "libassuan-3.0.2")

    libassuan-3.0.2

-   [Next](libatomic_ops.md "libatomic_ops-7.10.0")

    libatomic_ops-7.10.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libatasmart-0.19 {#libatasmart-0.19}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libatasmart {#introduction-to-libatasmart}

The <span class="application">libatasmart</span> package is a disk reporting library. It only supports a subset of the ATA S.M.A.R.T. functionality.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://0pointer.de/public/libatasmart-0.19.tar.xz">https://0pointer.de/public/libatasmart-0.19.tar.xz</a>

-   Download MD5 sum: 53afe2b155c36f658e121fe6def33e77

-   Download size: 248 KB

-   Estimated disk space required: 3 MB

-   Estimated build time: less than 0.1 SBU
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/libatasmart">https://wiki.linuxfromscratch.org/blfs/wiki/libatasmart</a>
</div>

<div class="installation" lang="en">
## Installation of libatasmart {#installation-of-libatasmart}

Install <span class="application">libatasmart</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc/libatasmart-0.19 install
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
**Installed Programs:** <span class="segbody">skdump and sktest</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libatasmart.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libatasmart-0.19</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -----------------------------------------------------
  <a id="skdump"></a><span class="command"><span class="term"><strong>skdump</strong></span></span>                 is a utility that reports on the status of the disk
  <a id="sktest"></a><span class="command"><span class="term"><strong>sktest</strong></span></span>                 is a utility to issue disk tests
  <a id="libatasmart-lib"></a><span class="term"><code class="filename">libatasmart.so</code></span>   contains the ATA S.M.A.R.T API functions
  ---------------------------------------------------------- -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libassuan.md "libassuan-3.0.2")

    libassuan-3.0.2

-   [Next](libatomic_ops.md "libatomic_ops-7.10.0")

    libatomic_ops-7.10.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

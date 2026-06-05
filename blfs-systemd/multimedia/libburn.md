<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](dvd-rw-tools.md "dvd+rw-tools-7.1")

    dvd+rw-tools-7.1

-   [Next](libisoburn.md "libisoburn-1.5.8.pl02")

    libisoburn-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libburn-1.5.8 {#libburn-1.5.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libburn {#introduction-to-libburn}

<span class="application">libburn</span> is a library for writing preformatted data onto optical media: CD, DVD and BD (Blu-Ray).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.libburnia-project.org/releases/libburn-1.5.8.tar.gz">https://files.libburnia-project.org/releases/libburn-1.5.8.tar.gz</a>

-   Download MD5 sum: 4c8c786e88eb3e9f7c1d0ddc4d4a39e7

-   Download size: 984 KB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.1 SBU
</div>

### libburn Dependencies

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to generate HTML documentation)
</div>

<div class="installation" lang="en">
## Installation of libburn {#installation-of-libburn}

Install <span class="application">libburn</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you have installed <span class="application">Doxygen</span> and wish to generate the HTML documentation, issue the following command:

```bash
doxygen doc/doxygen.conf
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have built the HTML documentation, install it by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /usr/share/doc/libburn-1.5.8 &&
install -v -m644 doc/html/* /usr/share/doc/libburn-1.5.8
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">cdrskin</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libburn.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libburn</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  <a id="cdrskin"></a><span class="command"><span class="term"><strong>cdrskin</strong></span></span>       burns preformatted data to CD, DVD, and BD via <span class="application">libburn</span>
  <a id="libburn-lib"></a><span class="term"><code class="filename">libburn.so</code></span>   contains the <span class="application">libburn</span> API functions
  -------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dvd-rw-tools.md "dvd+rw-tools-7.1")

    dvd+rw-tools-7.1

-   [Next](libisoburn.md "libisoburn-1.5.8.pl02")

    libisoburn-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

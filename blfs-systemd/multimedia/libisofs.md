<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](libisoburn.md "libisoburn-1.5.8.pl02")

    libisoburn-1.5.8.pl02

-   [Next](../pst/pst.md "Printing, Scanning and Typesetting")

    Printing, Scanning and Typesetting

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libisofs-1.5.8.pl02 {#libisofs-1.5.8.pl02}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libisofs {#introduction-to-libisofs}

<span class="application">libisofs</span> is a library to create an ISO-9660 filesystem with extensions like RockRidge or Joliet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.libburnia-project.org/releases/libisofs-1.5.8.pl02.tar.gz">https://files.libburnia-project.org/releases/libisofs-1.5.8.pl02.tar.gz</a>

-   Download MD5 sum: 48150014510f8e65de66cb687ff63957

-   Download size: 884 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package expands to the libisofs-1.5.8/ directory.
</div>

### libisofs Dependencies

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to generate HTML documentation) and <a class="ulink" href="https://www.einval.com/~steve/software/JTE/">libjte</a>
</div>

<div class="installation" lang="en">
## Installation of libisofs {#installation-of-libisofs}

Install <span class="application">libisofs</span> by running the following commands:

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
install -v -dm755 /usr/share/doc/libisofs-1.5.8.pl02 &&
install -v -m644 doc/html/* /usr/share/doc/libisofs-1.5.8.pl02
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
**Installed Library:** <span class="segbody">libisofs.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libisofs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------
  <a id="libisofs-lib"></a><span class="term"><code class="filename">libisofs.so</code></span>   contains the <span class="application">libisofs</span> API functions
  ---------------------------------------------------- -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libisoburn.md "libisoburn-1.5.8.pl02")

    libisoburn-1.5.8.pl02

-   [Next](../pst/pst.md "Printing, Scanning and Typesetting")

    Printing, Scanning and Typesetting

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

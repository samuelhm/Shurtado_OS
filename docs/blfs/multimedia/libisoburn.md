<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](libburn.md "libburn-1.5.8")

    libburn-1.5.8

-   [Next](libisofs.md "libisofs-1.5.8.pl02")

    libisofs-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libisoburn-1.5.8.pl02 {#libisoburn-1.5.8.pl02}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libisoburn {#introduction-to-libisoburn}

<span class="application">libisoburn</span> is a frontend for the <span class="application">libburn</span> and <span class="application">libisofs</span> libraries, which enables creation and expansion of ISO-9660 filesystems on all CD/DVD/BD media supported by <span class="application">libburn</span>. This includes media like DVD+RW, which do not support multi-session management on the media level, and even plain disk files or block devices.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://files.libburnia-project.org/releases/libisoburn-1.5.8.pl02.tar.gz">https://files.libburnia-project.org/releases/libisoburn-1.5.8.pl02.tar.gz</a>

-   Download MD5 sum: 008b9adc9ab3545e167495220b453413

-   Download size: 1.7 MB

-   Estimated disk space required: 17 MB (with Tk and HTML documentation)

-   Estimated build time: 0.2 SBU (with Tk and HTML documentation)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package expands to the libisoburn-1.5.8/ directory.
</div>

### libisoburn Dependencies

#### Required

<a class="xref" href="libburn.md" title="libburn-1.5.8">libburn-1.5.8</a> and <a class="xref" href="libisofs.md" title="libisofs-1.5.8.pl02">libisofs-1.5.8.pl02</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to generate HTML documentation), <a class="xref" href="../general/tk.md" title="Tk-8.6.18">Tk-8.6.18</a> (for <span class="command"><strong>xorriso-tcltk</strong></span>), and <a class="ulink" href="https://www.einval.com/~steve/software/JTE/">libjte</a>
</div>

<div class="installation" lang="en">
## Installation of libisoburn {#installation-of-libisoburn}

Install <span class="application">libisoburn</span> by running the following commands:

```bash
./configure --prefix=/usr              \
            --disable-static           \
            --enable-pkg-check-modules &&
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
install -v -dm755 /usr/share/doc/libisoburn-1.5.8.pl02 &&
install -v -m644 doc/html/* /usr/share/doc/libisoburn-1.5.8.pl02
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--enable-pkg-check-modules`*: This switch tells the configure script to use <span class="application">pkg-config</span> to check for the <span class="application">libburn</span> and <span class="application">libisofs</span> libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">osirrox, xorrecord, xorriso, xorriso-dd-target, xorrisofs, and xorriso-tcltk</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libisoburn.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libisoburn and /usr/share/doc/libisoburn-1.5.8.pl02</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
  <a id="osirrox"></a><span class="command"><span class="term"><strong>osirrox</strong></span></span>                       is a symbolic link to <span class="command"><strong>xorriso</strong></span> that copies files from ISO image to a disk filesystem
  <a id="xorrecord"></a><span class="command"><span class="term"><strong>xorrecord</strong></span></span>                   is a symbolic link to <span class="command"><strong>xorriso</strong></span> that provides a cdrecord type user interface
  <a id="xorriso"></a><span class="command"><span class="term"><strong>xorriso</strong></span></span>                       is a program to create, load, manipulate, read, and write ISO 9660 filesystem images with Rock Ridge extensions
  <a id="xorriso-dd-target"></a><span class="command"><span class="term"><strong>xorriso-dd-target</strong></span></span>   is a program to check a USB or memory card device to see whether it is suitable for image copying
  <a id="xorrisofs"></a><span class="command"><span class="term"><strong>xorrisofs</strong></span></span>                   is a symbolic link to <span class="command"><strong>xorriso</strong></span> that provides a mkisofs type user interface
  <a id="xorriso-tcltk"></a><span class="command"><span class="term"><strong>xorriso-tcltk</strong></span></span>           is a frontend that operates xorriso in dialog mode
  <a id="libisoburn-lib"></a><span class="term"><code class="filename">libisoburn.so</code></span>             contains the <span class="application">libisoburn</span> API functions
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libburn.md "libburn-1.5.8")

    libburn-1.5.8

-   [Next](libisofs.md "libisofs-1.5.8.pl02")

    libisofs-1.5.8.pl02

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

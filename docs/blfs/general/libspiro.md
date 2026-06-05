<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](librsvg.md "librsvg-2.62.3")

    librsvg-2.62.3

-   [Next](libtiff.md "libtiff-4.7.1")

    libtiff-4.7.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Libspiro-20220722 {#libspiro-20220722}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libspiro {#introduction-to-libspiro}

<span class="application">Libspiro</span> will take an array of spiro control points and convert them into a series of bezier splines which can then be used in the myriad of ways the world has come to use beziers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fontforge/libspiro/releases/download/20220722/libspiro-dist-20220722.tar.gz">https://github.com/fontforge/libspiro/releases/download/20220722/libspiro-dist-20220722.tar.gz</a>

-   Download MD5 sum: c21f86e6c1ad65ed4cb1f754f6d7563c

-   Download size: 428 KB

-   Estimated disk space required: 5.1 MB (add 1.3 MB if running the tests)

-   Estimated build time: 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of libspiro {#installation-of-libspiro}

Install <span class="application">libspiro</span> by running the following commands:

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
**Installed Library:** <span class="segbody">libspiro.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="libspiro-lib"></a><span class="term"><code class="filename">libspiro.so</code></span>   is a shareable library that can be used by programs to do the Spiro computations for you
  ---------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](librsvg.md "librsvg-2.62.3")

    librsvg-2.62.3

-   [Next](libtiff.md "libtiff-4.7.1")

    libtiff-4.7.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

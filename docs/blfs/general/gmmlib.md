<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gmime3.md "GMime-3.2.15")

    GMime-3.2.15

-   [Next](gsl.md "gsl-2.8")

    gsl-2.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gmmlib-22.10.0 {#gmmlib-22.10.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gmmlib {#introduction-to-gmmlib}

The <span class="application">gmmlib</span> package contains the Intel Graphics Memory Management Library, which provides device specific memory and buffer management functions for the Intel Media Driver for VAAPI and the Intel Graphics Computer Runtime for OpenCL (TM).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/gmmlib/archive/v22.10.0/gmmlib-22.10.0.tar.gz">https://github.com/lfs-book/gmmlib/archive/v22.10.0/gmmlib-22.10.0.tar.gz</a>

-   Download MD5 sum: f94f6903e7df944c7a064f85b1b4a99b

-   Download size: 868 KB

-   Estimated disk space required: 59 MB

-   Estimated build time: 0.7 SBU
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own <code class="literal">lfs-book</code> namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like <span class="command"><strong>wget</strong></span>). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
</div>

### gmmlib Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of gmmlib {#installation-of-gmmlib}

Install <span class="application">gmmlib</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_TYPE=Release        \
      -G Ninja                     \
      -W no-dev ..                 &&
ninja
```

The test suite is normally run by <span class="command"><strong>ninja</strong></span> unless -D RUN_TEST_SUITE=NO is passed to cmake.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
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
**Installed Libraries:** <span class="segbody">libigdgmm.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/igdgmm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------
  <a id="libigdgmm"></a><span class="term"><code class="filename">libigdgmm.so</code></span>   contains functions that provide Memory Management functions for Intel Graphics Drivers
  -------------------------------------------------- ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gmime3.md "GMime-3.2.15")

    GMime-3.2.15

-   [Next](gsl.md "gsl-2.8")

    gsl-2.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

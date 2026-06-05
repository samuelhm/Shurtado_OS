<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fftw.md "fftw-3.3.11")

    fftw-3.3.11

-   [Next](glib2.md "GLib-2.88.1")

    GLib-2.88.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# fmt-12.1.0 {#fmt-12.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to fmt {#introduction-to-fmt}

The <span class="application">fmt</span> package is an open-source formatting library providing a fast and safe alternative to C stdio and C++ iostreams.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fmtlib/fmt/archive/12.1.0/fmt-12.1.0.tar.gz">https://github.com/fmtlib/fmt/archive/12.1.0/fmt-12.1.0.tar.gz</a>

-   Download MD5 sum: 92eb6f492e4838e5f024ce5207beafc7

-   Download size: 696 KB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 0.4 SBU (using parallelism=4; with tests)
</div>

### Fmt Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of fmt {#installation-of-fmt}

Install <span class="application">fmt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_INSTALL_LIBDIR=/usr/lib \
      -D BUILD_SHARED_LIBS=ON          \
      -D FMT_TEST=OFF                  \
      -G Ninja ..                      &&
ninja
```

To test the results, issue:

```bash
cmake -D FMT_TEST=ON .. &&
ninja                   &&
ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D FMT_TEST=OFF`*: This switch initializes the package tests. It will be overridden if the instructions for running the test suite is used.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfmt.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/fmt and /usr/lib/cmake/fmt</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fftw.md "fftw-3.3.11")

    fftw-3.3.11

-   [Next](glib2.md "GLib-2.88.1")

    GLib-2.88.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

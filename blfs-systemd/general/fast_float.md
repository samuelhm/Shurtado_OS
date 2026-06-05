<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](exempi.md "Exempi-2.6.6")

    Exempi-2.6.6

-   [Next](fftw.md "fftw-3.3.11")

    fftw-3.3.11

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# fast_float-8.2.6 {#fast_float-8.2.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Fast_float {#introduction-to-fast_float}

<span class="application">Fast_float</span> provides a set of C++ header files for efficient string to float operations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fastfloat/fast_float/archive/v8.2.6/fast_float-8.2.6.tar.gz">https://github.com/fastfloat/fast_float/archive/v8.2.6/fast_float-8.2.6.tar.gz</a>

-   Download MD5 sum: 2dd9de13bb1c2bf22017e5d12c537123

-   Download size: 132 KB

-   Estimated disk space required: 1.5 MB (add 620 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests, depending on network connection)
</div>

### Fast_float Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> (for downloading some tests) and <a class="ulink" href="https://github.com/doctest/doctest">doctest</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Fast_float {#installation-of-fast_float}

Install <span class="application">fast_float</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja ..
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>cmake .. -D FASTFLOAT_TEST=ON && ninja && ninja test</strong></span>. Note that the tests download some test files and the external doctest test framework from the Internet, and the doctest package would have been installed if the test suite had run before <span class="command"><strong>ninja install</strong></span>, so don't run the test suite before installation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/fast_float and /usr/share/cmake/FastFloat</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](exempi.md "Exempi-2.6.6")

    Exempi-2.6.6

-   [Next](fftw.md "fftw-3.3.11")

    fftw-3.3.11

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

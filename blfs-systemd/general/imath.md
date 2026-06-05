<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](harfbuzz.md "harfBuzz-14.2.1")

    harfBuzz-14.2.1

-   [Next](jasper.md "jasper-4.2.9")

    jasper-4.2.9

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Imath-3.2.2 {#imath-3.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Imath {#introduction-to-imath}

<span class="application">Imath</span> is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/AcademySoftwareFoundation/Imath/releases/download/v3.2.2/Imath-3.2.2.tar.gz">https://github.com/AcademySoftwareFoundation/Imath/releases/download/v3.2.2/Imath-3.2.2.tar.gz</a>

-   Download MD5 sum: 7389e3bb124012e7dbbb99c3b2a5323c

-   Download size: 668 KB

-   Estimated disk space required: 162 MB (with tests)

-   Estimated build time: 1.2 SBU (Using parallelism=4; with tests)
</div>

### Imath Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> and <a class="xref" href="python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a>
</div>

<div class="installation" lang="en">
## Installation of Imath {#installation-of-imath}

Install <span class="application">Imath</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PYTHON=ON                 \
      ..  &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D PYTHON=ON`*: This option enables building the Python modules. It can be disabled if <a class="xref" href="python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libImath.so, libImath-3_2.so, libPyImath.so, and libPyImath_Python3_14-3_2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/Imath and /usr/lib/cmake/Imath</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](harfbuzz.md "harfBuzz-14.2.1")

    harfBuzz-14.2.1

-   [Next](jasper.md "jasper-4.2.9")

    jasper-4.2.9

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

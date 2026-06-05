<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](speex.md "Speex-1.2.1")

    Speex-1.2.1

-   [Next](taglib.md "Taglib-2.3")

    Taglib-2.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SVT-AV1-4.1.0 {#svt-av1-4.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SVT-AV1 {#introduction-to-svt-av1}

The SVT-AV1 package contains an AV1 encoder.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v4.1.0/SVT-AV1-v4.1.0.tar.gz">https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v4.1.0/SVT-AV1-v4.1.0.tar.gz</a>

-   Download MD5 sum: d365da75a7bce679594a575b17003a49

-   Download size: 11 MB

-   Estimated disk space required: 93 MB (add 648 MB for tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; add 31 SBU for tests)
</div>

### SVT-AV1 Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>

#### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of SVT-AV1 {#installation-of-svt-av1}

Install SVT-AV1 by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D BUILD_SHARED_LIBS=ON        \
      -W no-dev -G Ninja .. &&

ninja
```

The test suite is very long and doesn't provide meaningful results. If you want to test the results anyway, issue:

```bash
cmake .. -D BUILD_TESTING=ON &&
ninja                        &&
ninja TestVectors            &&
SVT_AV1_TEST_VECTOR_PATH=$PWD/../test/vectors \
ctest -V -O testlog.txt --timeout 10800
```

On a relatively slow system, you may need to increase the timeout for the tests (see the SBU value for the tests on top of the page). In the SvtAv1ApiTests test, 12 <code class="literal">run_paramter_check</code> subtests are known to fail. The test harness will download a copy of libaom (even if <a class="xref" href="libaom.md" title="libaom-3.14.1">libaom-3.14.1</a> is already installed, the test harness is still unable to use the system installation) and some videos as test inputs.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D BUILD_SHARED_LIBS=ON`*: This parameter forces building shared versions of the libraries.

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

<code class="option">-D BUILD_TESTING=ON</code>: This option enables building the unit tests.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">SvtAv1EncApp</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libSvtAv1Enc.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/svt-av1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------
  <a id="SvtAv1EncApp"></a><span class="command"><span class="term"><strong>SvtAv1EncApp</strong></span></span>   is the SVT-AV1 encoder utility
  <a id="libSvtAv1Enc"></a><span class="term"><code class="filename">libSvtAv1Enc.so</code></span>   contains functions that enable encoding files with the AV1 codec
  -------------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](speex.md "Speex-1.2.1")

    Speex-1.2.1

-   [Next](taglib.md "Taglib-2.3")

    Taglib-2.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

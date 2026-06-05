<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](qcoro.md "qcoro-0.13.0")

    qcoro-0.13.0

-   [Next](spidermonkey.md "SpiderMonkey from firefox-140.11.0")

    SpiderMonkey from firefox-140.11.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# simdutf-9.0.0 {#simdutf-9.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to simdutf {#introduction-to-simdutf}

The <span class="application">simdutf</span> package contains a library used for processing Unicode characters with SIMD optimizations. This includes the SSE2 and AVX2 instruction sets and more.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/simdutf/simdutf/archive/v9.0.0/simdutf-9.0.0.tar.gz">https://github.com/simdutf/simdutf/archive/v9.0.0/simdutf-9.0.0.tar.gz</a>

-   Download MD5 sum: a20af35e2a7c9737d97b7beae96e7146

-   Download size: 2.4 MB

-   Estimated disk space required: 44 MB

-   Estimated build time: 0.3 SBU (add 1.1 SBU for tests)
</div>

### simdutf Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of simdutf {#installation-of-simdutf}

Install <span class="application">simdutf</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr  \
      -D CMAKE_BUILD_TYPE=Release   \
      -D BUILD_SHARED_LIBS=ON       \
      -G Ninja ..                   &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

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
**Installed Programs:** <span class="segbody">fastbase64 and sutf</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libsimdutf.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/simdutf and /usr/lib/cmake/simdutf</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
  <a id="fastbase64"></a><span class="command"><span class="term"><strong>fastbase64</strong></span></span>   encodes and decodes base64 with optimizations
  <a id="sutf"></a><span class="command"><span class="term"><strong>sutf</strong></span></span>               converts the encoding of an input file from one encoding to another using the simdutf library
  <a id="libsimdutf"></a><span class="term"><code class="filename">libsimdutf.so</code></span>   contains functions that process Unicode characters with SIMD optimizations
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qcoro.md "qcoro-0.13.0")

    qcoro-0.13.0

-   [Next](spidermonkey.md "SpiderMonkey from firefox-140.11.0")

    SpiderMonkey from firefox-140.11.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

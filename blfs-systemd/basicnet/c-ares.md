<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](netlibs.md "Networking Libraries")

    Networking Libraries

-   [Next](curl.md "cURL-8.20.0")

    cURL-8.20.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# c-ares-1.34.6 {#c-ares-1.34.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to c-ares {#introduction-to-c-ares}

<span class="application">c-ares</span> is a C library for asynchronous DNS requests.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/c-ares/c-ares/releases/download/v1.34.6/c-ares-1.34.6.tar.gz">https://github.com/c-ares/c-ares/releases/download/v1.34.6/c-ares-1.34.6.tar.gz</a>

-   Download MD5 sum: 85fda96ad3859edb262f68284d11b971

-   Download size: 996 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.1 SBU
</div>

### c-ares Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of c-ares {#installation-of-c-ares}

Install <span class="application">c-ares</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake  -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

This package does not include a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">adig and ahost</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcares.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  <a id="adig"></a><span class="command"><span class="term"><strong>adig</strong></span></span>             queries information from DNS servers
  <a id="ahost"></a><span class="command"><span class="term"><strong>ahost</strong></span></span>           prints the A or AAAA record associated with a hostname or IP address
  <a id="c-ares-lib"></a><span class="term"><code class="filename">libcares.so</code></span>   is a C library for asynchronous DNS requests
  -------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](netlibs.md "Networking Libraries")

    Networking Libraries

-   [Next](curl.md "cURL-8.20.0")

    cURL-8.20.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

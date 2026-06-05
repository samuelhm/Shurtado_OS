<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnma.md "libnma-1.10.6")

    libnma-1.10.6

-   [Next](libpcap.md "libpcap-1.10.6")

    libpcap-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libnsl-2.0.1 {#libnsl-2.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libnsl {#introduction-to-libnsl}

The <span class="application">libnsl</span> package contains the public client interface for NIS(YP). It replaces the NIS library that used to be in glibc.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/thkukuk/libnsl/releases/download/v2.0.1/libnsl-2.0.1.tar.xz">https://github.com/thkukuk/libnsl/releases/download/v2.0.1/libnsl-2.0.1.tar.xz</a>

-   Download MD5 sum: fb178645dfa85ebab0f1e42e219b42ae

-   Download size: 276 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libnsl Dependencies

#### Required

<a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>
</div>

<div class="installation" lang="en">
## Installation of libnsl {#installation-of-libnsl}

Install <span class="application">libnsl</span> by running the following commands:

```bash
./configure --sysconfdir=/etc --disable-static &&
make
```

This package does not come with a test suite.

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
**Installed Libraries:** <span class="segbody">libnsl.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/rpcsvc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------
  <a id="libnsl-lib"></a><span class="term"><code class="filename">libnsl.so</code></span>   provides the NIS (YP) API functions required by other programs
  ------------------------------------------------ ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libnma.md "libnma-1.10.6")

    libnma-1.10.6

-   [Next](libpcap.md "libpcap-1.10.6")

    libpcap-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

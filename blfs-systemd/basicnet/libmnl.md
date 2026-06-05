<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libevent.md "libevent-2.1.12")

    libevent-2.1.12

-   [Next](libndp.md "libndp-1.9")

    libndp-1.9

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmnl-1.0.5 {#libmnl-1.0.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmnl {#introduction-to-libmnl}

The <span class="application">libmnl</span> library provides a minimalistic userspace library oriented to Netlink developers. There are a lot of common tasks in the parsing, validating, and constructing of both the Netlink header and TLVs that are repetitive and easy to get wrong. This library aims to provide simple helpers that allow you to re-use code and to avoid re-inventing the wheel.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://netfilter.org/projects/libmnl/files/libmnl-1.0.5.tar.bz2">https://netfilter.org/projects/libmnl/files/libmnl-1.0.5.tar.bz2</a>

-   Download MD5 sum: 0bbb70573119ec5d49435114583e7a49

-   Download size: 308 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libnma Dependencies

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libmnl {#installation-of-libmnl}

Install <span class="application">libmnl</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

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
**Installed Library:** <span class="segbody">libmnl.so</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------
  <a id="libmnl-lib"></a><span class="term"><code class="filename">libmnl.so</code></span>   provides functions for parsing, validating, constructing of both the Netlink header and TLVs
  ------------------------------------------------ ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libevent.md "libevent-2.1.12")

    libevent-2.1.12

-   [Next](libndp.md "libndp-1.9")

    libndp-1.9

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

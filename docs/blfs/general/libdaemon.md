<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libcloudproviders.md "libcloudproviders-0.3.6")

    libcloudproviders-0.3.6

-   [Next](libdisplay-info.md "libdisplay-info-0.3.0")

    libdisplay-info-0.3.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdaemon-0.14 {#libdaemon-0.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libdaemon {#introduction-to-libdaemon}

The <span class="application">libdaemon</span> package is a lightweight C library that eases the writing of UNIX daemons.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz">https://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz</a>

-   Download MD5 sum: 509dc27107c21bcd9fbf2f95f5669563

-   Download size: 332 KB

-   Estimated disk space required: 3 MB

-   Estimated build time: 0.1 SBU
</div>

### libdaemon Dependencies

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a>
</div>

<div class="installation" lang="en">
## Installation of libdaemon {#installation-of-libdaemon}

Install <span class="application">libdaemon</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you have <span class="application">Doxygen</span> installed and wish to build the API documentation, issue the following command:

```bash
make -C doc doxygen
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc/libdaemon-0.14 install
```

If you built the API documentation, install it using the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/html/* /usr/share/doc/libdaemon-0.14/reference/html &&
install -v -m644 doc/reference/man/man3/* /usr/share/man/man3
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
**Installed Library:** <span class="segbody">libdaemon.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libdaemon and /usr/share/doc/libdaemon-0.14</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------
  <a id="libdaemon-lib"></a><span class="term"><code class="filename">libdaemon.so</code></span>   contains the <span class="application">libdaemon</span> API functions
  ------------------------------------------------------ ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcloudproviders.md "libcloudproviders-0.3.6")

    libcloudproviders-0.3.6

-   [Next](libdisplay-info.md "libdisplay-info-0.3.0")

    libdisplay-info-0.3.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

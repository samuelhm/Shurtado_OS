<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libproxy.md "libproxy-0.5.12")

    libproxy-0.5.12

-   [Next](libqalculate.md "libqalculate-5.11.0")

    libqalculate-5.11.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libptytty-2.0 {#libptytty-2.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libptytty {#introduction-to-libptytty}

The <span class="application">libptytty</span> package provides a library that allows for OS independent and secure pty/tty and utmp/wtmp/lastlog handling.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://dist.schmorp.de/libptytty/libptytty-2.0.tar.gz">http://dist.schmorp.de/libptytty/libptytty-2.0.tar.gz</a>

-   Download MD5 sum: 2a7f3f3c0d3ef71902da745dc7959529

-   Download size: 48 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libptytty Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of libptytty {#installation-of-libptytty}

Install <span class="application">libptytty</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D PT_UTMP_FILE=/run/utmp        \
      .. &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libptytty.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------
  <a id="libptytty-lib"></a><span class="term"><code class="filename">libptytty.so</code></span>   provides for OS independent and secure pty/tty and utmp/wtmp/lastlog handling
  ------------------------------------------------------ -------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libproxy.md "libproxy-0.5.12")

    libproxy-0.5.12

-   [Next](libqalculate.md "libqalculate-5.11.0")

    libqalculate-5.11.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libatasmart.md "libatasmart-0.19")

    libatasmart-0.19

-   [Next](libblockdev.md "libblockdev-3.5.0")

    libblockdev-3.5.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libatomic_ops-7.10.0 {#libatomic_ops-7.10.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libatomic_ops {#introduction-to-libatomic_ops}

<span class="application">libatomic_ops</span> provides implementations for atomic memory update operations on a number of architectures. This allows direct use of these in reasonably portable code. Unlike earlier similar packages, this one explicitly considers memory barrier semantics, and allows the construction of code that involves minimum overhead across a variety of architectures.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/bdwgc/libatomic_ops/releases/download/v7.10.0/libatomic_ops-7.10.0.tar.gz">https://github.com/bdwgc/libatomic_ops/releases/download/v7.10.0/libatomic_ops-7.10.0.tar.gz</a>

-   Download MD5 sum: 1de9631daa0781a8c5a8457053d57cf0

-   Download size: 532 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of libatomic_ops {#installation-of-libatomic_ops}

Install <span class="application">libatomic_ops</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --docdir=/usr/share/doc/libatomic_ops-7.10.0 &&
make
```

To check the results, issue <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-shared`*: This switch enables building of the <code class="filename">libatomic_ops</code> shared libraries.

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
**Installed Libraries:** <span class="segbody">libatomic_ops.so and libatomic_ops_gpl.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libatomic_ops and /usr/share/doc/libatomic_ops-7.10.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------
  <a id="libatomic_ops-lib"></a><span class="term"><code class="filename">libatomic_ops.so</code></span>   contains functions for atomic memory operations
  -------------------------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libatasmart.md "libatasmart-0.19")

    libatasmart-0.19

-   [Next](libblockdev.md "libblockdev-3.5.0")

    libblockdev-3.5.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

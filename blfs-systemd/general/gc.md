<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gcc.md "GCC-16.1.0")

    GCC-16.1.0

-   [Next](gdb.md "GDB-17.2")

    GDB-17.2

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GC-8.2.12 {#gc-8.2.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GC {#introduction-to-gc}

The <span class="application">GC</span> package contains the Boehm-Demers-Weiser conservative garbage collector, which can be used as a garbage collecting replacement for the C malloc function or C++ new operator. It allows you to allocate memory basically as you normally would, without explicitly deallocating memory that is no longer useful. The collector automatically recycles memory when it determines that it can no longer be otherwise accessed. The collector is also used by a number of programming language implementations that either use C as intermediate code, want to facilitate easier interoperation with C libraries, or just prefer the simple collector interface. Alternatively, the garbage collector may be used as a leak detector for C or C++ programs, though that is not its primary goal.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/bdwgc/bdwgc/releases/download/v8.2.12/gc-8.2.12.tar.gz">https://github.com/bdwgc/bdwgc/releases/download/v8.2.12/gc-8.2.12.tar.gz</a>

-   Download MD5 sum: 5e7c74f8bd57f64d3f86673ff3c17230

-   Download size: 1.2 MB

-   Estimated disk space required: 9.4 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### GC Dependencies

#### Optional

<a class="xref" href="libatomic_ops.md" title="libatomic_ops-7.10.0">libatomic_ops-7.10.0</a>
</div>

<div class="installation" lang="en">
## Installation of GC {#installation-of-gc}

Install <span class="application">GC</span> by running the following commands:

```bash
./configure --prefix=/usr      \
            --enable-cplusplus \
            --disable-static   \
            --docdir=/usr/share/doc/gc-8.2.12 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 doc/gc.man /usr/share/man/man3/gc_malloc.3
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--docdir=/usr/share/doc/gc-8.2.12`*: This option is used so the package will install the documentation in a versioned directory.

*`--enable-cplusplus`*: This parameter enables the building and installing of the C++ library along with the standard C library.

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
**Installed Libraries:** <span class="segbody">libcord.so, libgc.so, libgccpp.so, and libgctba.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gc and /usr/share/doc/gc-8.2.12</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
  <a id="libcord"></a><span class="term"><code class="filename">libcord.so</code></span>     contains a tree-based string library
  <a id="libgc"></a><span class="term"><code class="filename">libgc.so</code></span>         contains a C interface to the conservative garbage collector, primarily designed to replace the C malloc function
  <a id="libgccpp"></a><span class="term"><code class="filename">libgccpp.so</code></span>   contains a C++ interface to the conservative garbage collector
  <a id="libgctba"></a><span class="term"><code class="filename">libgctba.so</code></span>   contains a C++ interface to throw bad allocations
  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gcc.md "GCC-16.1.0")

    GCC-16.1.0

-   [Next](gdb.md "GDB-17.2")

    GDB-17.2

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

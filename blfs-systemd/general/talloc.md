<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2")

    SPIRV-LLVM-Translator-22.1.2

-   [Next](uchardet.md "Uchardet-0.0.8")

    Uchardet-0.0.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Talloc-2.4.4 {#talloc-2.4.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Talloc {#introduction-to-talloc}

<span class="application">Talloc</span> provides a hierarchical, reference counted memory pool system with destructors. It is the core memory allocator used in <span class="application">Samba</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.samba.org/ftp/talloc/talloc-2.4.4.tar.gz">https://www.samba.org/ftp/talloc/talloc-2.4.4.tar.gz</a>

-   Download MD5 sum: a385dd581b4b588873338d182294cf36

-   Download size: 672 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### Talloc Dependencies

#### Optional

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (To generate man pages), <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="xref" href="../postlfs/xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>
</div>

<div class="installation" lang="en">
## Installation of Talloc {#installation-of-talloc}

Install <span class="application">Talloc</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To check the results, issue <span class="command"><strong>make check</strong></span>.

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
**Installed Libraries:** <span class="segbody">libpytalloc-util.cpython-314-\<arch\>-linux-gnu.so, libtalloc.so, and talloc.cpython-314-\<arch\>-linux-gnu.so (Python 3 Module)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  <a id="libtalloc"></a><span class="term"><code class="filename">libtalloc.so</code></span>   contains a replacement for the <span class="application">Glibc</span> malloc function
  -------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2")

    SPIRV-LLVM-Translator-22.1.2

-   [Next](uchardet.md "Uchardet-0.0.8")

    Uchardet-0.0.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

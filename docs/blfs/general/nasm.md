<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](mercurial.md "Mercurial-7.2.2")

    Mercurial-7.2.2

-   [Next](patchelf.md "Patchelf-0.18.0")

    Patchelf-0.18.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NASM-3.01 {#nasm-3.01}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NASM {#introduction-to-nasm}

<span class="application">NASM</span> (Netwide Assembler) is an 80x86 assembler designed for portability and modularity. It includes a disassembler as well.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01.tar.xz">https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01.tar.xz</a>

-   Download MD5 sum: 8414016d6ad0e113958c29066dfcc550

-   Download size: 1.4 MB

-   Estimated disk space required: 70 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional documentation: <a class="ulink" href="https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01-xdoc.tar.xz">https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01-xdoc.tar.xz</a>
</div>

### NASM Dependencies

#### Optional (for generating documentation):

<a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> and <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>
</div>

<div class="installation" lang="en">
## Installation of NASM {#installation-of-nasm}

If you downloaded the optional documentation, put it into the source tree:

```bash
tar -xf ../nasm-3.01-xdoc.tar.xz --strip-components=1
```

Install <span class="application">NASM</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you downloaded the optional documentation, install it with the following instructions as the <code class="systemitem">root</code> user:

```bash
install -m755 -d         /usr/share/doc/nasm-3.01/html  &&
cp -v doc/html/*.md    /usr/share/doc/nasm-3.01/html  &&
cp -v doc/*.{txt,ps,pdf} /usr/share/doc/nasm-3.01
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">nasm and ndisasm</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/nasm-3.01</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- --------------------------------------
  <a id="nasm-prog"></a><span class="command"><span class="term"><strong>nasm</strong></span></span>    is a portable 80x86 assembler
  <a id="ndisasm"></a><span class="command"><span class="term"><strong>ndisasm</strong></span></span>   is an 80x86 binary file disassembler
  ---------------------------------------------- --------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mercurial.md "Mercurial-7.2.2")

    Mercurial-7.2.2

-   [Next](patchelf.md "Patchelf-0.18.0")

    Patchelf-0.18.0

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](valgrind.md "Valgrind-3.27.1")

    Valgrind-3.27.1

-   [Next](java.md "Java-21.0.10")

    Java-21.0.10

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# yasm-1.3.0 {#yasm-1.3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to yasm {#introduction-to-yasm}

<span class="application">Yasm</span> is a complete rewrite of the <a class="xref" href="nasm.md" title="NASM-3.01">NASM-3.01</a> assembler. It supports the x86 and AMD64 instruction sets, accepts NASM and GAS assembler syntaxes and outputs binary, ELF32 and ELF64 object formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz">https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz</a>

-   Download MD5 sum: fc9e586751ff789b34b1f21d572d96af

-   Download size: 1.5 MB

-   Estimated disk space required: 27 MB (additional 12 MB for the tests)

-   Estimated build time: 0.1 SBU (additional 0.1 SBU for the tests)
</div>

### yasm Dependencies

#### Optional

<a class="xref" href="python-modules.md#cython" title="Cython-3.2.5">cython-3.2.5</a> and <a class="ulink" href="https://www.python.org/downloads/release/python-2718/">Python2</a>
</div>

<div class="installation" lang="en">
## Installation of yasm {#installation-of-yasm}

First, fix a problem when building with gcc-15:

```bash
sed -e 's/def __cplusplus/ defined(__cplusplus) || __STDC_VERSION__ >= 202311L/' \
    -i libyasm/bitvect.h
```

Install <span class="application">yasm</span> by running the following commands:

```bash
sed -i 's#) ytasm.*#)#' Makefile.in &&

./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make -j1 check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i 's#) ytasm.\*#)#' Makefile.in</strong></span>: This sed prevents it compiling 2 programs (vsyasm and ytasm) that are only of use on Microsoft Windows.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">yasm</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libyasm.a</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libyasm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="yasm-prog"></a><span class="command"><span class="term"><strong>yasm</strong></span></span>   is a portable, retargetable assembler that supports the x86 and AMD64 instruction sets, accepts NASM and GAS assembler syntaxes and outputs binaries in ELF32 and ELF64 object formats
  <a id="libyasm"></a><span class="term"><code class="filename">libyasm.a</code></span>   provides all of the core functionality of <span class="command"><strong>yasm</strong></span>, for manipulating machine instructions and object file constructs
  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](valgrind.md "Valgrind-3.27.1")

    Valgrind-3.27.1

-   [Next](java.md "Java-21.0.10")

    Java-21.0.10

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libunistring.md "libunistring-1.4.2")

    libunistring-1.4.2

-   [Next](liburcu.md "liburcu-0.15.6")

    liburcu-0.15.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libunwind-1.8.3 {#libunwind-1.8.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libunwind {#introduction-to-libunwind}

The <span class="application">libunwind</span> package contains a portable and efficient C programming interface (API) to determine the call-chain of a program. The API additionally provides the means to manipulate the preserved (callee-saved) state of each call-frame and to resume execution at any point in the call-chain (non-local goto). The API supports both local (same-process) and remote (across-process) operation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libunwind/libunwind/releases/download/v1.8.3/libunwind-1.8.3.tar.gz">https://github.com/libunwind/libunwind/releases/download/v1.8.3/libunwind-1.8.3.tar.gz</a>

-   Download MD5 sum: 13bc7b41462ac6ea157d350eaf6c1503

-   Download size: 960 KB

-   Estimated disk space required: 22 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### libunwind Dependencies

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (for latex2man)
</div>

<div class="installation" lang="en">
## Installation of libunwind {#installation-of-libunwind}

First, fix a problem when building with gcc-15:

```bash
sed -i '/func.s/s/s//' tests/Gtest-nomalloc.c
```

Install <span class="application">libunwind</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Libraries:** <span class="segbody">libunwind.so, libunwind-coredump.so, libunwind-generic.so (symlink to libunwind-x86_64.so), libunwind-ptrace.so, libunwind-setjmp.so, and libunwind-x86_64.so (libunwind-x86.so on i686)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/libexec/libunwind</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libunistring.md "libunistring-1.4.2")

    libunistring-1.4.2

-   [Next](liburcu.md "liburcu-0.15.6")

    liburcu-0.15.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

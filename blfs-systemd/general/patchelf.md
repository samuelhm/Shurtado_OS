<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](nasm.md "NASM-3.01")

    NASM-3.01

-   [Next](perl-modules.md "Perl Modules")

    Perl Modules

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Patchelf-0.18.0 {#patchelf-0.18.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Patchelf {#introduction-to-patchelf}

The <span class="application">patchelf</span> package contains a small utility to modify the dynamic linker and RPATH of ELF executables.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/NixOS/patchelf/releases/download/0.18.0/patchelf-0.18.0.tar.gz">https://github.com/NixOS/patchelf/releases/download/0.18.0/patchelf-0.18.0.tar.gz</a>

-   Download MD5 sum: b02099b0d63f06b3fe370f4edfc0c085

-   Download size: 448 KB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of Patchelf {#installation-of-patchelf}

Install <span class="application">patchelf</span> by running the following commands:

```bash
./configure --prefix=/usr \
            --docdir=/usr/share/doc/patchelf-0.18.0 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Program:** <span class="segbody">patchelf</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="patchelf-prog"></a><span class="command"><span class="term"><strong>patchelf</strong></span></span>   is a simple utility for modifying existing ELF executables and libraries; it can change the dynamic loader ("ELF interpreter") of executables and change the RPATH of executables and libraries.
  ----------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nasm.md "NASM-3.01")

    NASM-3.01

-   [Next](perl-modules.md "Perl Modules")

    Perl Modules

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

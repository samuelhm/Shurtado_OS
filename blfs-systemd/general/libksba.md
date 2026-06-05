<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libidn2.md "libidn2-2.3.8")

    libidn2-2.3.8

-   [Next](liblinear.md "liblinear-250")

    liblinear-250

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libksba-1.8.0 {#libksba-1.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libksba {#introduction-to-libksba}

The <span class="application">Libksba</span> package contains a library used to make X.509 certificates as well as making the CMS (Cryptographic Message Syntax) easily accessible by other applications. Both specifications are building blocks of S/MIME and TLS. The library does not rely on another cryptographic library but provides hooks for easy integration with <span class="application">Libgcrypt</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.8.0.tar.bz2">https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.8.0.tar.bz2</a>

-   Download MD5 sum: 182951961170c12f6569454717a1383a

-   Download size: 708 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Libksba Dependencies

#### Required

<a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>

#### Optional

<a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of Libksba {#installation-of-libksba}

Install <span class="application">Libksba</span> by running the following commands:

```bash
./configure --prefix=/usr &&
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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libksba.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------
  <a id="libksba-lib"></a><span class="term"><code class="filename">libksba.so</code></span>   contains the cryptographic API functions
  -------------------------------------------------- ------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libidn2.md "libidn2-2.3.8")

    libidn2-2.3.8

-   [Next](liblinear.md "liblinear-250")

    liblinear-250

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

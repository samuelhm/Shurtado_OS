<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libdisplay-info.md "libdisplay-info-0.3.0")

    libdisplay-info-0.3.0

-   [Next](libgpg-error.md "libgpg-error-1.61")

    libgpg-error-1.61

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgcrypt-1.12.2 {#libgcrypt-1.12.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgcrypt {#introduction-to-libgcrypt}

The <span class="application">libgcrypt</span> package contains a general purpose crypto library based on the code used in <span class="application">GnuPG</span>. The library provides a high level interface to cryptographic building blocks using an extendable and flexible API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2">https://www.gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.12.2.tar.bz2</a>

-   Download MD5 sum: 4e98430cfc16d842a7231026c32418da

-   Download size: 4.3 MB

-   Estimated disk space required: 159 MB (with tests)

-   Estimated build time: 0.2 SBU (with documentation; add 0.9 SBU for tests)
</div>

### libgcrypt Dependencies

#### Required

<a class="xref" href="libgpg-error.md" title="libgpg-error-1.61">libgpg-error-1.61</a>

#### Optional

<a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of libgcrypt {#installation-of-libgcrypt}

Install <span class="application">libgcrypt</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/gcrypt_nochunks.md doc/gcrypt.texi &&
makeinfo --plaintext       -o doc/gcrypt.txt           doc/gcrypt.texi
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -dm755   /usr/share/doc/libgcrypt-1.12.2 &&
install -v -m644    README doc/{README.apichanges,fips*,libgcrypt*} \
                    /usr/share/doc/libgcrypt-1.12.2 &&

install -v -dm755   /usr/share/doc/libgcrypt-1.12.2/html &&
install -v -m644 doc/gcrypt.html/* \
                    /usr/share/doc/libgcrypt-1.12.2/html &&
install -v -m644 doc/gcrypt_nochunks.md \
                    /usr/share/doc/libgcrypt-1.12.2      &&
install -v -m644 doc/gcrypt.{txt,texi} \
                    /usr/share/doc/libgcrypt-1.12.2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--with-capabilities</code>: This option enables libcap2 support. Note that this breaks <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dumpsexp, hmac256, and mpicalc</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgcrypt.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libgcrypt-1.12.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------
  <a id="dumpsexp"></a><span class="command"><span class="term"><strong>dumpsexp</strong></span></span>         is a debug tool for S-expressions
  <a id="hmac256"></a><span class="command"><span class="term"><strong>hmac256</strong></span></span>           is a standalone HMAC-SHA-256 implementation used to compute an HMAC-SHA-256 authentication code
  <a id="mpicalc"></a><span class="command"><span class="term"><strong>mpicalc</strong></span></span>           is a RPN (Reverse Polish Notation) calculator
  <a id="libgcrypt-lib"></a><span class="term"><code class="filename">libgcrypt.so</code></span>   contains the cryptographic API functions
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdisplay-info.md "libdisplay-info-0.3.0")

    libdisplay-info-0.3.0

-   [Next](libgpg-error.md "libgpg-error-1.61")

    libgpg-error-1.61

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

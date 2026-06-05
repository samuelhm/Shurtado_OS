<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gnutls.md "GnuTLS-3.8.13")

    GnuTLS-3.8.13

-   [Next](gpgmepp.md "gpgmepp-2.1.0")

    gpgmepp-2.1.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gpgme-2.1.0 {#gpgme-2.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gpgme {#introduction-to-gpgme}

The <span class="application">gpgme</span> package is a C library that allows cryptography support to be added to a program. It is designed to make access to public key crypto engines like <span class="application">GnuPG</span> or GpgSM easier for applications. <span class="application">gpgme</span> provides a high-level crypto API for encryption, decryption, signing, signature verification and key management.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-2.1.0.tar.bz2">https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-2.1.0.tar.bz2</a>

-   Download MD5 sum: 0dd5144452ccc976f581c943d31e2b30

-   Download size: 1.4 MB

-   Estimated disk space required: 29 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests and parallelism=4)
</div>

### gpgme Dependencies

#### Required

<a class="xref" href="../general/libassuan.md" title="libassuan-3.0.2">libassuan-3.0.2</a>

#### Recommended

<a class="xref" href="gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (as per upstream recommendation)

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of gpgme {#installation-of-gpgme}

Install <span class="application">gpgme</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

../configure --prefix=/usr --disable-static &&
make
```

To test the results, you should have <a class="xref" href="gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> installed. If so, run:

```bash
make -k check
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--disable-gpg-test</code>: Use this switch if <a class="xref" href="gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gnupg-key-manage, gpgme-json, and gpgme-tool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgpgme.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/common-lisp/source/gpgme</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  <a id="gnupg-key-manage"></a><span class="command"><span class="term"><strong>gnupg-key-manage</strong></span></span>   performs a variety of operations on GPG keys, including identifying keys and deleting them
  <a id="gpgme-json"></a><span class="command"><span class="term"><strong>gpgme-json</strong></span></span>               outputs <span class="application">gpgme</span> commands in JSON format
  <a id="gpgme-tool"></a><span class="command"><span class="term"><strong>gpgme-tool</strong></span></span>               is an assuan server exposing <span class="application">gpgme</span> operations, such as printing fingerprints and keyids with keyservers
  <a id="libgpgme"></a><span class="term"><code class="filename">libgpgme.so</code></span>                   contains the <span class="application">gpgme</span> API functions
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnutls.md "GnuTLS-3.8.13")

    GnuTLS-3.8.13

-   [Next](gpgmepp.md "gpgmepp-2.1.0")

    gpgmepp-2.1.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

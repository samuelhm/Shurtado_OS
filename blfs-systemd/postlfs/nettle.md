<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](mitkrb.md "MIT Kerberos V5-1.22.2")

    MIT Kerberos V5-1.22.2

-   [Next](nss.md "NSS-3.124")

    NSS-3.124

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Nettle-4.0 {#nettle-4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Nettle {#introduction-to-nettle}

The <span class="application">Nettle</span> package contains a low-level cryptographic library that is designed to fit easily in many contexts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/nettle/nettle-4.0.tar.gz">https://ftpmirror.gnu.org/nettle/nettle-4.0.tar.gz</a>

-   Download MD5 sum: 144401453f9f35e53938bcacfc59800e

-   Download size: 2.5 MB

-   Estimated disk space required: 106 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; both using parallelism=4)
</div>

### Nettle Dependencies

#### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (optional for the tests)
</div>

<div class="installation" lang="en">
## Installation of Nettle {#installation-of-nettle}

Install <span class="application">Nettle</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so &&
install -v -m755 -d /usr/share/doc/nettle-4.0 &&
install -v -m644 nettle.{html,pdf} /usr/share/doc/nettle-4.0
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
**Installed Programs:** <span class="segbody">nettle-hash, nettle-lfib-stream, nettle-pbkdf2, pkcs1-conv, and sexp-conv</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libhogweed.so and libnettle.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/nettle and /usr/share/doc/nettle-4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="nettle-hash"></a><span class="command"><span class="term"><strong>nettle-hash</strong></span></span>                 calculates a hash value using a specified algorithm
  <a id="nettle-lfib-stream"></a><span class="command"><span class="term"><strong>nettle-lfib-stream</strong></span></span>   outputs a sequence of pseudorandom (non-cryptographic) bytes, using Knuth's lagged fibonacci generator. The stream is useful for testing, but should not be used to generate cryptographic keys or anything else that needs real randomness
  <a id="nettle-pbkdf2"></a><span class="command"><span class="term"><strong>nettle-pbkdf2</strong></span></span>             is a password-based key derivation function that takes a password or a passphrase as input and returns a strengthened password, which is protected against pre-computation attacks by using salting and other expensive computations.
  <a id="pkcs1-conv"></a><span class="command"><span class="term"><strong>pkcs1-conv</strong></span></span>                   converts private and public RSA keys from PKCS #1 format to sexp format
  <a id="sexp-conv"></a><span class="command"><span class="term"><strong>sexp-conv</strong></span></span>                     converts an s-expression to a different encoding
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mitkrb.md "MIT Kerberos V5-1.22.2")

    MIT Kerberos V5-1.22.2

-   [Next](nss.md "NSS-3.124")

    NSS-3.124

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

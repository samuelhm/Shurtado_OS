<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libstatgrab.md "libstatgrab-0.92.1")

    libstatgrab-0.92.1

-   [Next](libunistring.md "libunistring-1.4.2")

    libunistring-1.4.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libtasn1-4.21.0 {#libtasn1-4.21.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libtasn1 {#introduction-to-libtasn1}

<span class="application">libtasn1</span> is a highly portable C library that encodes and decodes DER/BER data following an ASN.1 schema.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libtasn1/libtasn1-4.21.0.tar.gz">https://ftpmirror.gnu.org/libtasn1/libtasn1-4.21.0.tar.gz</a>

-   Download MD5 sum: 2ee1d9f3aa66f1e308c46a283aa9a8c2

-   Download size: 1.7 MB

-   Estimated disk space required: 16 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
</div>

### libtasn1 Dependencies

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of libtasn1 {#installation-of-libtasn1}

Install <span class="application">libtasn1</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you did not pass the <code class="option">--enable-gtk-doc</code> parameter to the <span class="command"><strong>configure</strong></span> script, you can install the API documentation using the following command as the <code class="systemitem">root</code> user:

```bash
make -C doc/reference install-data-local
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: This parameter is normally used if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">asn1Coding, asn1Decoding and asn1Parser</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libtasn1.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/gtk-doc/html/libtasn1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  <a id="asn1Coding"></a><span class="command"><span class="term"><strong>asn1Coding</strong></span></span>       is an ASN.1 DER encoder
  <a id="asn1Decoding"></a><span class="command"><span class="term"><strong>asn1Decoding</strong></span></span>   is an ASN.1 DER decoder
  <a id="asn1Parser"></a><span class="command"><span class="term"><strong>asn1Parser</strong></span></span>       is an ASN.1 syntax tree generator for <span class="application">libtasn1</span>
  <a id="libtasn1-lib"></a><span class="term"><code class="filename">libtasn1.so</code></span>       is a library for Abstract Syntax Notation One (ASN.1) and Distinguish Encoding Rules (DER) manipulation
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libstatgrab.md "libstatgrab-0.92.1")

    libstatgrab-0.92.1

-   [Next](libunistring.md "libunistring-1.4.2")

    libunistring-1.4.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

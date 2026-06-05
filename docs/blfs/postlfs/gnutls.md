<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gnupg.md "GnuPG-2.5.20")

    GnuPG-2.5.20

-   [Next](gpgme.md "gpgme-2.1.0")

    gpgme-2.1.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GnuTLS-3.8.13 {#gnutls-3.8.13}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GnuTLS {#introduction-to-gnutls}

The <span class="application">GnuTLS</span> package contains libraries and userspace tools which provide a secure layer over a reliable transport layer. Currently the <span class="application">GnuTLS</span> library implements the proposed standards by the IETF's TLS working group. Quoting from the <a class="ulink" href="https://datatracker.ietf.org/doc/rfc8446/">TLS 1.3 protocol specification</a> :

<span class="quote">“ <span class="quote">TLS allows client/server applications to communicate over the Internet in a way that is designed to prevent eavesdropping, tampering, and message forgery.</span> ”</span>

<span class="application">GnuTLS</span> provides support for TLS 1.3, TLS 1.2, TLS 1.1, TLS 1.0, and (optionally) SSL 3.0 protocols. It also supports TLS extensions, including server name and max record size. Additionally, the library supports authentication using the SRP protocol, X.509 certificates, and OpenPGP keys, along with support for the TLS Pre-Shared-Keys (PSK) extension, the Inner Application (TLS/IA) extension, and X.509 and OpenPGP certificate handling.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz">https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.13.tar.xz</a>

-   Download MD5 sum: a97671c1839340c6b43c23ccb3237180

-   Download size: 7.0 MB

-   Estimated disk space required: 336 MB (with tests)

-   Estimated build time: 0.6 SBU (add 1.4 SBU for tests; both using parallelism=8)
</div>

### GnuTLS Dependencies

#### Required

<a class="xref" href="nettle.md" title="Nettle-4.0">Nettle-4.0</a>

#### Recommended

<a class="xref" href="make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, <a class="xref" href="../general/libunistring.md" title="libunistring-1.4.2">libunistring-1.4.2</a>, <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, and <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>

#### Optional

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a> or <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, <a class="xref" href="../basicnet/net-tools.md" title="Net-tools-2.10">Net-tools-2.10</a> (used during the test suite), <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (used during the test suite), <a class="ulink" href="https://ftpmirror.gnu.org/autogen/">autogen</a>, <a class="ulink" href="https://cmocka.org/">cmocka</a> and (used during the test suite if the DANE library is built), <a class="ulink" href="https://github.com/smuellerDD/leancrypto">leancrypto</a>, and <a class="ulink" href="https://downloads.sourceforge.net/trousers/">Trousers</a> (Trusted Platform Module support)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Note that if you do not install <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, a version shipped in the <span class="application">GnuTLS</span> tarball will be used instead.
</div>
</div>

<div class="installation" lang="en">
## Installation of GnuTLS {#installation-of-gnutls}

Install <span class="application">GnuTLS</span> by running the following commands:

```bash
./configure --prefix=/usr \
            --docdir=/usr/share/doc/gnutls-3.8.13 \
            --with-default-trust-store-pkcs11="pkcs11:" &&
make
```

To test the results, now issue: <span class="command"><strong>make check</strong></span>.

Now, install the package as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-default-trust-store-pkcs11="pkcs11:"`*: This switch tells gnutls to use the PKCS #11 trust store as the default trust. Omit this switch if <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> is not installed.

<code class="option">--with-default-trust-store-file=/etc/pki/tls/certs/ca-bundle.crt</code>: This switch tells <span class="command"><strong>configure</strong></span> where to find the legacy CA certificate bundle and to use it instead of PKCS #11 module by default. Use this if <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a> is not installed.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.

<code class="option">--enable-openssl-compatibility</code>: Use this switch if you wish to build the OpenSSL compatibility library.

<code class="option">--without-p11-kit</code>: Use this switch if you have not installed <a class="xref" href="p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>.

<code class="option">--with-included-unistring</code>: This switch uses the bundled version of libunistring, instead of the system one. Use this switch if you have not installed <a class="xref" href="../general/libunistring.md" title="libunistring-1.4.2">libunistring-1.4.2</a>.

<code class="option">--disable-dsa</code>: This switch completely disables DSA algorithm support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">certtool, danetool, gnutls-cli, gnutls-cli-debug, gnutls-serv, ocsptool, p11tool, psktool, and srptool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgnutls.so, libgnutls-dane.so, libgnutlsxx.so, and libgnutls-openssl.so (optional)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gnutls and /usr/share/doc/gnutls-3.8.13</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  <a id="certtool"></a><span class="command"><span class="term"><strong>certtool</strong></span></span>                   is used to generate X.509 certificates, certificate requests, and private keys
  <a id="danetool"></a><span class="command"><span class="term"><strong>danetool</strong></span></span>                   is a tool used to generate and check DNS resource records for the DANE protocol
  <a id="gnutls-cli"></a><span class="command"><span class="term"><strong>gnutls-cli</strong></span></span>               is a simple client program to set up a TLS connection to some other computer
  <a id="gnutls-cli-debug"></a><span class="command"><span class="term"><strong>gnutls-cli-debug</strong></span></span>   is a simple client program to set up a TLS connection to some other computer and produces very verbose progress results
  <a id="gnutls-serv"></a><span class="command"><span class="term"><strong>gnutls-serv</strong></span></span>             is a simple server program that listens to incoming TLS connections
  <a id="ocsptool"></a><span class="command"><span class="term"><strong>ocsptool</strong></span></span>                   is a program that can parse and print information about OCSP requests/responses, generate requests and verify responses
  <a id="p11tool"></a><span class="command"><span class="term"><strong>p11tool</strong></span></span>                     is a program that allows handling data from PKCS #11 smart cards and security modules
  <a id="psktool"></a><span class="command"><span class="term"><strong>psktool</strong></span></span>                     is a simple program that generates random keys for use with TLS-PSK
  <a id="srptool"></a><span class="command"><span class="term"><strong>srptool</strong></span></span>                     is a simple program that emulates the programs in the Stanford SRP (Secure Remote Password) libraries using GnuTLS
  <a id="libgnutls"></a><span class="term"><code class="filename">libgnutls.so</code></span>                 contains the core API functions and X.509 certificate API functions
  ---------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnupg.md "GnuPG-2.5.20")

    GnuPG-2.5.20

-   [Next](gpgme.md "gpgme-2.1.0")

    gpgme-2.1.0

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

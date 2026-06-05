<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libtirpc.md "libtirpc-1.3.7")

    libtirpc-1.3.7

-   [Next](nghttp2.md "nghttp2-1.69.0")

    nghttp2-1.69.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# neon-0.37.1 {#neon-0.37.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to neon {#introduction-to-neon}

<span class="application">neon</span> is an HTTP and WebDAV client library, with a C interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://notroj.github.io/neon/neon-0.37.1.tar.gz">https://notroj.github.io/neon/neon-0.37.1.tar.gz</a>

-   Download MD5 sum: 5e661a69b52d26d8baab0e61a783d419

-   Download size: 960 KB

-   Estimated disk space required: 84 MB (with tests)

-   Estimated build time: less than 0.1 SBU (add 0.4 SBU for tests)
</div>

### neon Dependencies

#### Optional

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a> (for some tests), <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (to regenerate the documentation), and <a class="ulink" href="https://www.manyfish.co.uk/pakchois/">PaKChoiS</a>
</div>

<div class="installation" lang="en">
## Installation of neon {#installation-of-neon}

Install <span class="application">neon</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --with-ssl       \
            --enable-shared  \
            --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

If you wish to regenerate the documentation, issue:

```bash
make docs
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-ssl`*: This switch enables SSL support using <span class="application">OpenSSL</span>. <span class="application">GnuTLS</span> can be used instead, by passing <code class="option">--with-ssl=gnutls</code> and <code class="option">--with-ca-bundle=/etc/pki/tls/certs/ca-bundle.crt</code> to the <span class="command"><strong>configure</strong></span> script.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--with-libproxy</code>: This switch enables support for using libproxy to retrieve proxy server information. Use this switch if you have <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a> installed and wish to use it.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">neon-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libneon.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/neon and /usr/share/doc/neon-0.37.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------
  <a id="neon-config"></a><span class="command"><span class="term"><strong>neon-config</strong></span></span>   is a script that provides information about an installed copy of the neon library
  <a id="libneon"></a><span class="term"><code class="filename">libneon.so</code></span>           is used as a high-level interface to common HTTP and WebDAV methods
  ------------------------------------------------------ -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libtirpc.md "libtirpc-1.3.7")

    libtirpc-1.3.7

-   [Next](nghttp2.md "nghttp2-1.69.0")

    nghttp2-1.69.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

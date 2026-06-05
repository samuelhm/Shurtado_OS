<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](openssh.md "OpenSSH-10.3p1")

    OpenSSH-10.3p1

-   [Next](polkit.md "Polkit-127")

    Polkit-127

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# p11-kit-0.26.2 {#p11-kit-0.26.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to p11-kit {#introduction-to-p11-kit}

The <span class="application">p11-kit</span> package provides a way to load and enumerate PKCS #11 (a Cryptographic Token Interface Standard) modules.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/p11-glue/p11-kit/releases/download/0.26.2/p11-kit-0.26.2.tar.xz">https://github.com/p11-glue/p11-kit/releases/download/0.26.2/p11-kit-0.26.2.tar.xz</a>

-   Download MD5 sum: 99edde5f38697ed2d47c55544347be4e

-   Download size: 1.0 MB

-   Estimated disk space required: 110 MB (with tests)

-   Estimated build time: 0.5 SBU (with tests)
</div>

### p11-kit Dependencies

#### Recommended

<a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>

#### Recommended (runtime)

<a class="xref" href="make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="nss.md" title="NSS-3.124">nss-3.124</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of p11-kit {#installation-of-p11-kit}

Prepare the distribution specific anchor hook:

```bash
sed '20,$ d' -i trust/trust-extract-compat &&

cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Update trust stores
/usr/sbin/make-ca -r
EOF
```

Install <span class="application">p11-kit</span> by running the following commands:

```bash
mkdir p11-build &&
cd    p11-build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D trust_paths=/etc/pki/anchors &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
ln -sfv /usr/libexec/p11-kit/trust-extract-compat \
        /usr/bin/update-ca-certificates
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D trust_paths=/etc/pki/anchors`*: this switch sets the location of trusted certificates used by libp11-kit.so.

<code class="option">-D hash_impl=freebl</code>: Use this switch if you want to use the Freebl library from <span class="application">NSS</span> for SHA1 and MD5 hashing.

<code class="option">-D gtk_doc=true</code>: Use this switch if you have installed <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and wish to rebuild the documentation and generate manual pages.
</div>

<div class="configuration" lang="en">
## Configuring p11-kit {#configuring-p11-kit}

The <span class="application">p11-kit</span> trust module (<code class="filename">/usr/lib/pkcs11/p11-kit-trust.so</code>) can be used as a drop-in replacement for <code class="filename">/usr/lib/libnssckbi.so</code> to transparently make the system CAs available to <span class="application">NSS</span> aware applications, rather than the static list provided by <code class="filename">/usr/lib/libnssckbi.so</code>. As the <code class="systemitem">root</code> user, execute the following commands:

```bash
ln -sfv ./pkcs11/p11-kit-trust.so /usr/lib/libnssckbi.so
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">p11-kit, trust, and update-ca-certificates</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libp11-kit.so and p11-kit-proxy.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/pkcs11, /usr/include/p11-kit-1, /usr/lib/pkcs11, /usr/libexec/p11-kit, /usr/share/gtk-doc/html/p11-kit, and /usr/share/p11-kit</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="p11-kit-prog"></a><span class="command"><span class="term"><strong>p11-kit</strong></span></span>                            is a command line tool that can be used to perform operations on PKCS#11 modules configured on the system
  <a id="trust"></a><span class="command"><span class="term"><strong>trust</strong></span></span>                                     is a command line tool to examine and modify the shared trust policy store
  <a id="update-ca-certificates"></a><span class="command"><span class="term"><strong>update-ca-certificates</strong></span></span>   is a command line tool to both extract local certificates from an updated anchor store, and regenerate all anchors and certificate stores on the system. This is done unconditionally on BLFS using the *`--force`* and *`--get`* flags to <span class="command"><strong>make-ca</strong></span> and should likely not be used for automated updates
  <a id="libp11-kit"></a><span class="term"><code class="filename">libp11-kit.so</code></span>                           contains functions used to coordinate initialization and finalization of any PKCS#11 module
  <a id="p11-kit-proxy"></a><span class="term"><code class="filename">p11-kit-proxy.so</code></span>                     is the PKCS#11 proxy module
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](openssh.md "OpenSSH-10.3p1")

    OpenSSH-10.3p1

-   [Next](polkit.md "Polkit-127")

    Polkit-127

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

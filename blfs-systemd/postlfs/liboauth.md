<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](linux-pam.md "Linux-PAM-1.7.2")

    Linux-PAM-1.7.2

-   [Next](libpwquality.md "libpwquality-1.4.5")

    libpwquality-1.4.5

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# liboauth-1.0.3 {#liboauth-1.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to liboauth {#introduction-to-liboauth}

<span class="application">liboauth</span> is a collection of POSIX-C functions implementing the OAuth Core RFC 5849 standard. Liboauth provides functions to escape and encode parameters according to OAuth specification and offers high-level functionality to sign requests or verify OAuth signatures as well as perform HTTP requests.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/liboauth/liboauth-1.0.3.tar.gz">https://downloads.sourceforge.net/liboauth/liboauth-1.0.3.tar.gz</a>

-   Download MD5 sum: 689b46c2b3ab1a39735ac33f714c4f7f

-   Download size: 496 KB

-   Estimated disk space required: 3.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch for use with openssl: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/liboauth-1.0.3-openssl-1.1.0-3.patch">https://www.linuxfromscratch.org/patches/blfs/svn/liboauth-1.0.3-openssl-1.1.0-3.patch</a>
</div>

### liboauth Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>

#### Optional

<a class="xref" href="nss.md" title="NSS-3.124">nss-3.124</a> and <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to build documentation)
</div>

<div class="installation" lang="en">
## Installation of liboauth {#installation-of-liboauth}

Apply a patch for the current version of openssl:

```bash
patch -Np1 -i ../liboauth-1.0.3-openssl-1.1.0-3.patch
```

Install <span class="application">liboauth</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you wish to build the documentation (needs <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>), issue:

```bash
make dox
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have previously built the documentation, install it by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /usr/share/doc/liboauth-1.0.3 &&
cp -rv doc/html/* /usr/share/doc/liboauth-1.0.3
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-nss</code>: Use this switch if you want to use Mozilla NSS instead of <span class="application">OpenSSL</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">liboauth.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/liboauth-1.0.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="liboauth-lib"></a><span class="term"><code class="filename">liboauth.so</code></span>   provides functions to escape and encode strings according to OAuth specifications and offers high-level functionality built on top to sign requests or verify signatures using either NSS or OpenSSL for calculating the hash/signatures
  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](linux-pam.md "Linux-PAM-1.7.2")

    Linux-PAM-1.7.2

-   [Next](libpwquality.md "libpwquality-1.4.5")

    libpwquality-1.4.5

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

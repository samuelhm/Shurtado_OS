<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](gpgme.md "gpgme-2.1.0")

    gpgme-2.1.0

-   [Next](iptables.md "iptables-1.8.13")

    iptables-1.8.13

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gpgmepp-2.1.0 {#gpgmepp-2.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gpgmepp {#introduction-to-gpgmepp}

The <span class="application">gpgmepp</span> package provides a C++ wrapper to <a class="xref" href="gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.gnupg.org/ftp/gcrypt/gpgmepp/gpgmepp-2.1.0.tar.xz">https://www.gnupg.org/ftp/gcrypt/gpgmepp/gpgmepp-2.1.0.tar.xz</a>

-   Download MD5 sum: f3252524ba34c6a42455f30e226de1f5

-   Download size: 124 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
</div>

### gpgmepp Dependencies

#### Required

<a class="xref" href="gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of gpgmepp {#installation-of-gpgmepp}

Install <span class="application">gpgmepp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

This package does not come with a test suite.

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
**Installed Libraries:** <span class="segbody">libgpgmepp.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/cmake/Gpgmepp and /usr/include/gpgme++</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  <a id="libgpgmepp"></a><span class="term"><code class="filename">libgpgmepp.so</code></span>   contains the C++ <span class="application">gpgme</span> API functions
  ---------------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gpgme.md "gpgme-2.1.0")

    gpgme-2.1.0

-   [Next](iptables.md "iptables-1.8.13")

    iptables-1.8.13

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libsoup3.md "libsoup-3.6.6")

    libsoup-3.6.6

-   [Next](neon.md "neon-0.37.1")

    neon-0.37.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libtirpc-1.3.7 {#libtirpc-1.3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libtirpc {#introduction-to-libtirpc}

The <span class="application">libtirpc</span> package contains libraries that support programs that use the Remote Procedure Call (RPC) API. It replaces the RPC, but not the NIS library entries that used to be in glibc.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.7.tar.bz2">https://downloads.sourceforge.net/libtirpc/libtirpc-1.3.7.tar.bz2</a>

-   Download MD5 sum: 74f97df306b8d6149d3d9898a1d44c6e

-   Download size: 560 KB

-   Estimated disk space required: 6.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libtirpc Dependencies

#### Optional

<a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> for GSSAPI support
</div>

<div class="installation" lang="en">
## Installation of libtirpc {#installation-of-libtirpc}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If updating this package, you will also need to update any existing version of <a class="xref" href="rpcbind.md" title="rpcbind-1.2.9">rpcbind-1.2.9</a>
</div>

Install <span class="application">libtirpc</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --disable-gssapi  &&

make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-gssapi`*: This switch is needed if no GSSAPI providers are installed, such as <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>. Remove this switch if you have installed <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> and you need to use the GSSAPI support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libtirpc.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/tirpc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------
  <a id="libtirpc-lib"></a><span class="term"><code class="filename">libtirpc.so</code></span>   provides the Remote Procedure Call (RPC) API functions required by other programs
  ---------------------------------------------------- -----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsoup3.md "libsoup-3.6.6")

    libsoup-3.6.6

-   [Next](neon.md "neon-0.37.1")

    neon-0.37.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

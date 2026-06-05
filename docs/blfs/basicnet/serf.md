<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](rpcsvc-proto.md "rpcsvc-proto-1.4.4")

    rpcsvc-proto-1.4.4

-   [Next](textweb.md "Text Web Browsers")

    Text Web Browsers

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Serf-1.3.10 {#serf-1.3.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Serf {#introduction-to-serf}

The <span class="application">Serf</span> package contains a C-based HTTP client library built upon the Apache Portable Runtime (APR) library. It multiplexes connections, running the read/write communication asynchronously. Memory copies and transformations are kept to a minimum to provide high performance operation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/serf/serf-1.3.10.tar.bz2">https://archive.apache.org/dist/serf/serf-1.3.10.tar.bz2</a>

-   Download MD5 sum: 5320087299084c297eff8e1dacfab1af

-   Download size: 148 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Serf Dependencies

#### Required

<a class="xref" href="../general/apr-util.md" title="Apr-Util-1.6.3">Apr-Util-1.6.3</a> and <a class="xref" href="../general/scons.md" title="SCons-4.10.1">SCons-4.10.1</a>

#### Optional

<a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> (for GSSAPI support)
</div>

<div class="installation" lang="en">
## Installation of Serf {#installation-of-serf}

Install <span class="application">Serf</span> by running the following commands:

```bash
sed -i "/Append/s:RPATH=libdir,::"          SConstruct &&
sed -i "/Default/s:lib_static,::"           SConstruct &&
sed -i "/Alias/s:install_static,::"         SConstruct &&
sed -e 's/nm->d.ia5->length/ASN1_STRING_length(nm->d.ia5)/'                \
    -e 's/nm->d.ia5->data/(const char *)ASN1_STRING_get0_data(nm->d.ia5)/' \
    -i buckets/ssl_buckets.c                           &&


scons PREFIX=/usr
```

This package does not come with a functional test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
scons PREFIX=/usr install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i "..."</strong></span>: The first command removes the runtime path from a shared library and the next two commands disable building and installing of the static library. The fourth command corrects for changes in OpenSSL-4.

<code class="option">GSSAPI=/usr</code>: Use this switch if you have installed a GSSAPI library and you want <span class="application">serf</span> to use it.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libserf-1.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/serf-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------
  <a id="libserf-1"></a><span class="term"><code class="filename">libserf-1.so</code></span>   contains the <span class="application">Serf</span> API functions
  -------------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rpcsvc-proto.md "rpcsvc-proto-1.4.4")

    rpcsvc-proto-1.4.4

-   [Next](textweb.md "Text Web Browsers")

    Text Web Browsers

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

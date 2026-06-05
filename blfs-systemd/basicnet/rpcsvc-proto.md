<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](nghttp2.md "nghttp2-1.69.0")

    nghttp2-1.69.0

-   [Next](serf.md "Serf-1.3.10")

    Serf-1.3.10

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# rpcsvc-proto-1.4.4 {#rpcsvc-proto-1.4.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to rpcsvc-proto {#introduction-to-rpcsvc-proto}

The <span class="application">rpcsvc-proto</span> package contains the rcpsvc protocol files and headers, formerly included with glibc, that are not included in replacement <a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, along with the rpcgen program.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/thkukuk/rpcsvc-proto/releases/download/v1.4.4/rpcsvc-proto-1.4.4.tar.xz">https://github.com/thkukuk/rpcsvc-proto/releases/download/v1.4.4/rpcsvc-proto-1.4.4.tar.xz</a>

-   Download MD5 sum: bf908de360308d909e9cc469402ff2ef

-   Download size: 168 KB

-   Estimated disk space required: 2.2 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of rpcsvc-proto {#installation-of-rpcsvc-proto}

Install <span class="application">rpcsvc-proto</span> by running the following commands:

```bash
./configure --sysconfdir=/etc &&
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
**Installed Programs:** <span class="segbody">rpcgen</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/rpcsvc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------- ------------------------------------------------
  <a id="rpcgen"></a><span class="command"><span class="term"><strong>rpcgen</strong></span></span>   Generates C code to implement the RPC protocol
  -------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nghttp2.md "nghttp2-1.69.0")

    nghttp2-1.69.0

-   [Next](serf.md "Serf-1.3.10")

    Serf-1.3.10

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

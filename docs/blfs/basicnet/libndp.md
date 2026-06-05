<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libmnl.md "libmnl-1.0.5")

    libmnl-1.0.5

-   [Next](libnl.md "libnl-3.12.0")

    libnl-3.12.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libndp-1.9 {#libndp-1.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libndp {#introduction-to-libndp}

The <span class="application">libndp</span> package provides a wrapper for IPv6 Neighbor Discovery Protocol. It also provides a tool named ndptool for sending and receiving NDP messages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://libndp.org/files/libndp-1.9.tar.gz">http://libndp.org/files/libndp-1.9.tar.gz</a>

-   Download MD5 sum: 9d486750569e7025e5d0afdcc509b93c

-   Download size: 368 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of libndp {#installation-of-libndp}

Install <span class="application">libndp</span> by running the following command:

```bash
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
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
**Installed Program:** <span class="segbody">ndptool</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libndp.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------
  <a id="ndptool"></a><span class="command"><span class="term"><strong>ndptool</strong></span></span>     is a tool for sending and receiving NDP messages
  <a id="libndp-lib"></a><span class="term"><code class="filename">libndp.so</code></span>   provides a wrapper for the IPv6 Neighbor Discovery Protocol
  ------------------------------------------------ -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmnl.md "libmnl-1.0.5")

    libmnl-1.0.5

-   [Next](libnl.md "libnl-3.12.0")

    libnl-3.12.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

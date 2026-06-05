<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcanberra.md "libcanberra-0.30")

    libcanberra-0.30

-   [Next](libcdio.md "libcdio-2.1.0")

    libcdio-2.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcddb-1.3.2 {#libcddb-1.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcddb {#introduction-to-libcddb}

The <span class="application">libcddb</span> is a library that implements the different protocols (CDDBP, HTTP, SMTP) to access data on a CDDB server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/libcddb/libcddb-1.3.2.tar.bz2">https://downloads.sourceforge.net/libcddb/libcddb-1.3.2.tar.bz2</a>

-   Download MD5 sum: 8bb4a6f542197e8e9648ae597cd6bc8a

-   Download size: 384 KB

-   Estimated disk space required: 3.9 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libcddb Dependencies

#### Optional

<a class="xref" href="libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a> (for <span class="command"><strong>cddb_query</strong></span> to read CDs)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libcddb {#installation-of-libcddb}

By default this package accesses <code class="systemitem">freedb.org</code>, which is already closed. Modify the default to use <code class="systemitem">gnudb.gnudb.org</code> instead, and fix two stale test data files:

```bash
sed -e '/DEFAULT_SERVER/s/freedb.org/gnudb.gnudb.org/' \
    -e '/DEFAULT_PORT/s/888/&0/'                       \
    -i include/cddb/cddb_ni.h                          &&
sed '/^Genre:/s/Trip-Hop/Electronic/' -i tests/testdata/920ef00b.txt &&
sed '/DISCID/i# Revision: 42'         -i tests/testcache/misc/12340000
```

Fix a problem building with gcc-14 and later:

```bash
sed -i 's/size_t l;/socklen_t l;/' lib/cddb_net.c
```

Install <span class="application">libcddb</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check -k</strong></span>. The test suite needs an Internet connection. The test named <span class="quote">“<span class="quote">Check non-existing disc server read</span>”</span> fails because the test incorrectly assumes no discs have the ID <code class="literal">0x11111111</code>. Another test fails due to an attempt to use the closed <code class="uri">freedb2.org</code> server.

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
**Installed Programs:** <span class="segbody">cddb_query</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libcddb.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/cddb</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  <a id="cddb_query"></a><span class="command"><span class="term"><strong>cddb_query</strong></span></span>   provides a user interface to a CDDB server
  ---------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcanberra.md "libcanberra-0.30")

    libcanberra-0.30

-   [Next](libcdio.md "libcdio-2.1.0")

    libcdio-2.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

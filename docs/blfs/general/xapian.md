<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wv.md "wv-1.2.9")

    wv-1.2.9

-   [Next](graphlib.md "Graphics and Font Libraries")

    Graphics and Font Libraries

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xapian-2.0.0 {#xapian-2.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xapian {#introduction-to-xapian}

Xapian is an open source search engine library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://oligarchy.co.uk/xapian/2.0.0/xapian-core-2.0.0.tar.xz">https://oligarchy.co.uk/xapian/2.0.0/xapian-core-2.0.0.tar.xz</a>

-   Download MD5 sum: 8105ac73b1a6510501ecea8f0e78b9b3

-   Download size: 3.3 MB

-   Estimated disk space required: 174 MB (add 157 MB for tests)

-   Estimated build time: 0.6 SBU (add 7.0 SBU for tests; both using parallelism=4)
</div>

### Xapian Dependencies

#### Optional

<a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of Xapian {#installation-of-xapian}

Install <span class="application">Xapian</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xapian-core-2.0.0 &&
make
```

To run the test suite, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">copydatabase, simpleexpand, simpleindex, simplesearch, xapian-check, xapian-compact, xapian-config, xapian-delve, xapian-metadata, xapian-pos, xapian-progsrv, xapian-quest, xapian-replicate, xapian-replicate-server, and xapian-tcpsrv</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxapian.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xapian, /usr/lib/cmake/xapian, /usr/share/doc/xapian-core-2.0.0, and /usr/share/xapian-core</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------
  <a id="copydatabase"></a><span class="command"><span class="term"><strong>copydatabase</strong></span></span>                         performs a document-by-document copy of one or more <span class="application">Xapian</span> databases
  <a id="xapian-quest"></a><span class="command"><span class="term"><strong>xapian-quest</strong></span></span>                         is a command line tool to search through a database
  <a id="simpleexpand"></a><span class="command"><span class="term"><strong>simpleexpand</strong></span></span>                         is a simple example program demonstrating query expansion
  <a id="simpleindex"></a><span class="command"><span class="term"><strong>simpleindex</strong></span></span>                           indexes each paragraph of a text file as a <span class="application">Xapian</span> document
  <a id="simplesearch"></a><span class="command"><span class="term"><strong>simplesearch</strong></span></span>                         is a simple command line search utility
  <a id="xapian-check"></a><span class="command"><span class="term"><strong>xapian-check</strong></span></span>                         checks the consistency of a database or table
  <a id="xapian-compact"></a><span class="command"><span class="term"><strong>xapian-compact</strong></span></span>                     compacts a database, or merges and compacts several databases
  <a id="xapian-config"></a><span class="command"><span class="term"><strong>xapian-config</strong></span></span>                       reports information about the installed version of xapian
  <a id="xapian-delve"></a><span class="command"><span class="term"><strong>xapian-delve</strong></span></span>                         inspects the contents of a <span class="application">Xapian</span> database
  <a id="xapian-metadata"></a><span class="command"><span class="term"><strong>xapian-metadata</strong></span></span>                   reads and writes user metadata
  <a id="xapian-pos"></a><span class="command"><span class="term"><strong>xapian-pos</strong></span></span>                             inspects the contents of a flint table for development or debugging
  <a id="xapian-progsrv"></a><span class="command"><span class="term"><strong>xapian-progsrv</strong></span></span>                     is a remote server for use with <span class="application">ProgClient</span>
  <a id="xapian-replicate"></a><span class="command"><span class="term"><strong>xapian-replicate</strong></span></span>                 replicates a database from a master server to a local copy
  <a id="xapian-replicate-server"></a><span class="command"><span class="term"><strong>xapian-replicate-server</strong></span></span>   services database replication requests from clients
  <a id="xapian-tcpsrv"></a><span class="command"><span class="term"><strong>xapian-tcpsrv</strong></span></span>                       is the TCP daemon for use with <span class="application">Xapian</span>'s remote backend
  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wv.md "wv-1.2.9")

    wv-1.2.9

-   [Next](graphlib.md "Graphics and Font Libraries")

    Graphics and Font Libraries

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](upgradedb.md "Important Notes About Upgrading Database Server Software")

    Important Notes About Upgrading Database Server Software

-   [Next](mariadb.md "MariaDB-12.3.2")

    MariaDB-12.3.2

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lmdb-0.9.35 {#lmdb-0.9.35}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lmdb {#introduction-to-lmdb}

The <span class="application">lmdb</span> package is a fast, compact, key-value embedded data store. It uses memory-mapped files, so it has the read performance of a pure in-memory database while still offering the persistence of standard disk-based databases, and is only limited to the size of the virtual address space

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.35/LMDB_0.9.35.tar.bz2">https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.35/LMDB_0.9.35.tar.bz2</a>

-   Download MD5 sum: 2b09899a3ea43dbc9833c1325a492bbd

-   Download size: 119 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of lmdb {#installation-of-lmdb}

Install <span class="application">lmdb</span> by running the following commands:

```bash
cd libraries/liblmdb &&
make                 &&
sed -i 's| liblmdb.a||' Makefile
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... liblmdb.a ... Makefile</strong></span>: The package executables use a static library so it must be created. This command suppresses installation of the static library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">mdb_copy, mdb_dump, mdb_load, and mdb_stat</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblmdb.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------
  <a id="mdb_copy"></a><span class="command"><span class="term"><strong>mdb_copy</strong></span></span>   copies an LMDB environment from one database to another, including the option to compact the database
  <a id="mdb_dump"></a><span class="command"><span class="term"><strong>mdb_dump</strong></span></span>   reads a database and writes its contents to standard output using a portable flat-text format, which can be interpreted by mdb_load
  <a id="mdb_load"></a><span class="command"><span class="term"><strong>mdb_load</strong></span></span>   imports a database from standard input or from a file
  <a id="mdb_stat"></a><span class="command"><span class="term"><strong>mdb_stat</strong></span></span>   displays the status of a LMDB environment
  <a id="liblmdb"></a><span class="term"><code class="filename">liblmdb.so</code></span>     provides functions for accessing a LMDB database
  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](upgradedb.md "Important Notes About Upgrading Database Server Software")

    Important Notes About Upgrading Database Server Software

-   [Next](mariadb.md "MariaDB-12.3.2")

    MariaDB-12.3.2

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

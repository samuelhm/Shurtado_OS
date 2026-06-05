<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](apr.md "Apr-1.7.6")

    Apr-1.7.6

-   [Next](aspell.md "Aspell-0.60.8.2")

    Aspell-0.60.8.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Apr-Util-1.6.3 {#apr-util-1.6.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Apr Util {#introduction-to-apr-util}

The Apache Portable Runtime Utility Library provides a predictable and consistent interface to underlying client library interfaces. This application programming interface assures predictable if not identical behavior regardless of which libraries are available on a given platform.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/apr/apr-util-1.6.3.tar.bz2">https://archive.apache.org/dist/apr/apr-util-1.6.3.tar.bz2</a>

-   Download MD5 sum: b6e8c9b31d938fe5797ceb0d1ff2eb69

-   Download size: 423 KB

-   Estimated disk space required: 7.6 MB (add 1.4 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests)
</div>

### Apr Util Dependencies

#### Required

<a class="xref" href="apr.md" title="Apr-1.7.6">Apr-1.7.6</a>

#### Optional

<a class="ulink" href="https://www.freetds.org/">FreeTDS</a>, <a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="unixodbc.md" title="unixODBC-2.3.14">unixODBC-2.3.14</a>, and <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated)
</div>

<div class="installation" lang="en">
## Installation of Apr Util {#installation-of-apr-util}

Install <span class="application">Apr Util</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make
```

To test the results, issue: <span class="command"><strong>make -j1 test</strong></span>. One test, testdbm, is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-gdbm=/usr`*: This switch enables the <code class="filename">apr_dbm_gdbm-1.so</code> plugin.

*`--with-openssl=/usr`* *`--with-crypto`*: These switches enable the <code class="filename">apr_crypto_openssl-1.so</code> plugin.

<code class="option">--with-berkeley-db=/usr</code>: If you have installed <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), use this switch to compile the <code class="filename">apr_dbm_db-1.so</code> plugin.

<code class="option">--with-ldap</code>: If you have installed <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, use this switch to compile the <code class="filename">apr_ldap.so</code> plugin.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">apu-1-config</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libaprutil-1.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/apr-util-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  <a id="apu-1-config"></a><span class="command"><span class="term"><strong>apu-1-config</strong></span></span>   is an APR-util script designed to allow easy command line access to APR-util configuration parameters
  <a id="libaprutil-1"></a><span class="term"><code class="filename">libaprutil-1.so</code></span>   contains functions that provide a predictable and consistent interface to underlying client library interfaces
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](apr.md "Apr-1.7.6")

    Apr-1.7.6

-   [Next](aspell.md "Aspell-0.60.8.2")

    Aspell-0.60.8.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

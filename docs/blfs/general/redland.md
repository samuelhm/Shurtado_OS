<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](rasqal.md "Rasqal-0.9.33")

    Rasqal-0.9.33

-   [Next](sysstat.md "Sysstat-12.7.9")

    Sysstat-12.7.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Redland-1.0.17 {#redland-1.0.17}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Redland {#introduction-to-redland}

<span class="application">Redland</span> is a set of free software C libraries that provide support for the Resource Description Framework (RDF).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.librdf.org/source/redland-1.0.17.tar.gz">https://download.librdf.org/source/redland-1.0.17.tar.gz</a>

-   Download MD5 sum: e5be03eda13ef68aabab6e42aa67715e

-   Download size: 1.6 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.2 SBU
</div>

### Redland Dependencies

#### Required

<a class="xref" href="rasqal.md" title="Rasqal-0.9.33">Rasqal-0.9.33</a>

#### Optional

<a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated) <a class="ulink" href="https://sourceforge.net/projects/iodbc/files/">libiodbc</a>, <a class="ulink" href="https://downloads.sourceforge.net/virtuoso/">virtuoso</a>, and <a class="ulink" href="https://sourceforge.net/projects/threestore/">3store</a>
</div>

<div class="installation" lang="en">
## Installation of Redland {#installation-of-redland}

Install <span class="application">Redland</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">rdfproc, redland-config and redland-db-upgrade</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">librdf.so and /usr/lib/redland/librdf_storage\_\*.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/redland, /usr/share/gtk-doc/html/redland and /usr/share/redland</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------
  <a id="rdfproc"></a><span class="command"><span class="term"><strong>rdfproc</strong></span></span>                         is the Redland RDF processor utility
  <a id="redland-config"></a><span class="command"><span class="term"><strong>redland-config</strong></span></span>           is a script to get information about the installed version of Redland
  <a id="redland-db-upgrade"></a><span class="command"><span class="term"><strong>redland-db-upgrade</strong></span></span>   upgrades older Redland databases to 0.9.12 format
  -------------------------------------------------------------------- -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rasqal.md "Rasqal-0.9.33")

    Rasqal-0.9.33

-   [Next](sysstat.md "Sysstat-12.7.9")

    Sysstat-12.7.9

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

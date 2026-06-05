<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](asciidoctor.md "Asciidoctor-2.0.26")

    Asciidoctor-2.0.26

-   [Next](compface.md "Compface-1.5.2")

    Compface-1.5.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Bogofilter-1.2.5 {#bogofilter-1.2.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Bogofilter {#introduction-to-bogofilter}

The <span class="application">Bogofilter</span> application is a mail filter that classifies mail as spam or ham (non-spam) by a statistical analysis of the message's header and content (body).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/bogofilter/bogofilter-1.2.5.tar.xz">https://downloads.sourceforge.net/bogofilter/bogofilter-1.2.5.tar.xz</a>

-   Download MD5 sum: 8763f87adfff7b802ced177d8c654539

-   Download size: 784 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
</div>

### Bogofilter Dependencies

#### Recommended

<a class="xref" href="gsl.md" title="gsl-2.8">gsl-2.8</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../server/lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), <a class="ulink" href="https://dbmx.net/qdbm/">QDBM</a> and <a class="ulink" href="https://dbmx.net/tokyocabinet/">TokyoCabinet</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you do not install the recommended <a class="xref" href="gsl.md" title="gsl-2.8">gsl-2.8</a> package then a statically linked shipped version will be used instead.
</div>
</div>

<div class="installation" lang="en">
## Installation of Bogofilter {#installation-of-bogofilter}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you plan to change the version of your database library on an existing installation, or to change to a different database, read the warning at the top of the RELEASE.NOTES file.
</div>

Install <span class="application">Bogofilter</span> by running the following commands:

```bash
./configure --prefix=/usr                \
            --sysconfdir=/etc/bogofilter \
            --with-database=sqlite3      &&
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

*`--with-database=sqlite3`*: This switch makes Bogofilter use sqlite as the database, instead of Berkeley DB.

<code class="option">--with-database={lmdb,qdbm,tokyocabinet}</code>: This switch also allows to use lmdb, qdbm, or tokyocabinet as the database.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">bf_compact, bf_copy, bf_tar, bogofilter, bogolexer, bogotune, bogoupgrade and bogoutil</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/bogofilter</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------------------------------
  <a id="bf_compact"></a><span class="command"><span class="term"><strong>bf_compact</strong></span></span>        creates a more compact bogofilter working directory with a dump/load cycle
  <a id="bf_copy"></a><span class="command"><span class="term"><strong>bf_copy</strong></span></span>              copies a bogofilter working directory to another directory
  <a id="bf_tar"></a><span class="command"><span class="term"><strong>bf_tar</strong></span></span>                bundles a bogofilter working directory in tar format and copies it to standard output
  <a id="bogofilter-prog"></a><span class="command"><span class="term"><strong>bogofilter</strong></span></span>   is a fast Bayesian spam filter
  <a id="bogolexer"></a><span class="command"><span class="term"><strong>bogolexer</strong></span></span>          is used to separate messages into tokens and to test new versions of the lexer.l code
  <a id="bogotune"></a><span class="command"><span class="term"><strong>bogotune</strong></span></span>            attempts to find optimum parameter settings for bogofilter
  <a id="bogoupgrade"></a><span class="command"><span class="term"><strong>bogoupgrade</strong></span></span>      upgrades the bogofilter database to the current version
  <a id="bogoutil"></a><span class="command"><span class="term"><strong>bogoutil</strong></span></span>            dumps, loads, and maintains bogofilter database files
  --------------------------------------------------------- ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](asciidoctor.md "Asciidoctor-2.0.26")

    Asciidoctor-2.0.26

-   [Next](compface.md "Compface-1.5.2")

    Compface-1.5.2

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

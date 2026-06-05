<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](sgml.md "Standard Generalized Markup Language (SGML)")

    Standard Generalized Markup Language (SGML)

-   [Next](docbook-3.1-dtd.md "docbook-3.1-dtd")

    docbook-3.1-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sgml-common-0.6.3 {#sgml-common-0.6.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SGML Common {#introduction-to-sgml-common}

The <span class="application">SGML Common</span> package contains <span class="command"><strong>install-catalog</strong></span>. This is useful for creating and maintaining centralized SGML catalogs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz">https://sourceware.org/ftp/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz</a>

-   Download MD5 sum: 103c9828f24820df86e55e7862e28974

-   Download size: 75 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/sgml-common-0.6.3-manpage-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/sgml-common-0.6.3-manpage-1.patch</a>
</div>
</div>

<div class="installation" lang="en">
## Installation of SGML Common {#installation-of-sgml-common}

Instead of the normal convention of including the autotools files in the package, the maintainers included symlinks to the files in <code class="filename">/usr/share/automake</code>. For previous versions of <span class="application">Automake</span> this convention is valid, but more recent versions of <span class="application">Automake</span> install the internal files in version specific directories. This causes the <span class="command"><strong>configure</strong></span> script to abort because it is unable to find these files. To fix this problem, the build system needs to be regenerated. Since the included <code class="filename">Makefile.am</code> file uses syntax for installing the manual page that is not supported by current versions of <span class="application">Automake</span>, a patch is required to correct the syntax.

```bash
patch -Np1 -i ../sgml-common-0.6.3-manpage-1.patch &&
autoreconf -f -i
```

Install <span class="application">SGML Common</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc install &&

install-catalog --add /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog &&

install-catalog --add /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat
```

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Update Hint

Remove the above catalog items prior to upgrading (as the <code class="systemitem">root</code> user) with:

```bash
install-catalog --remove /etc/sgml/sgml-ent.cat \
    /usr/share/sgml/sgml-iso-entities-8879.1986/catalog &&

install-catalog --remove /etc/sgml/sgml-docbook.cat \
    /etc/sgml/sgml-ent.cat
```
</div>
</div>

<div class="configuration" lang="en">
## Configuring SGML Common {#configuring-sgml-common}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/sgml/sgml.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

No change in this file is necessary.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">install-catalog and sgmlwhich</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Files:** <span class="segbody">SGML and XML DocBook entity files</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/sgml, /usr/share/doc/sgml-common-0.6.3, and /usr/share/sgml</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  <a id="install-catalog"></a><span class="command"><span class="term"><strong>install-catalog</strong></span></span>   creates a centralized catalog that maintains references to catalogs scattered throughout the <code class="filename">/usr/share/sgml</code> directory tree
  <a id="sgmlwhich"></a><span class="command"><span class="term"><strong>sgmlwhich</strong></span></span>               prints the name of the main configuration file to standard output
  <a id="SGML-entities"></a><span class="term"><code class="filename">SGML entities files</code></span>    contains the basic character entities defined with SDATA entries
  <a id="XML-entities"></a><span class="term"><code class="filename">XML entities files</code></span>      contains the basic character entities defined by a hexadecimal representation of the Unicode character number
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sgml.md "Standard Generalized Markup Language (SGML)")

    Standard Generalized Markup Language (SGML)

-   [Next](docbook-3.1-dtd.md "docbook-3.1-dtd")

    docbook-3.1-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

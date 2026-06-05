<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 48. Standard Generalized Markup Language (SGML)

-   [Prev](sgml-common.md "sgml-common-0.6.3")

    sgml-common-0.6.3

-   [Next](docbook-4.5-dtd.md "docbook-4.5-dtd")

    docbook-4.5-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-3.1-dtd {#docbook-3.1-dtd}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook-3.1 SGML DTD {#introduction-to-docbook-3.1-sgml-dtd}

The <span class="application">DocBook SGML DTD</span> package contains document type definitions for verification of SGML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.docbook.org/sgml/3.1/docbk31.zip">https://archive.docbook.org/sgml/3.1/docbk31.zip</a>

-   Download MD5 sum: 432749c0c806dbae81c8bcb70da3b5d3

-   Download size: 55 KB

-   Estimated disk space required: 676 KB

-   Estimated build time: less than 0.1 SBU
</div>

### DocBook-3.1 SGML DTD Dependencies

#### Required

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> and <a class="xref" href="sgml-common.md" title="sgml-common-0.6.3">sgml-common-0.6.3</a>
</div>

<div class="installation" lang="en">
## Installation of DocBook-3.1 SGML DTD {#installation-of-docbook-3.1-sgml-dtd}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The package source is distributed in <code class="filename">zip</code> format and requires <span class="command"><strong>unzip</strong></span> (actually a symlink to <span class="command"><strong>bsdunzip</strong></span> from <span class="application">libarchive</span>). You should create a directory and change to that directory before unzipping the file to ease the removal of the source files after the package has been installed.
</div>

Install <span class="application">DocBook-3.1 SGML DTD</span> by running the following commands:

```bash
sed -i -e '/ISO 8879/d' \
       -e 's|DTDDECL "-//OASIS//DTD DocBook V3.1//EN"|SGMLDECL|g' \
       docbook.cat
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/sgml/docbook/sgml-dtd-3.1 &&
chown -R root:root . &&
install -v docbook.cat /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&
cp -v -af *.dtd *.mod *.dcl /usr/share/sgml/docbook/sgml-dtd-3.1 &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /usr/share/sgml/docbook/sgml-dtd-3.1/catalog &&

install-catalog --add /etc/sgml/sgml-docbook-dtd-3.1.cat \
    /etc/sgml/sgml-docbook.cat
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i -e '/ISO 8879/d' docbook.cat</strong></span>: This command removes the ENT definitions from the catalog file.

<span class="command"><strong>sed -i -e 's\|DTDDECL "-//OASIS//DTD Docbook V3.1//EN"\|SGMLDECL\|g' docbook.cat</strong></span>: This command replaces the DTDDECL catalog entry, which is not supported by Linux SGML tools, with the SGMLDECL catalog entry.
</div>

<div class="configuration" lang="en">
## Configuring DocBook-3.1 SGML DTD {#configuring-docbook-3.1-sgml-dtd}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/sgml/catalog</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The above installation script updates the catalog.

Using only the most current 3.x version of <span class="application">DocBook SGML DTD</span> requires the following (perform as the <code class="systemitem">root</code> user):

```bash
cat >> /usr/share/sgml/docbook/sgml-dtd-3.1/catalog << "EOF"
  -- Begin Single Major Version catalog changes --

PUBLIC "-//Davenport//DTD DocBook V3.0//EN" "docbook.dtd"

  -- End Single Major Version catalog changes --
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Files:** <span class="segbody">SGML DTD and MOD files</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/sgml/docbook/sgml-dtd-3.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="SGML-DTD-files"></a><span class="term"><code class="filename">SGML DTD files</code></span>   contains a document type definition which defines the element types and the attribute lists that can be used in the corresponding SGML files
  <a id="SGML-MOD-files"></a><span class="term"><code class="filename">SGML MOD files</code></span>   contains components of the document type definition that are sourced into the <code class="filename">DTD</code> files
  --------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sgml-common.md "sgml-common-0.6.3")

    sgml-common-0.6.3

-   [Next](docbook-4.5-dtd.md "docbook-4.5-dtd")

    docbook-4.5-dtd

-   [Up](sgml.md "Chapter 48. Standard Generalized Markup Language (SGML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

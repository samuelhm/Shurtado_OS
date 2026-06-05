<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook.md "docbook-xml-4.5")

    docbook-xml-4.5

-   [Next](docbook-xsl.md "docbook-xsl-nons-1.79.2")

    docbook-xsl-nons-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-xml-5.0 {#docbook-xml-5.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook XML DTD and Schemas 5.0 {#introduction-to-docbook-xml-dtd-and-schemas-5.0}

The <span class="application">DocBook XML DTD and Schemas</span>-5.0 package contains document type definitions and schemas for verification of XML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard. In addition to providing a DTD, version 5 introduced the RelaxNG schema and Schematron rules, and is incompatible with previous versions of DocBook XML.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.docbook.org/xml/5.0/docbook-5.0.zip">https://archive.docbook.org/xml/5.0/docbook-5.0.zip</a>

-   Download MD5 sum: 2411c19ed4fb141f3fa3d389fae40736

-   Download size: 820 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: 0.1 SBU
</div>

### DocBook XML DTD and Schemas 5.0 Dependencies

#### Required

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>
</div>

<div class="installation" lang="en">
## Installation of DocBook XML DTD and Schemas 5.0 {#installation-of-docbook-xml-dtd-and-schemas-5.0}

Install <span class="application">DocBook XML DTD and Schemas</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -vdm755 /usr/share/xml/docbook/xml-5.0 &&
cp -rv catalog.xml dtd rng sch xsd /usr/share/xml/docbook/xml-5.0
```

Create (or update) and populate the system XML catalog (<code class="filename">/etc/xml/catalog</code>) by running the following commands as the <code class="systemitem">root</code> user:

```bash
if [ ! -e /etc/xml/catalog ]; then
    install -v -d -m755 /etc/xml &&
    xmlcatalog --noout --create /etc/xml/catalog
fi &&

xmlcatalog --noout --add "delegatePublic"             \
  "-//OASIS//DTD DocBook XML 5.0//EN                " \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog &&

xmlcatalog --noout --add "delegateSystem"             \
  "http://docbook.org/xml/5.0/dtd/"                   \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog &&

xmlcatalog --noout --add "delegateURI"                \
  "http://docbook.org/xml/5.0"                        \
  "file:///usr/share/xml/docbook/xml-5.0/catalog.xml" \
  /etc/xml/catalog
```
</div>

<div class="configuration" lang="en">
## Configuring DocBook XML DTD and Schemas 5.0 {#configuring-docbook-xml-dtd-and-schemas-5.0}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/xml/catalog</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Files:** <span class="segbody">DTD, RNC, RNG, SCH and XSD files</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xml and /usr/share/xml/docbook/xml-5.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="DTD5-files"></a><span class="term"><code class="filename">DTD files</code></span>                    contain the DocBook 5.0 document type definitions which define the element types and the attribute lists that can be used in the corresponding <code class="filename">XML</code> files
  <a id="Schema5-files"></a><span class="term"><code class="filename">RNC, RNG, and SCH files</code></span>   contain the Docbook 5.0 RelaxNG, RelaxNG Compact, and Schematron schema definitions
  <a id="XSD5-files"></a><span class="term"><code class="filename">XSD files</code></span>                    files contain DocBook-5.0 Schematron rules
  ----------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook.md "docbook-xml-4.5")

    docbook-xml-4.5

-   [Next](docbook-xsl.md "docbook-xsl-nons-1.79.2")

    docbook-xsl-nons-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

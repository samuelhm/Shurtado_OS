<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](xml.md "Extensible Markup Language (XML)")

    Extensible Markup Language (XML)

-   [Next](docbook5.md "docbook-xml-5.0")

    docbook-xml-5.0

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-xml-4.5 {#docbook-xml-4.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook-4.5 XML DTD {#introduction-to-docbook-4.5-xml-dtd}

The <span class="application">DocBook-4.5 XML DTD</span>-4.5 package contains document type definitions for verification of XML data files against the DocBook rule set. These are useful for structuring books and software documentation to a standard allowing you to utilize transformations already written for that standard.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip">https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip</a>

-   Download MD5 sum: 03083e288e87a7e829e437358da7ef9e

-   Download size: 96 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### DocBook-4.5 XML DTD Dependencies

#### Required

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>
</div>

<div class="installation" lang="en">
## Installation of DocBook-4.5 XML DTD {#installation-of-docbook-4.5-xml-dtd}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The package source is distributed in <code class="filename">zip</code> format and requires <span class="command"><strong>unzip</strong></span> (actually a symlink to <span class="command"><strong>bsdunzip</strong></span> from <span class="application">libarchive</span>). You should create a directory and change to that directory before unzipping the file to ease the removal of the source files after the package has been installed.
</div>

Install <span class="application">DocBook XML DTD</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/xml/docbook/xml-dtd-4.5 &&
install -v -d -m755 /etc/xml                           &&
cp -v -af --no-preserve=ownership                      \
    catalog.xml docbook.cat *.dtd ent/ *.mod           \
    /usr/share/xml/docbook/xml-dtd-4.5
```

The shipped <code class="filename">catalog.xml</code> file handles the formal public identifiers of the DocBook-4.5 XML DTD. We need add some entries into its installation to handle the URLs of the DTD as well, by running the following commands as the <code class="systemitem">root</code> user:

```bash
xmlcatalog --noout --add "rewriteSystem"        \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml &&

xmlcatalog --noout --add "rewriteURI"           \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
```

Create (or update) and populate the <code class="filename">/etc/xml/catalog</code> catalog file by running the following commands as the <code class="systemitem">root</code> user:

```bash
if [ ! -e /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi &&

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//ENTITIES DocBook XML"                        \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//DTD DocBook XML"                             \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegateSystem"                   \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog                                        &&

xmlcatalog --noout --add "delegateURI"                      \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog
```
</div>

<div class="configuration" lang="en">
## Configuring DocBook-4.5 XML DTD {#configuring-docbook-4.5-xml-dtd}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/xml/catalog</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

Various BLFS packages request <span class="application">DocBook XML DTD</span> version 4.x before V4.5, so the following step must be done for those packages to be built successfully.
</div>

The above installation creates the files and updates the catalogs. In order to utilize <span class="application">DocBook XML DTD</span> V4.5 when any version 4.x is requested in the System Identifier, you need to add additional statements to the catalog files. If you have any of the <span class="application">DocBook XML DTD</span>'s referenced below already installed on your system, remove those entries from the <span class="command"><strong>for</strong></span> command below (issue the commands as the <code class="systemitem">root</code> user):

```bash
for DTDVERSION in 4.1.2 4.2 4.3 4.4
do
  xmlcatalog --noout --add "public"                                  \
    "-//OASIS//DTD DocBook XML V$DTDVERSION//EN"                     \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/docbookx.dtd" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

  xmlcatalog --noout --add "rewriteSystem"              \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
  
  xmlcatalog --noout --add "rewriteURI"                 \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
done
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
**Installed Files:** <span class="segbody">DTD, MOD and ENT files</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xml and /usr/share/xml/docbook/xml-dtd-4.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="DTD-files"></a><span class="term"><code class="filename">DTD files</code></span>   contain a document type definition which defines the element types and the attribute lists that can be used in the corresponding <code class="filename">XML</code> files
  <a id="MOD-files"></a><span class="term"><code class="filename">MOD files</code></span>   contain components of the document type definition that are sourced into the <code class="filename">DTD</code> files
  <a id="ENT-files"></a><span class="term"><code class="filename">ENT files</code></span>   contain lists of named character entities allowed in HTML
  ----------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xml.md "Extensible Markup Language (XML)")

    Extensible Markup Language (XML)

-   [Next](docbook5.md "docbook-xml-5.0")

    docbook-xml-5.0

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

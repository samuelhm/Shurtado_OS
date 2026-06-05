<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2")

    docbook-xsl-ns-1.79.2

-   [Next](xmlto.md "xmlto-0.0.29")

    xmlto-0.0.29

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# itstool-2.0.7 {#itstool-2.0.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to itstool {#introduction-to-itstool}

<span class="application">Itstool</span> extracts messages from XML files and outputs PO template files, then merges translations from MO files to create translated XML files. It determines what to translate and how to chunk it into messages using the W3C Internationalization Tag Set (ITS).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/itstool/itstool/archive/2.0.7/itstool-2.0.7.tar.gz">https://github.com/itstool/itstool/archive/2.0.7/itstool-2.0.7.tar.gz</a>

-   Download MD5 sum: e759b258617a912acce630de3fa43957

-   Download size: 79 KB

-   Estimated disk space required: 688 KB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/itstool-2.0.7-lxml-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/itstool-2.0.7-lxml-1.patch</a>
</div>

### Itstool Dependencies

#### Required

<a class="xref" href="docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a> and <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>
</div>

<div class="installation" lang="en">
## Installation of itstool {#installation-of-itstool}

First, apply a patch to use <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a> for handling the XML files instead of the deprecated (disabled by default) Python module from <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>:

```bash
patch -Np1 -i ../itstool-2.0.7-lxml-1.patch
```

Install <span class="application">itstool</span> by running the following commands:

```bash
PYTHON=/usr/bin/python3 ./autogen.sh --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>python3 tests/run_tests.py</strong></span>.

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
**Installed Program:** <span class="segbody">itstool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/itstool</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ----------------------------------------
  <a id="itstool-prog"></a><span class="command"><span class="term"><strong>itstool</strong></span></span>   is used to create translated XML files
  --------------------------------------------------- ----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2")

    docbook-xsl-ns-1.79.2

-   [Next](xmlto.md "xmlto-0.0.29")

    xmlto-0.0.29

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

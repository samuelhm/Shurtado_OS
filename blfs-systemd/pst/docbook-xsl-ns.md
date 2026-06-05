<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook-xsl.md "docbook-xsl-nons-1.79.2")

    docbook-xsl-nons-1.79.2

-   [Next](itstool.md "itstool-2.0.7")

    itstool-2.0.7

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-xsl-ns-1.79.2 {#docbook-xsl-ns-1.79.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook XSL Stylesheets (Namespaced) {#introduction-to-docbook-xsl-stylesheets-namespaced}

The <span class="application">DocBook XSL Stylesheets (Namespaced)</span> package contains XSL stylesheets. These are useful for performing transformations on XML DocBook 5.0 files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-1.79.2.tar.bz2">https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-1.79.2.tar.bz2</a>

-   Download MD5 sum: 4a400f0264a19329c7f95f69e098744a

-   Download size: 23 MB

-   Estimated disk space required: 49 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-1.79.2-stack_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-1.79.2-stack_fix-1.patch</a>
</div>

### DocBook XSL Stylesheets (Namespaced) Dependencies

#### Recommended (at runtime)

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional (all used at runtime)

<a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a> (to produce <span class="quote">“<span class="quote">webhelp</span>”</span> documents), <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (or any other XSLT processor), to process Docbook documents, <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a> (to utilize the <span class="quote">“<span class="quote">epub</span>”</span> stylesheets), <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a> (to produce <span class="quote">“<span class="quote">epub3</span>”</span> documents), and <a class="ulink" href="https://sourceforge.net/projects/saxon/files/saxon6/">Saxon6</a> and <a class="ulink" href="http://xerces.apache.org/xerces2-j/">Xerces2 Java</a> (used with <a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a> to produce <span class="quote">“<span class="quote">webhelp</span>”</span> documents)
</div>

<div class="installation" lang="en">
## Installation of DocBook XSL Stylesheets (Namespaced) {#installation-of-docbook-xsl-stylesheets-namespaced}

First, fix a problem that causes stack overflows when doing recursion:

```bash
patch -Np1 -i ../docbook-xsl-1.79.2-stack_fix-1.patch
```

BLFS does not install the required packages to run the test suite and provide meaningful results.

Install <span class="application">DocBook XSL Stylesheets</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/xml/docbook/xsl-stylesheets-1.79.2 &&

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    /usr/share/xml/docbook/xsl-stylesheets-1.79.2 &&

ln -s VERSION /usr/share/xml/docbook/xsl-stylesheets-1.79.2/VERSION.xsl
```

The documentation for this package is shared with its non-namespaced counterpart, the <a class="xref" href="docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> package. Install the latter if you want the documentation.
</div>

<div class="configuration" lang="en">
## Configuring DocBook XSL Stylesheets {#configuring-docbook-xsl-stylesheets}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/xml/catalog</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Create (or append) and populate the XML catalog file using the following commands as the <code class="systemitem">root</code> user (both <span class="emphasis"><em>http</em></span> and <span class="emphasis"><em>https</em></span> forms are used because upstream have had both in their documentation):

```bash
(set -e

 install -v -d -m755 /etc/xml
 [ -e /etc/xml/catalog ] || xmlcatalog --noout --create /etc/xml/catalog

 for uri in http{,s}://cdn.docbook.org/release/xsl/{1.79.2,current} \
            http://docbook.sourceforge.net/release/xsl-ns/current; do
   for rewrite in System URI; do
     xmlcatalog --noout --add "rewrite$rewrite"        \
       "$uri"                                          \
       "/usr/share/xml/docbook/xsl-stylesheets-1.79.2" \
       /etc/xml/catalog
   done
 done)
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Files:** <span class="segbody">/usr/share/xml/docbook/xsl-stylesheets-1.79.2/\<em>/\</em>.xsl</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/xml/docbook/xsl-stylesheets-1.79.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------------- ------------------------------------------------------
  <a id="xsl-stylesheets-ns"></a><span class="term"><code class="filename">XSL Stylesheets (Namespaced)</code></span>   are used for performing transformations on XML files
  --------------------------------------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook-xsl.md "docbook-xsl-nons-1.79.2")

    docbook-xsl-nons-1.79.2

-   [Next](itstool.md "itstool-2.0.7")

    itstool-2.0.7

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

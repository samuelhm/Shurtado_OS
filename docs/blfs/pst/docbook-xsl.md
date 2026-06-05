<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 49. Extensible Markup Language (XML)

-   [Prev](docbook5.md "docbook-xml-5.0")

    docbook-xml-5.0

-   [Next](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2")

    docbook-xsl-ns-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# docbook-xsl-nons-1.79.2 {#docbook-xsl-nons-1.79.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DocBook XSL Stylesheets {#introduction-to-docbook-xsl-stylesheets}

The <span class="application">DocBook XSL Stylesheets</span> package contains XSL stylesheets. These are useful for performing transformations on XML DocBook files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2">https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2</a>

-   Download MD5 sum: 2666d1488d6ced1551d15f31d7ed8c38

-   Download size: 22 MB

-   Estimated disk space required: 58 MB (includes installing optional documentation)

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-nons-1.79.2-stack_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/docbook-xsl-nons-1.79.2-stack_fix-1.patch</a>
</div>

<div class="itemizedlist">
**Optional documentation**

-   Download (HTTP): <a class="ulink" href="https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-doc-1.79.2.tar.bz2">https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-doc-1.79.2.tar.bz2</a>

-   Download MD5 sum: 62375ca864fc198cb2b17d98209d0b8c

-   Download size: 522 KB
</div>

### DocBook XSL Stylesheets Dependencies

#### Recommended (at runtime)

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional (all used at runtime)

<a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a> (to produce <span class="quote">“<span class="quote">webhelp</span>”</span> documents), <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (or any other XSLT processor), to process Docbook documents, <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a> (to utilize the <span class="quote">“<span class="quote">epub</span>”</span> stylesheets), <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a> (to produce <span class="quote">“<span class="quote">epub3</span>”</span> documents), and <a class="ulink" href="https://sourceforge.net/projects/saxon/files/saxon6/">Saxon6</a> and <a class="ulink" href="http://xerces.apache.org/xerces2-j/">Xerces2 Java</a> (used with <a class="xref" href="../general/apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a> to produce <span class="quote">“<span class="quote">webhelp</span>”</span> documents)
</div>

<div class="installation" lang="en">
## Installation of DocBook XSL Stylesheets {#installation-of-docbook-xsl-stylesheets}

First, fix a problem that causes stack overflows when doing recursion:

```bash
patch -Np1 -i ../docbook-xsl-nons-1.79.2-stack_fix-1.patch
```

If you downloaded the optional documentation tarball, unpack it with the following command:

```bash
tar -xf ../docbook-xsl-doc-1.79.2.tar.bz2 --strip-components=1
```

BLFS does not install the required packages to run the test suite and provide meaningful results.

Install <span class="application">DocBook XSL Stylesheets</span> by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

ln -svf VERSION /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2/VERSION.xsl &&

install -v -m644 -D README \
                    /usr/share/doc/docbook-xsl-nons-1.79.2/README.txt &&

install -v -m644    RELEASE-NOTES* NEWS* \
                    /usr/share/doc/docbook-xsl-nons-1.79.2
```

If you downloaded the optional documentation tarball, install the documentation by issuing the following command as the <code class="systemitem">root</code> user:

```bash
cp -v -R doc/* /usr/share/doc/docbook-xsl-nons-1.79.2
```
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

 for uri in http{,s}://cdn.docbook.org/release/xsl-nons/{1.79.2,current} \
            http://docbook.sourceforge.net/release/xsl/current; do
   for rewrite in System URI; do
     xmlcatalog --noout --add "rewrite$rewrite"             \
       "$uri"                                               \
       "/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
       /etc/xml/catalog
   done
 done)
```

Occasionally, you may find the need to install other versions of the XSL stylesheets as some projects reference a specific version. One example is BLFS-6.0, which required the 1.67.2 version. In these instances you should install any other required version in its own versioned directory and create catalog entries as follows (substitute the desired version number for *`<version>`*):

```bash
xmlcatalog --noout --add "rewriteSystem"                          \
           "http://docbook.sourceforge.net/release/xsl/<version>" \
           "/usr/share/xml/docbook/xsl-stylesheets-<version>"     \
           /etc/xml/catalog &&

xmlcatalog --noout --add "rewriteURI"                             \
           "http://docbook.sourceforge.net/release/xsl/<version>" \
           "/usr/share/xml/docbook/xsl-stylesheets-<version>"     \
           /etc/xml/catalog
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Files:** <span class="segbody">/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2/\<em>/\</em>.xsl</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2 and /usr/share/doc/docbook-xsl-nons-1.79.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ------------------------------------------------------
  <a id="xsl-stylesheets"></a><span class="term"><code class="filename">XSL Stylesheets</code></span>   are used for performing transformations on XML files
  ----------------------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](docbook5.md "docbook-xml-5.0")

    docbook-xml-5.0

-   [Next](docbook-xsl-ns.md "docbook-xsl-ns-1.79.2")

    docbook-xsl-ns-1.79.2

-   [Up](xml.md "Chapter 49. Extensible Markup Language (XML)")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

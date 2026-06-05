<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](power-profiles-daemon.md "Power-profiles-daemon-0.30")

    Power-profiles-daemon-0.30

-   [Next](rasqal.md "Rasqal-0.9.33")

    Rasqal-0.9.33

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Raptor-2.0.16 {#raptor-2.0.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Raptor {#introduction-to-raptor}

<span class="application">Raptor</span> is a C library that provides a set of parsers and serializers that generate Resource Description Framework (RDF) triples.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.librdf.org/source/raptor2-2.0.16.tar.gz">https://download.librdf.org/source/raptor2-2.0.16.tar.gz</a>

-   Download MD5 sum: 0a71f13b6eaa0a04bf411083d89d7bc2

-   Download size: 1.7 MB

-   Estimated disk space required: 25 MB (additional 2 MB for the tests)

-   Estimated build time: 0.1 SBU (additional 0.3 SBU for the tests)
</div>

### Raptor Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a> and <a class="ulink" href="https://lloyd.github.io/yajl/">libyajl</a>
</div>

<div class="installation" lang="en">
## Installation of Raptor {#installation-of-raptor}

First, fix an incompatibility with libxml2-2.11.x:

```bash
sed -i 's/20627/20627 \&\& LIBXML_VERSION < 21100/' src/raptor_libxml.c
```

Install <span class="application">Raptor</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Several of the XML tests may fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--with-icu-config=/usr/bin/icu-config</code>: Use this switch if you have installed <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a> and wish to build <span class="application">Raptor</span> with its support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">rapper</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libraptor2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/raptor2 and /usr/share/gtk-doc/html/raptor2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  <a id="rapper"></a><span class="command"><span class="term"><strong>rapper</strong></span></span>           is a RDF parsing and serializing utility
  <a id="libraptor2"></a><span class="term"><code class="filename">libraptor2.so</code></span>   contains the <span class="application">Raptor</span> API functions
  ---------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](power-profiles-daemon.md "Power-profiles-daemon-0.30")

    Power-profiles-daemon-0.30

-   [Next](rasqal.md "Rasqal-0.9.33")

    Rasqal-0.9.33

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

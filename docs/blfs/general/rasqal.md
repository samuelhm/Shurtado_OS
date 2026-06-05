<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](raptor.md "Raptor-2.0.16")

    Raptor-2.0.16

-   [Next](redland.md "Redland-1.0.17")

    Redland-1.0.17

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Rasqal-0.9.33 {#rasqal-0.9.33}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Rasqal {#introduction-to-rasqal}

<span class="application">Rasqal</span> is a C library that handles Resource Description Framework (RDF) query language syntaxes, query construction, and execution of queries returning results as bindings, boolean, RDF graphs/triples or syntaxes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.librdf.org/source/rasqal-0.9.33.tar.gz">https://download.librdf.org/source/rasqal-0.9.33.tar.gz</a>

-   Download MD5 sum: 1f5def51ca0026cd192958ef07228b52

-   Download size: 1.6 MB

-   Estimated disk space required: 22 MB (additional 4 MB for the tests)

-   Estimated build time: 0.3 SBU (additional 0.7 SBU for the tests)
</div>

### Rasqal Dependencies

#### Required

<a class="xref" href="raptor.md" title="Raptor-2.0.16">Raptor-2.0.16</a>

#### Optional

<a class="xref" href="libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>
</div>

<div class="installation" lang="en">
## Installation of Rasqal {#installation-of-rasqal}

Install <span class="application">Rasqal</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">rasqal-config and roqet</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">librasqal.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/rasqal and /usr/share/gtk-doc/html/rasqal</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------
  <a id="rasqal-config"></a><span class="command"><span class="term"><strong>rasqal-config</strong></span></span>   is a utility for retrieving the installation options of <span class="application">Rasqal</span>
  <a id="roqet"></a><span class="command"><span class="term"><strong>roqet</strong></span></span>                   is an RDF query utility
  ---------------------------------------------------------- --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](raptor.md "Raptor-2.0.16")

    Raptor-2.0.16

-   [Next](redland.md "Redland-1.0.17")

    Redland-1.0.17

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

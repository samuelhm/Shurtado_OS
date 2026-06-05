<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](graphviz.md "Graphviz-15.0.0")

    Graphviz-15.0.0

-   [Next](highlight.md "Highlight-4.20")

    Highlight-4.20

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GTK-Doc-1.36.1 {#gtk-doc-1.36.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GTK-Doc {#introduction-to-gtk-doc}

The <span class="application">GTK-Doc</span> package contains a code documenter. This is useful for extracting specially formatted comments from the code to create API documentation. This package is <span class="emphasis"><em>optional</em></span>; if it is not installed, packages will not build the documentation. This does not mean that you will not have any documentation. If <span class="application">GTK-Doc</span> is not available, the install process will copy any pre-built documentation to your system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtk-doc/1.36/gtk-doc-1.36.1.tar.xz">https://download.gnome.org/sources/gtk-doc/1.36/gtk-doc-1.36.1.tar.xz</a>

-   Download MD5 sum: 819b11aa730cf5108f1df3f0eec91cf9

-   Download size: 584 KB

-   Estimated disk space required: 16 MB (add 2.2 MB for tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### GTK-Doc Dependencies

#### Required

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="python-modules.md#pygments" title="Pygments-2.20.0">Pygments-2.20.0</a>

#### Optional

For tests: <a class="ulink" href="https://sourceforge.net/projects/dblatex/">dblatex</a> or <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> (XML PDF support), <a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>, and Python modules <a class="xref" href="python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>, <a class="ulink" href="https://pypi.org/project/parameterized/">parameterized</a>, and <a class="ulink" href="https://download.gnome.org/sources/yelp-tools">yelp-tools</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The optional python modules above can be easily installed with the <span class="command"><strong>pip3</strong></span> command.
</div>
</div>

<div class="installation" lang="en">
## Installation of GTK-Doc {#installation-of-gtk-doc}

Install <span class="application">GTK-Doc</span> by running the following commands:

```bash
mkdir -p build &&
cd       build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=false      &&
ninja
```

The test suite will hang if the package (or a previous version) is not already installed.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, ensure you have the python module <span class="emphasis"><em>parameterized</em></span> installed, and issue:

```bash
meson configure -D tests=true &&
ninja test
```

Some tests will fail depending on optionally installed packages.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D tests=false`*: prevents building tests. The default is *`true`*, but requires the <span class="emphasis"><em>parameterized</em></span> python module.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gtkdocize, gtkdoc-check, gtkdoc-depscan, gtkdoc-fixxref, gtkdoc-mkdb, gtkdoc-mkhtml, gtkdoc-mkhtml2, gtkdoc-mkman, gtkdoc-mkpdf, gtkdoc-rebase, gtkdoc-scan, and gtkdoc-scangobj</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/GtkDoc, /usr/share/gtk-doc, and /usr/share/help/\*/gtk-doc-manual</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gtkdoc"></a><span class="command"><span class="term"><strong>gtkdoc\</strong>*</span></span>   these are all shell, or <span class="application">Python</span> scripts used by package <code class="filename">Makefile</code> scripts to generate documentation for the package being built
  ---------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](graphviz.md "Graphviz-15.0.0")

    Graphviz-15.0.0

-   [Next](highlight.md "Highlight-4.20")

    Highlight-4.20

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

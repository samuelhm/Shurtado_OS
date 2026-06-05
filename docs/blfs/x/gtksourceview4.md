<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview.md "gtksourceview-3.24.11")

    gtksourceview-3.24.11

-   [Next](gtksourceview5.md "gtksourceview5-5.20.0")

    gtksourceview5-5.20.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gtksourceview4-4.8.4 {#gtksourceview4-4.8.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GtkSourceView {#introduction-to-gtksourceview}

The <span class="application">GtkSourceView</span> package contains libraries used for extending the <span class="application">GTK+</span> text functions to include syntax highlighting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtksourceview/4.8/gtksourceview-4.8.4.tar.xz">https://download.gnome.org/sources/gtksourceview/4.8/gtksourceview-4.8.4.tar.xz</a>

-   Download MD5 sum: 2bf056caaae27654ec3a5930dd5597d3

-   Download size: 1.1 MB

-   Estimated disk space required: 71 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests; both using parallelism=4)
</div>

### GtkSourceView Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> (or <a class="ulink" href="https://sourceforge.net/projects/dblatex/">dblatex</a>), and <a class="ulink" href="https://glade.gnome.org/">Glade</a>
</div>

<div class="installation" lang="en">
## Installation of GtkSourceView {#installation-of-gtksourceview}

Install <span class="application">GtkSourceView</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue <span class="command"><strong>ninja test</strong></span>. The tests need to be run in a graphical environment.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D gtk_doc=true</code>: This option is normally used if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgtksourceview-4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,share,share/gtk-doc/html}/gtksourceview-4</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------
  <a id="libgtksourceview-4"></a><span class="term"><code class="filename">libgtksourceview-4.so</code></span>   contains function extensions for the GtkTextView widget
  -------------------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtksourceview.md "gtksourceview-3.24.11")

    gtksourceview-3.24.11

-   [Next](gtksourceview5.md "gtksourceview5-5.20.0")

    gtksourceview5-5.20.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

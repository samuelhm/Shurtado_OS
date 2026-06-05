<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview4.md "gtksourceview4-4.8.4")

    gtksourceview4-4.8.4

-   [Next](imlib2.md "imlib2-1.12.6")

    imlib2-1.12.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gtksourceview5-5.20.0 {#gtksourceview5-5.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GtkSourceView {#introduction-to-gtksourceview}

The <span class="application">GtkSourceView</span> package contains a library used for extending the <span class="application">GTK</span> text functions to include syntax highlighting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtksourceview/5.20/gtksourceview-5.20.0.tar.xz">https://download.gnome.org/sources/gtksourceview/5.20/gtksourceview-5.20.0.tar.xz</a>

-   Download MD5 sum: 08a754c0b10c05c6e74f77695e6e04ce

-   Download size: 1.2 MB

-   Estimated disk space required: 155 MB

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
</div>

### GtkSourceView Dependencies

#### Required

<a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>, and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>
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

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D documentation=true</code>: Use this switch if you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to generate the API documentation.

<code class="option">-D sysprof=true</code>: Use this switch if you have <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a> installed and wish to build with sysprof profiler support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgtksourceview-5.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gtksourceview-5 and /usr/share/gtksourceview-5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------
  <a id="libgtksourceview-5"></a><span class="term"><code class="filename">libgtksourceview-5.so</code></span>   contains function extensions for the GtkTextView widget
  -------------------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtksourceview4.md "gtksourceview4-4.8.4")

    gtksourceview4-4.8.4

-   [Next](imlib2.md "imlib2-1.12.6")

    imlib2-1.12.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glu.md "GLU-9.0.3")

    GLU-9.0.3

-   [Next](graphene.md "Graphene-1.10.8")

    Graphene-1.10.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GOffice-0.10.61 {#goffice-0.10.61}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GOffice {#introduction-to-goffice}

The <span class="application">GOffice</span> package contains a library of <span class="application">GLib</span>/<span class="application">GTK</span> document centric objects and utilities. This is useful for performing common operations for document centric applications that are conceptually simple, but complex to implement fully. Some of the operations provided by the <span class="application">GOffice</span> library include support for plugins, load/save routines for application documents and undo/redo functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/goffice/0.10/goffice-0.10.61.tar.xz">https://download.gnome.org/sources/goffice/0.10/goffice-0.10.61.tar.xz</a>

-   Download MD5 sum: a8477240f8c358bd0add4abca40e3208

-   Download size: 2.5 MB

-   Estimated disk space required: 83 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
</div>

### GOffice Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>, <a class="xref" href="../general/libgsf.md" title="libgsf-1.14.58">libgsf-1.14.58</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Optional

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="../gnome/gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="ulink" href="https://download.gnome.org/sources/lasem/">Lasem</a>, and <a class="ulink" href="https://www.freedesktop.org/wiki/Software/libspectre">libspectre</a>
</div>

<div class="installation" lang="en">
## Installation of GOffice {#installation-of-goffice}

Install <span class="application">GOffice</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

If you wish to run the tests, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgoffice-0.10.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libgoffice-0.10, /usr/{lib,share}/goffice, and /usr/share/gtk-doc/html/goffice-0.10</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------
  <a id="libgoffice010"></a><span class="term"><code class="filename">libgoffice-0.10.so</code></span>   contains API functions to provide support for document centric objects and utilities
  ------------------------------------------------------------ --------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glu.md "GLU-9.0.3")

    GLU-9.0.3

-   [Next](graphene.md "Graphene-1.10.8")

    Graphene-1.10.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

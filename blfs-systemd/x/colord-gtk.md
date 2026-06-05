<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)")

    libcairomm-1.16 (cairomm-1.18.0)

-   [Next](fltk.md "FLTK-1.4.5")

    FLTK-1.4.5

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# colord-gtk-0.3.1 {#colord-gtk-0.3.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Colord GTK {#introduction-to-colord-gtk}

The <span class="application">Colord GTK</span> package contains <span class="application">GTK+</span> bindings for <span class="application">Colord</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.freedesktop.org/software/colord/releases/colord-gtk-0.3.1.tar.xz">https://www.freedesktop.org/software/colord/releases/colord-gtk-0.3.1.tar.xz</a>

-   Download MD5 sum: d436740c06e42af421384f16b2a9a0a7

-   Download size: 24 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Colord GTK Dependencies

#### Required

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a> and <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build the man page), and <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Colord GTK {#installation-of-colord-gtk}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If building the documentation <span class="command"><strong>ninja -j1</strong></span> must be used.
</div>

Install <span class="application">Colord GTK</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk4=true        \
            -D vapi=true        \
            -D docs=false       \
            -D man=false        \
            ..                  &&
ninja
```

If <a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="../pst/docbook-xsl-ns.md" title="docbook-xsl-ns-1.79.2">docbook-xsl-ns-1.79.2</a>, and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> are installed, build the man page:

```bash
sed '/class="manual"/i \
     <refmiscinfo class="source">colord-gtk</refmiscinfo>' \
    -i ../man/*.xml &&
meson configure -D man=true &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests need to be run from an X session, and may require a color profile for your primary display.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D vapi=true`*: This switch enables building of the Vala bindings. Remove this switch if you don't have <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a> installed.

*`-D gtk4=true`*: This switch enables building the GTK-4 bindings for colord. Set this option to 'false' if you do not have <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> installed.

*`-D docs=false`*: This switch disables building gtk-doc based documentation. Even if gtk-doc is installed, you will need the namespaced versions of the Docbook XSL stylesheets.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cd-convert</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcolord-gtk.so and libcolord-gtk4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/colord-1/colord-gtk and /usr/share/gtk-doc/html/colord-gtk</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------
  <a id="cd-convert"></a><span class="command"><span class="term"><strong>cd-convert</strong></span></span>           is a Color Manager Testing Tool
  <a id="libcolord-gtk"></a><span class="term"><code class="filename">libcolord-gtk.so</code></span>     contains the <span class="application">Colord</span> <span class="application">GTK+</span> bindings
  <a id="libcolord-gtk4"></a><span class="term"><code class="filename">libcolord-gtk4.so</code></span>   contains the <span class="application">Colord</span> <span class="application">GTK-4</span> bindings
  ------------------------------------------------------------ --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cairomm-1.16.md "libcairomm-1.16 (cairomm-1.18.0)")

    libcairomm-1.16 (cairomm-1.18.0)

-   [Next](fltk.md "FLTK-1.4.5")

    FLTK-1.4.5

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

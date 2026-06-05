<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](goffice010.md "GOffice-0.10.61")

    GOffice-0.10.61

-   [Next](gtk3.md "GTK-3.24.52")

    GTK-3.24.52

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Graphene-1.10.8 {#graphene-1.10.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Graphene {#introduction-to-graphene}

The <span class="application">Graphene</span> package provides a thin layer of types for graphics libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/graphene/1.10/graphene-1.10.8.tar.xz">https://download.gnome.org/sources/graphene/1.10/graphene-1.10.8.tar.xz</a>

-   Download MD5 sum: 169e3c507b5a5c26e9af492412070b81

-   Download size: 328 KB

-   Estimated disk space required: 7.6 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Graphene Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)
</div>

<div class="installation" lang="en">
## Installation of Graphene {#installation-of-graphene}

Install <span class="application">Graphene</span> by running the following commands:

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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=true</code>: Use this switch if you have <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to generate the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgraphene-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/graphene-1.0, /usr/lib/graphene-1.0, /usr/{libexec,share}/installed-tests/graphene-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------
  <a id="libgraphene"></a><span class="term"><code class="filename">libgraphene-1.0.so</code></span>   contains functions that provide a thin layer of types for graphics libraries
  ---------------------------------------------------------- ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](goffice010.md "GOffice-0.10.61")

    GOffice-0.10.61

-   [Next](gtk3.md "GTK-3.24.52")

    GTK-3.24.52

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

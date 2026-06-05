<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](glib2.md "GLib-2.88.1")

    GLib-2.88.1

-   [Next](glibmm2.md "GLibmm-2.88.0")

    GLibmm-2.88.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GLibmm-2.66.8 {#glibmm-2.66.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLibmm {#introduction-to-glibmm}

The <span class="application">GLibmm</span> package is a set of C++ bindings for <span class="application">GLib</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/glibmm/2.66/glibmm-2.66.8.tar.xz">https://download.gnome.org/sources/glibmm/2.66/glibmm-2.66.8.tar.xz</a>

-   Download MD5 sum: 4cdcd69c3af84e59dfd745a1b1cb9851

-   Download size: 8.2 MB

-   Estimated disk space required: 90 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with tests)
</div>

### GLibmm Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="libsigc.md" title="libsigc++-2.12.1">libsigc++-2.12.1</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../basicnet/glib-networking.md" title="glib-networking-2.80.1">glib-networking-2.80.1</a> (for tests), <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> (for tests), <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="ulink" href="https://download.gnome.org/sources/mm-common">mm-common</a>
</div>

<div class="installation" lang="en">
## Installation of GLibmm {#installation-of-glibmm}

Install <span class="application">GLibmm</span> by running the following commands:

```bash
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgiomm-2.4.so, libglibmm-2.4.so and libglibmm_generate_extra_defs-2.4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/g{io,lib}mm-2.4 and /usr/include/g{io,lib}mm-2.4</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------
  <a id="libgiomm-2"></a><span class="term"><code class="filename">libgiomm-2.4.so</code></span>     contains the GIO API classes
  <a id="libglibmm-2"></a><span class="term"><code class="filename">libglibmm-2.4.so</code></span>   contains the <span class="application">GLib</span> API classes
  -------------------------------------------------------- -----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glib2.md "GLib-2.88.1")

    GLib-2.88.1

-   [Next](glibmm2.md "GLibmm-2.88.0")

    GLibmm-2.88.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

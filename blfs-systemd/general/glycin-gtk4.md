<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glycin.md "glycin-2.1.1")

    glycin-2.1.1

-   [Next](graphite2.md "Graphite2-1.3.14")

    Graphite2-1.3.14

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libglycin-gtk4 from glycin-2.1.1 {#libglycin-gtk4-from-glycin-2.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libglycin-gtk4 {#introduction-to-libglycin-gtk4}

The <code class="systemitem">libglycin-gtk4</code> library provides GTK-4 integration for <a class="xref" href="glycin.md" title="glycin-2.1.1">glycin-2.1.1</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz">https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz</a>

-   Download MD5 sum: 411550c5da777a952bb6c811fd882156

-   Download size: 6.8 MB

-   Estimated disk space required: 670 MB (with documentation)

-   Estimated build time: 2.0 SBU (with documentation)
</div>

### glycin Dependencies

#### Required

<a class="xref" href="glycin.md" title="glycin-2.1.1">glycin-2.1.1</a> and <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>

#### Recommended

<a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libglycin-gtk4 {#installation-of-libglycin-gtk4}

Install <code class="systemitem">libglycin-gtk4</code> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr               \
            --buildtype=release         \
            -D libglycin=false          \
            -D libglycin-gtk4=true      \
            -D glycin-loaders=false     \
            -D glycin-thumbnailer=false &&
ninja
```

If you have installed <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, you can build the documentation by issuing:

```bash
sed "/install_dir:.*doc/s|,$| / 'glycin-' + meson.project_version()&|" \
    -i ../libglycin/meson.build &&

meson configure -D capi_docs=true &&
ninja
```

This package does not come with a test suite.

Now as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D *=false`*: These parameters disable the components already installed as a part of <a class="xref" href="glycin.md" title="glycin-2.1.1">glycin-2.1.1</a>.

<code class="option">-D vapi=false</code>: This option allows building this package without <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Library:** <span class="segbody">libglycin-gtk4-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/glycin-gtk4-2 and /usr/share/doc/glycin-2.1.1/libglycin-gtk-2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------------------------------------
  <a id="libglycin-gtk4-2"></a><span class="term"><code class="filename">libglycin-gtk4-2.so</code></span>   provides API functions to convert glycin frames to GDK 4 textures
  ---------------------------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glycin.md "glycin-2.1.1")

    glycin-2.1.1

-   [Next](graphite2.md "Graphite2-1.3.14")

    Graphite2-1.3.14

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

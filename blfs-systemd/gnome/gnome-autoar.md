<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gjs.md "Gjs-1.88.0")

    Gjs-1.88.0

-   [Next](gnome-desktop.md "gnome-desktop-44.5")

    gnome-desktop-44.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-autoar-0.4.5 {#gnome-autoar-0.4.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gnome-autoar {#introduction-to-gnome-autoar}

The <span class="application">gnome-autoar</span> package provides a framework for automatic archive extraction, compression, and management.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-autoar/0.4/gnome-autoar-0.4.5.tar.xz">https://download.gnome.org/sources/gnome-autoar/0.4/gnome-autoar-0.4.5.tar.xz</a>

-   Download MD5 sum: c8028c4df62c059418d4bdcde345cbe2

-   Download size: 52 KB

-   Estimated disk space required: 2.8 MB

-   Estimated build time: 0.1 SBU
</div>

### gnome-autoar Dependencies

#### Required

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for building documentation)
</div>

<div class="installation" lang="en">
## Installation of gnome-autoar {#installation-of-gnome-autoar}

Install <span class="application">gnome-autoar</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D vapi=true        \
            -D tests=true       \
            ..                  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=true</code>: Use this parameter if GTK-Doc is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgnome-autoar-0.so and libgnome-autoar-gtk-0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gnome-autoar-0 and /usr/share/gtk-doc/html/gnome-autoar</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------
  <a id="libgnome-autoar-0"></a><span class="term"><code class="filename">libgnome-autoar-0.so</code></span>           provides API functions for automatic archive management
  <a id="libgnome-autoar-gtk-0"></a><span class="term"><code class="filename">libgnome-autoar-gtk-0.so</code></span>   provides GTK+ widgets to aid in automatic archive management
  -------------------------------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gjs.md "Gjs-1.88.0")

    Gjs-1.88.0

-   [Next](gnome-desktop.md "gnome-desktop-44.5")

    gnome-desktop-44.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

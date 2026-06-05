<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](localsearch.md "localsearch-3.11.1")

    localsearch-3.11.1

-   [Next](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0")

    xdg-desktop-portal-gnome-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GSound-1.0.3 {#gsound-1.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GSound {#introduction-to-gsound}

The <span class="application">gsound</span> package contains a small library for playing system sounds.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gsound/1.0/gsound-1.0.3.tar.xz">https://download.gnome.org/sources/gsound/1.0/gsound-1.0.3.tar.xz</a>

-   Download MD5 sum: 7338c295034432a6e782fd20b3d04b68

-   Download size: 24 KB

-   Estimated disk space required: 864 KB

-   Estimated build time: less than 0.1 SBU
</div>

### gsound Dependencies

#### Required

<a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for generating documentation)
</div>

<div class="installation" lang="en">
## Installation of GSound {#installation-of-gsound}

Install <span class="application">gsound</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gsound-play</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgsound.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gtk-doc/html/gsound</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------
  <a id="gsound-play"></a><span class="command"><span class="term"><strong>gsound-play</strong></span></span>   plays system sounds through the libgsound interface
  <a id="libgsound"></a><span class="term"><code class="filename">libgsound.so</code></span>       contains API functions for playing system sounds
  ------------------------------------------------------ -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](localsearch.md "localsearch-3.11.1")

    localsearch-3.11.1

-   [Next](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0")

    xdg-desktop-portal-gnome-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

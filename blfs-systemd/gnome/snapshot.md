<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](showtime.md "Showtime-49.1")

    Showtime-49.1

-   [Next](../xfce/xfce.md "Xfce")

    Xfce

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Snapshot-50.0 {#snapshot-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Snapshot {#introduction-to-snapshot}

The <span class="application">Snapshot</span> package contains a program that takes pictures and videos from a Webcam.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/snapshot/50/snapshot-50.0.tar.xz">https://download.gnome.org/sources/snapshot/50/snapshot-50.0.tar.xz</a>

-   Download MD5 sum: e3f37e058449601e2813e91b486c307f

-   Download size: 7.9 MB

-   Estimated disk space required: 1.0 GB (5.6 MB installed)

-   Estimated build time: 1.1 SBU (Using parallelism-4)
</div>

### Snapshot Dependencies

#### Required

<a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../multimedia/gst10-plugins-bad.md" title="gst-plugins-bad-1.28.3">gst-plugins-bad-1.28.3</a>, and <a class="xref" href="../general/rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

#### Required at runtime

libgstgtk4 (from <a class="xref" href="../multimedia/gst-plugins-rs.md" title="gst-plugins-rs-1.28.3">gst-plugins-rs-1.28.3</a>), <a class="xref" href="../multimedia/pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>, <a class="xref" href="xdg-desktop-portal-gnome.md" title="xdg-desktop-portal-gnome-50.0">xdg-desktop-portal-gnome-50.0</a>, and <a class="xref" href="../general/xdg-user-dirs.md" title="Xdg-user-dirs-0.20">Xdg-user-dirs-0.20</a>
</div>

<div class="installation" lang="en">
## Installation of Snapshot {#installation-of-snapshot}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package takes a long time to build because LTO is enabled, and the LTO pass is not parallelized.
</div>

Install <span class="application">Snapshot</span> by running the following commands:

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
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">snapshot</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/snapshot</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------
  <a id="snapshot-prog"></a><span class="command"><span class="term"><strong>snapshot</strong></span></span>   is a program used to take pictures and videos from a Webcam
  ----------------------------------------------------- -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](showtime.md "Showtime-49.1")

    Showtime-49.1

-   [Next](../xfce/xfce.md "Xfce")

    Xfce

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

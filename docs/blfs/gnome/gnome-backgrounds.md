<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](dconf.md "DConf-0.49.0 / DConf-Editor-49.0")

    DConf-0.49.0 / DConf-Editor-49.0

-   [Next](gvfs.md "Gvfs-1.60.0")

    Gvfs-1.60.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-backgrounds-50.0 {#gnome-backgrounds-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Backgrounds {#introduction-to-gnome-backgrounds}

The <span class="application">GNOME Backgrounds</span> package contains a collection of graphics files which can be used as backgrounds in the <span class="application">GNOME</span> Desktop environment. Additionally, the package creates the proper framework and directory structure so that you can add your own files to the collection.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-backgrounds/50/gnome-backgrounds-50.0.tar.xz">https://download.gnome.org/sources/gnome-backgrounds/50/gnome-backgrounds-50.0.tar.xz</a>

-   Download MD5 sum: d44377b504366839bc17a70820d78413

-   Download size: 38 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Backgrounds Dependencies

#### Required at runtime

<a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Backgrounds {#installation-of-gnome-backgrounds}

Install <span class="application">GNOME Backgrounds</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr ..
```

This package does not come with a test suite.

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
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/backgrounds/gnome and /usr/share/gnome-background-properties</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------- -------------------------------------------------------------
  <span class="term"><code class="filename">GNOME Backgrounds</code></span>   are background images for the <span class="application">GNOME</span> Desktop
  ----------------------------------------- -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dconf.md "DConf-0.49.0 / DConf-Editor-49.0")

    DConf-0.49.0 / DConf-Editor-49.0

-   [Next](gvfs.md "Gvfs-1.60.0")

    Gvfs-1.60.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

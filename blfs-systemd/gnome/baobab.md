<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](applications.md "GNOME Applications")

    GNOME Applications

-   [Next](brasero.md "Brasero-3.12.3")

    Brasero-3.12.3

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Baobab-50.0 {#baobab-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Baobab {#introduction-to-baobab}

The <span class="application">Baobab</span> package contains a graphical directory tree analyzer.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/baobab/50/baobab-50.0.tar.xz">https://download.gnome.org/sources/baobab/50/baobab-50.0.tar.xz</a>

-   Download MD5 sum: f6f4649a945ca419d8261236fa2c7de2

-   Download size: 604 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
</div>

### Baobab Dependencies

#### Required

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of Baobab {#installation-of-baobab}

Install <span class="application">Baobab</span> by running the following commands:

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
**Installed Program:** <span class="segbody">baobab</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/help/\*/baobab</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ------------------------------------------------
  <a id="baobab-prog"></a><span class="command"><span class="term"><strong>baobab</strong></span></span>   is a graphical tool used to analyze disk usage
  ------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](applications.md "GNOME Applications")

    GNOME Applications

-   [Next](brasero.md "Brasero-3.12.3")

    Brasero-3.12.3

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

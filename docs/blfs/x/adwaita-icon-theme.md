<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](icons.md "Icons")

    Icons

-   [Next](breeze-icons.md "breeze-icons-6.26.0")

    breeze-icons-6.26.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# adwaita-icon-theme-50.0 {#adwaita-icon-theme-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Adwaita Icon Theme {#introduction-to-adwaita-icon-theme}

The <span class="application">Adwaita Icon Theme</span> package contains an icon theme for <span class="application">GTK+ 3</span> and <span class="application">GTK 4</span> applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/adwaita-icon-theme/50/adwaita-icon-theme-50.0.tar.xz">https://download.gnome.org/sources/adwaita-icon-theme/50/adwaita-icon-theme-50.0.tar.xz</a>

-   Download MD5 sum: a03d8d68377a88fcf06e090ba6a6ec2f

-   Download size: 4.3 MB

-   Estimated disk space required: 31 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Adwaita Icon Theme Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> or <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, and <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>
</div>

<div class="installation" lang="en">
## Installation of Adwaita Icon Theme {#installation-of-adwaita-icon-theme}

Install <span class="application">Adwaita Icon Theme</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

This package does not come with a test suite.

Remove any old icons and install the new ones. As the <code class="systemitem">root</code> user:

```bash
rm -rf /usr/share/icons/Adwaita/ &&
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
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/icons/Adwaita</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](icons.md "Icons")

    Icons

-   [Next](breeze-icons.md "breeze-icons-6.26.0")

    breeze-icons-6.26.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

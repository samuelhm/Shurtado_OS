<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](breeze-icons.md "breeze-icons-6.26.0")

    breeze-icons-6.26.0

-   [Next](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0")

    gnome-icon-theme-extras-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-icon-theme-3.12.0 {#gnome-icon-theme-3.12.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Icon Theme {#introduction-to-gnome-icon-theme}

The <span class="application">GNOME Icon Theme</span> package contains an assortment of non-scalable icons of different sizes and themes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-icon-theme/3.12/gnome-icon-theme-3.12.0.tar.xz">https://download.gnome.org/sources/gnome-icon-theme/3.12/gnome-icon-theme-3.12.0.tar.xz</a>

-   Download MD5 sum: f14bed7f804e843189ffa7021141addd

-   Download size: 17 MB

-   Estimated disk space required: 85 MB

-   Estimated build time: 0.5 SBU
</div>

### GNOME Icon Theme Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>, <a class="xref" href="icon-naming-utils.md" title="icon-naming-utils-0.8.90">icon-naming-utils-0.8.90</a>, and <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Icon Theme {#installation-of-gnome-icon-theme}

Install <span class="application">GNOME Icon Theme</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Directory:** <span class="segbody">/usr/share/icons/gnome</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](breeze-icons.md "breeze-icons-6.26.0")

    breeze-icons-6.26.0

-   [Next](gnome-icon-theme-extras.md "gnome-icon-theme-extras-3.12.0")

    gnome-icon-theme-extras-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

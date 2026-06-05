<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0")

    gnome-icon-theme-symbolic-3.12.0

-   [Next](hicolor-icon-theme.md "hicolor-icon-theme-0.18")

    hicolor-icon-theme-0.18

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-themes-extra-3.28 {#gnome-themes-extra-3.28}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Themes Extra {#introduction-to-gnome-themes-extra}

The <span class="application">GNOME Themes Extra</span> package, formerly known as <span class="application">GNOME Themes Standard</span>, contains various components of the default <span class="application">GNOME</span> theme.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz">https://download.gnome.org/sources/gnome-themes-extra/3.28/gnome-themes-extra-3.28.tar.xz</a>

-   Download MD5 sum: f9f2c6c521948da427f702372e16f826

-   Download size: 2.8 MB

-   Estimated disk space required: 40 MB

-   Estimated build time: 0.3 SBU
</div>

### GNOME Themes Extra Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> with <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, and <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Themes Extra {#installation-of-gnome-themes-extra}

Install <span class="application">GNOME Themes Extra</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-gtk2-engine &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-gtk2-engine`*: This switch disables the GTK+-2 theming engine because GTK+-2 is no longer part of BLFS.

<code class="option">--disable-gtk3-engine</code>: This switch disables the GTK+-3 theming engine.
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
**Installed Directories:** <span class="segbody">/usr/share/icons/HighContrast, /usr/share/themes/Adwaita, /usr/share/themes/Adwaita-dark, and /usr/share/themes/HighContrast</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0")

    gnome-icon-theme-symbolic-3.12.0

-   [Next](hicolor-icon-theme.md "hicolor-icon-theme-0.18")

    hicolor-icon-theme-0.18

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

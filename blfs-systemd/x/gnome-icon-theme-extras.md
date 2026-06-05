<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](gnome-icon-theme.md "gnome-icon-theme-3.12.0")

    gnome-icon-theme-3.12.0

-   [Next](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0")

    gnome-icon-theme-symbolic-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-icon-theme-extras-3.12.0 {#gnome-icon-theme-extras-3.12.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Icon Theme Extras {#introduction-to-gnome-icon-theme-extras}

The <span class="application">GNOME Icon Theme Extras</span> package contains extra icons for the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-icon-theme-extras/3.12/gnome-icon-theme-extras-3.12.0.tar.xz">https://download.gnome.org/sources/gnome-icon-theme-extras/3.12/gnome-icon-theme-extras-3.12.0.tar.xz</a>

-   Download MD5 sum: 91f8f7e35a3d8d926716d88b8b1e9a29

-   Download size: 1.7 MB

-   Estimated disk space required: 12 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Icon Theme Extras Dependencies

#### Required

<a class="xref" href="gnome-icon-theme.md" title="gnome-icon-theme-3.12.0">gnome-icon-theme-3.12.0</a>

#### Optional

<a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="../xsoft/inkscape.md" title="Inkscape-1.4.4">Inkscape-1.4.4</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Icon Theme Extras {#installation-of-gnome-icon-theme-extras}

Install <span class="application">GNOME Icon Theme Extras</span> by running the following commands:

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
</div>

<div class="navfooter">
-   [Prev](gnome-icon-theme.md "gnome-icon-theme-3.12.0")

    gnome-icon-theme-3.12.0

-   [Next](gnome-icon-theme-symbolic.md "gnome-icon-theme-symbolic-3.12.0")

    gnome-icon-theme-symbolic-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

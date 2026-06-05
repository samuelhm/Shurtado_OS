<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4")

    xdg-desktop-portal-1.20.4

-   [Next](dm.md "Display Managers")

    Display Managers

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-desktop-portal-gtk-1.15.3 {#xdg-desktop-portal-gtk-1.15.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-desktop-portal-gtk {#introduction-to-xdg-desktop-portal-gtk}

<span class="application">xdg-desktop-portal-gtk</span> is a backend for <span class="application">xdg-desktop-portal</span>, that is using GTK and various pieces of GNOME infrastructure.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz">https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/1.15.3/xdg-desktop-portal-gtk-1.15.3.tar.xz</a>

-   Download MD5 sum: 2d6e2ad2953c386a1db11618fa3803b0

-   Download size: 96 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: 0.1 SBU
</div>

### xdg-desktop-portal-gtk Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a>

#### Recommended

<a class="xref" href="../gnome/gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a> (for compiling more portal interfaces)
</div>

<div class="installation" lang="en">
## Installation of xdg-desktop-portal-gtk {#installation-of-xdg-desktop-portal-gtk}

Install <span class="application">xdg-desktop-portal-gtk</span> by running the following commands:

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

<code class="option">-D wallpaper=disabled</code>: Use this option if you have not installed the recommended dependency <a class="xref" href="../gnome/gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">one daemon in /usr/libexec</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="application">/usr/share/xdg-desktop-portal (if no other <span class="segbody">xdg-desktop-portal</span> backend is installed)</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4")

    xdg-desktop-portal-1.20.4

-   [Next](dm.md "Display Managers")

    Display Managers

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

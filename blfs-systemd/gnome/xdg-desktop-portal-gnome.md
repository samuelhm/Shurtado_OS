<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gsound.md "GSound-1.0.3")

    GSound-1.0.3

-   [Next](dconf.md "DConf-0.49.0 / DConf-Editor-49.0")

    DConf-0.49.0 / DConf-Editor-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-desktop-portal-gnome-50.0 {#xdg-desktop-portal-gnome-50.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-desktop-portal-gnome {#introduction-to-xdg-desktop-portal-gnome}

<span class="application">xdg-desktop-portal-gnome</span> is a backend for <span class="application">xdg-desktop-portal</span> which uses GTK and various pieces of GNOME infrastructure.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.0.tar.xz">https://download.gnome.org/sources/xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.0.tar.xz</a>

-   Download MD5 sum: 6ef350f31272babbb536cc745746adad

-   Download size: 196 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
</div>

### xdg-desktop-portal-gnome Dependencies

#### Required

<a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../x/xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a>, and <a class="xref" href="../x/xdg-desktop-portal-gtk.md" title="xdg-desktop-portal-gtk-1.15.3">xdg-desktop-portal-gtk-1.15.3</a> (at runtime)

#### Recommended at Runtime

<a class="xref" href="nautilus.md" title="Nautilus-50.2.2">Nautilus-50.2.2</a> (for the File Chooser portal)
</div>

<div class="installation" lang="en">
## Installation of xdg-desktop-portal-gnome {#installation-of-xdg-desktop-portal-gnome}

Install <span class="application">xdg-desktop-portal-gnome</span> by running the following commands:

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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>
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
-   [Prev](gsound.md "GSound-1.0.3")

    GSound-1.0.3

-   [Next](dconf.md "DConf-0.49.0 / DConf-Editor-49.0")

    DConf-0.49.0 / DConf-Editor-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

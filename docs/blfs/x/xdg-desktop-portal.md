<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](webkitgtk.md "WebKitGTK-2.52.0")

    WebKitGTK-2.52.0

-   [Next](xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3")

    xdg-desktop-portal-gtk-1.15.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-desktop-portal-1.20.4 {#xdg-desktop-portal-1.20.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-desktop-portal {#introduction-to-xdg-desktop-portal}

<span class="application">xdg-desktop-portal</span> is a D-Bus service that allows applications to interact with the desktop in a safe way. Several aspects of desktop interaction, like file chooser, desktop style, etc are implemented in different D-Bus APIs, known as <span class="emphasis"><em>portals</em></span>. Sandboxed applications benefit the most from this service since they don't need special permissions to use the portal APIs, but any application can use it. <span class="application">xdg-desktop-portal</span> safeguards many resources and features with a user-controlled permission system. This service needs a backend implementing desktop-specific portal interfaces.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/flatpak/xdg-desktop-portal/releases/download/1.20.4/xdg-desktop-portal-1.20.4.tar.xz">https://github.com/flatpak/xdg-desktop-portal/releases/download/1.20.4/xdg-desktop-portal-1.20.4.tar.xz</a>

-   Download MD5 sum: d0ed229846b14d6c4cd252245f9a7970

-   Download size: 1.2 MB

-   Estimated disk space required: 32 MB (add 3 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for tests; with parallelism=4)
</div>

### xdg-desktop-portal Dependencies

#### Required

<a class="xref" href="../postlfs/fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../multimedia/pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>, and <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (at runtime). Furthermore, a backend is needed at runtime for this package to be of any use, either <a class="xref" href="xdg-desktop-portal-gtk.md" title="xdg-desktop-portal-gtk-1.15.3">xdg-desktop-portal-gtk-1.15.3</a> or <a class="xref" href="../gnome/xdg-desktop-portal-gnome.md" title="xdg-desktop-portal-gnome-50.0">xdg-desktop-portal-gnome-50.0</a> or <a class="xref" href="../lxqt/xdg-desktop-portal-lxqt.md" title="xdg-desktop-portal-lxqt-1.4.0">xdg-desktop-portal-lxqt-1.4.0</a>

#### Recommended

<a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> and <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (for building the manual pages)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although there is an option to build the package without <span class="application">bubblewrap</span>, upstream developers and LFS editors alike highly recommend to not use this possibility, as it will create a large security issue.
</div>

#### Optional

<a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a> (for the <span class="quote">“<span class="quote">location</span>”</span> portal), and <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> with <a class="xref" href="../general/libportal.md" title="libportal-0.9.1">libportal-0.9.1</a>, <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a>, and <a class="xref" href="../general/umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for running tests)

#### Optional (for building the documentation)

<a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> with <a class="ulink" href="https://pypi.org/project/sphinxext-opengraph/">sphinxext.opengraph</a>, <a class="ulink" href="https://pypi.org/project/sphinx-copybutton/">sphinx_copybutton</a>, <a class="ulink" href="https://pypi.org/project/furo/">furo</a>, and <a class="ulink" href="https://github.com/flatpak/flatpak">flatpak</a>
</div>

<div class="installation" lang="en">
## Installation of xdg-desktop-portal {#installation-of-xdg-desktop-portal}

Install <span class="application">xdg-desktop-portal</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D tests=disabled .. &&
ninja
```

If the optional dependencies are installed, you can test the results by running:

```bash
meson configure -D tests=enabled &&
ninja test
```

Without the external dependencies one test, integration/dynamiclauncher is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D tests=disabled`*: Prevents requiring several optional dependencies that are only needed for tests.
</div>

<div class="configuration" lang="en">
## Configuring xdg-desktop-portal {#configuring-xdg-desktop-portal}

<div class="sect3" lang="en">
### Config Files {#config-files}

The main configuration files are <code class="filename">~/.config/xdg-desktop-portal/portals.conf</code>, <code class="filename">/etc/xdg-desktop-portal/portals.conf</code>, and <code class="filename">/usr/share/xdg-desktop-portal/portals.conf</code>. Several other locations can be searched for configuration files. See <a class="ulink" href="https://man.archlinux.org/man/portals.conf.5">portals.conf(5)</a>.
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The various configuration files are used to choose the backend depending of various conditions. See <a class="ulink" href="https://man.archlinux.org/man/portals.conf.5">portals.conf(5)</a> for details.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">several daemons in /usr/libexec</span>
</div>

<div class="seg">
**Installed Librar(y,ies):** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Director(y,ies):** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](webkitgtk.md "WebKitGTK-2.52.0")

    WebKitGTK-2.52.0

-   [Next](xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3")

    xdg-desktop-portal-gtk-1.15.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0")

    xdg-desktop-portal-gnome-50.0

-   [Next](gnome-backgrounds.md "gnome-backgrounds-50.0")

    gnome-backgrounds-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# DConf-0.49.0 / DConf-Editor-49.0 {#dconf-0.49.0-dconf-editor-49.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to DConf {#introduction-to-dconf}

The <span class="application">DConf</span> package contains a low-level configuration system. Its main purpose is to provide a backend to GSettings on platforms that don't already have configuration storage systems.

The <span class="application">DConf-Editor</span>, as the name suggests, is a graphical editor for the <span class="application">DConf</span> database. Installation is optional, because <span class="command"><strong>gsettings</strong></span> from <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> provides similar functionality on the commandline.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/dconf/0.49/dconf-0.49.0.tar.xz">https://download.gnome.org/sources/dconf/0.49/dconf-0.49.0.tar.xz</a>

-   Download MD5 sum: 1a3ff8a464a4d9ebbaf112005bfed95a

-   Download size: 124 KB

-   Estimated disk space required: 9.7 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/dconf-editor/49/dconf-editor-49.0.tar.xz">https://download.gnome.org/sources/dconf-editor/49/dconf-editor-49.0.tar.xz</a>

-   Download MD5 sum: a1fa0f26ceffdcdb84d16c1b079a65a7

-   Download size: 640 KB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU
</div>

### DConf Dependencies

#### Required

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for the editor), <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a> (for the editor), and <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> (for the editor)

#### Recommended

<a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a>
</div>

<div class="installation" lang="en">
## Installation of DConf {#installation-of-dconf}

Install <span class="application">DConf</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D bash_completion=false \
            ..                       &&
ninja
```

To test the results, issue: <span class="command"><strong>dbus-run-session ninja test</strong></span>

As the <code class="systemitem">root</code> user:

```bash
ninja install
```

Now, optionally install the editor:

```bash
cd ..              &&
tar -xf ../dconf-editor-49.0.tar.xz &&
cd dconf-editor-49.0                &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

As the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=true</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dconf and dconf-editor</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdconf.so and libdconfsettings.so (GIO Module installed in <code class="filename">/usr/lib/gio/modules</code>)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,share/gtk-doc/html}/dconf</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------
  <a id="dconf-prog"></a><span class="command"><span class="term"><strong>dconf</strong></span></span>            is a simple tool for manipulating the <span class="application">DConf</span> database
  <a id="dconf-editor"></a><span class="command"><span class="term"><strong>dconf-editor</strong></span></span>   is a graphical program for editing the <span class="application">DConf</span> database
  <a id="libdconf"></a><span class="term"><code class="filename">libdconf.so</code></span>           contains the <span class="application">DConf</span> client API functions
  -------------------------------------------------------- -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0")

    xdg-desktop-portal-gnome-50.0

-   [Next](gnome-backgrounds.md "gnome-backgrounds-50.0")

    gnome-backgrounds-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

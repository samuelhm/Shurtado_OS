<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libpaper.md "libpaper-2.2.8")

    libpaper-2.2.8

-   [Next](libproxy.md "libproxy-0.5.12")

    libproxy-0.5.12

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libportal-0.9.1 {#libportal-0.9.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libportal {#introduction-to-libportal}

The <span class="application">libportal</span> package provides a library that contains GIO-style async APIs for most Flatpak portals.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/flatpak/libportal/releases/download/0.9.1/libportal-0.9.1.tar.xz">https://github.com/flatpak/libportal/releases/download/0.9.1/libportal-0.9.1.tar.xz</a>

-   Download MD5 sum: 0c63ee25d2e2986ce4df544fe8149046

-   Download size: 108 KB

-   Estimated disk space required: 4.0 MB (with tests; add 9 MB for docs)

-   Estimated build time: less than 0.1 SBU (add 0.6 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libportal-0.9.1-qt6.9_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libportal-0.9.1-qt6.9_fixes-1.patch</a>
</div>

### libportal Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Recommended

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>

#### Recommended (Runtime)

To make this package really useful, install <a class="xref" href="../x/xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a>, <a class="xref" href="../x/xdg-desktop-portal-gtk.md" title="xdg-desktop-portal-gtk-1.15.3">xdg-desktop-portal-gtk-1.15.3</a>, <a class="xref" href="../gnome/xdg-desktop-portal-gnome.md" title="xdg-desktop-portal-gnome-50.0">xdg-desktop-portal-gnome-50.0</a> (if running a GNOME desktop environment), and <a class="xref" href="../lxqt/xdg-desktop-portal-lxqt.md" title="xdg-desktop-portal-lxqt-1.4.0">xdg-desktop-portal-lxqt-1.4.0</a> (if running a LXQt desktop environment). They are not needed if only using this package to satisfy a build dependency.

#### Optional

<a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (for documentation), <a class="xref" href="python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> and <a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> (for testing), <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of libportal {#installation-of-libportal}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of libportal is installed, move the headers out of the way so that later packages do not encounter conflicts (as the <code class="systemitem">root</code> user):

```bash
if [ -e /usr/include/libportal ]; then
    rm -rf /usr/include/libportal.old &&
    mv -vf /usr/include/libportal{,.old}
fi
```
</div>

First, apply a patch to fix building against Qt 6.9 and later:

```bash
patch -Np1 -i ../libportal-0.9.1-qt6.9_fixes-1.patch
```

Install <span class="application">libportal</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D vapi=false       \
            -D docs=false       \
            .. &&
ninja
```

If you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -i "/output/s/-1/-0.9.1/" ../doc/meson.build &&
meson configure -D docs=true                     &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Note that additional <code class="filename">dbus-daemon</code> processes may need to be killed after the tests are run.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D vapi=false`*: This parameter disables using <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>. Remove this parameter if you have it installed.

*`-D docs=false`*: Allow building this package without <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libportal.so, libportal-gtk3.so, libportal-gtk4.so, and libportal-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libportal and /usr/share/gtk-doc/html/libportal</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------
  <a id="libportal-lib"></a><span class="term"><code class="filename">libportal.so</code></span>         provides GIO-style async APIs for most Flatpak portals
  <a id="libportal-gtk3"></a><span class="term"><code class="filename">libportal-gtk3.so</code></span>   provides GTK+-3 specific functions for interacting with Flatpak portals
  <a id="libportal-gtk4"></a><span class="term"><code class="filename">libportal-gtk4.so</code></span>   provides GTK-4 specific functions for interacting with Flatpak portals
  <a id="libportal-qt6"></a><span class="term"><code class="filename">libportal-qt6.so</code></span>     provides Qt6-specific functions for interacting with Flatpak portals
  ------------------------------------------------------------ -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpaper.md "libpaper-2.2.8")

    libpaper-2.2.8

-   [Next](libproxy.md "libproxy-0.5.12")

    libproxy-0.5.12

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

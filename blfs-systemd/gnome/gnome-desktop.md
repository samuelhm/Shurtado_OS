<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-autoar.md "gnome-autoar-0.4.5")

    gnome-autoar-0.4.5

-   [Next](gnome-menus.md "gnome-menus-3.38.1")

    gnome-menus-3.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-desktop-44.5 {#gnome-desktop-44.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Desktop {#introduction-to-gnome-desktop}

The <span class="application">GNOME Desktop</span> package contains a library that provides an API shared by several applications on the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-desktop/44/gnome-desktop-44.5.tar.xz">https://download.gnome.org/sources/gnome-desktop/44/gnome-desktop-44.5.tar.xz</a>

-   Download MD5 sum: d99550c41db721f4a7f302bd95eef5c2

-   Download size: 748 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.3 SBU
</div>

### GNOME Desktop Dependencies

#### Required

<a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, and <a class="xref" href="../x/xkeyboard-config.md" title="XKeyboardConfig-2.47">xkeyboard-config-2.47</a>

#### Recommended

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../general/bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> (needed for thumbnailers in Nautilus), and <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, and <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Desktop {#installation-of-gnome-desktop}

Install <span class="application">GNOME Desktop</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr         \
            --buildtype=release   \
            -D desktop_docs=false \
            ..                    &&
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

*`-D desktop_docs=false`*: This allows building the package without <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a> by disabling the installation of the copies and translations of the GNU FDL, GPL, and LGPL licenses.

<code class="option">-D build_gtk4=false</code>: Use this option if you wish to build this package without <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> installed. Note that it will likely cause GTK-4 applications depending on this package fail to build.

<code class="option">-D legacy_library=false</code>: Use this option if you wish to build this package without <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed. Note that it will likely cause GTK-3 applications depending on this package fail to build.

<code class="option">-D gtk_doc=true</code>: Use this parameter if you wish to build the API documentation.

<code class="option">-D installed_tests=true</code>: Use this parameter you wish to enable the installed tests.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgnome-bg-4.so, libgnome-desktop-3.so, libgnome-desktop-4.so, and libgnome-rr-4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gnome-desktop-3.0, /usr/include/gnome-desktop-4.0, /usr/libexec/gnome-desktop-debug, /usr/share/gtk-doc/html/gnome-desktop3 (optional), and /usr/share/help/\*/{fdl,gpl,lgpl} (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -------------------------------------------------------------------------
  <a id="libgnome-desktop-3"></a><span class="term"><code class="filename">libgnome-desktop-3.so</code></span>   contains functions shared by several <span class="application">GNOME</span> applications
  -------------------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-autoar.md "gnome-autoar-0.4.5")

    gnome-autoar-0.4.5

-   [Next](gnome-menus.md "gnome-menus-3.38.1")

    gnome-menus-3.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

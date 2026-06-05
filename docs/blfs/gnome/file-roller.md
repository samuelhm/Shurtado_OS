<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](evolution.md "Evolution-3.60.2")

    Evolution-3.60.2

-   [Next](gnome-calculator.md "gnome-calculator-50.0")

    gnome-calculator-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# File-Roller-44.6 {#file-roller-44.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to File Roller {#introduction-to-file-roller}

<span class="application">File Roller</span> is an archive manager for <span class="application">GNOME</span> with support for tar, bzip2, bzip3, gzip, zip, jar, compress, lzop, zstd, dmg, and many other archive formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">File Roller</span> is only a graphical interface to archiving utilities such as <span class="application">tar</span> and <span class="application">zip</span>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/file-roller/44/file-roller-44.6.tar.xz">https://download.gnome.org/sources/file-roller/44/file-roller-44.6.tar.xz</a>

-   Download MD5 sum: 74cec9801d26a64a856d2d82b19d9d7c

-   Download size: 1.0 MB

-   Estimated disk space required: 21 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### File Roller Dependencies

#### Required

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> and <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>

#### Recommended

<a class="xref" href="../general/cpio.md" title="cpio-2.15">cpio-2.15</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../general/libportal.md" title="libportal-0.9.1">libportal-0.9.1</a>, and <a class="xref" href="nautilus.md" title="Nautilus-50.2.2">Nautilus-50.2.2</a>

#### Optional (for the API documentation)

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>

#### Optional (Runtime)

<a class="xref" href="../general/unrar.md" title="UnRar-7.2.4">UnRar-7.2.4</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a>, and <a class="ulink" href="https://github.com/MacPaw/XADMaster">unarchiver</a>
</div>

<div class="installation" lang="en">
## Installation of File Roller {#installation-of-file-roller}

Install <span class="application">File Roller</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D packagekit=false \
            ..                  &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
chmod -v 0755 /usr/libexec/file-roller/isoinfo.sh
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D packagekit=false`*: This switch disables the use of PackageKit which isn't suitable for BLFS.

<code class="option">-D api_docs=enabled</code>: Use this switch if you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to generate the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">file-roller</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnautilus-fileroller.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{libexec,share{,/help/\*}}/file-roller</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- -------------------------------------------------
  <a id="file-roller-prog"></a><span class="command"><span class="term"><strong>file-roller</strong></span></span>   is an archive manager for <span class="application">GNOME</span>
  ----------------------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](evolution.md "Evolution-3.60.2")

    Evolution-3.60.2

-   [Next](gnome-calculator.md "gnome-calculator-50.0")

    gnome-calculator-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

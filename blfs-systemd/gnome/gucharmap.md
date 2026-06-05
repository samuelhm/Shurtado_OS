<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-weather.md "gnome-weather-48.0")

    gnome-weather-48.0

-   [Next](loupe.md "Loupe-49.2")

    Loupe-49.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gucharmap-17.0.2 {#gucharmap-17.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gucharmap {#introduction-to-gucharmap}

<span class="application">Gucharmap</span> is a Unicode character map and font viewer. It allows you to browse through all the available Unicode characters and categories for the installed fonts, and to examine their detailed properties. It is an easy way to find the character you might only know by its Unicode name or code point.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.gnome.org/GNOME/gucharmap/-/archive/17.0.2/gucharmap-17.0.2.tar.bz2">https://gitlab.gnome.org/GNOME/gucharmap/-/archive/17.0.2/gucharmap-17.0.2.tar.bz2</a>

-   Download MD5 sum: eb7a254cebe0650f41281a270846afb5

-   Download size: 1.4 MB

-   Estimated disk space required: 80 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Unicode Character Database: <a class="ulink" href="https://www.unicode.org/Public/17.0.0/ucd/UCD.zip">https://www.unicode.org/Public/17.0.0/ucd/UCD.zip</a>

-   CJK Unified Ideographs: <a class="ulink" href="https://www.unicode.org/Public/17.0.0/ucd/Unihan.zip">https://www.unicode.org/Public/17.0.0/ucd/Unihan.zip</a>
</div>

### Gucharmap Dependencies

#### Required

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, and <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a> and <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Gucharmap {#installation-of-gucharmap}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package uses two unversioned downloads. You may want to rename these to a versioned name, e.g. <code class="filename">UCD-17.zip</code> to make upgrades easier.
</div>

Install <span class="application">Gucharmap</span> by running the following commands:

```bash
mkdir build                   &&
cd    build                   &&
mkdir ucd                     &&
pushd ucd                     &&
  unzip ../../../UCD.zip      &&
  cp -v ../../../Unihan.zip . &&
popd                          &&

meson setup --prefix=/usr       \
            --strip             \
            --buildtype=release \
            -D ucd_path=./ucd   \
            -D docs=false       \
            ..                  &&
ninja
```

This package does not have a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
rm  -fv /usr/share/glib-2.0/schemas/org.gnome.Charmap.enums.xml &&
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--strip`*: Although the package defaults to a release build without debug information, without this switch there will be some debug information in the binaries.

*`-D ucd_path=./ucd`*: This points to where the extracted main Unicode data files, and the zipped Unihan archive can be found.

<span class="command"><strong>rm -fv /usr/share/glib-2.0/schemas/org.gnome.Charmap.enums.xml</strong></span>: Old versions of this package installed an obsolete file that prevents the program from running, as if the main schema has not been installed. Forcibly removing works even if the old file is not present.

*`-D docs=false`*: This allows the package to build even if <span class="application">gtk-doc</span> has not been installed. Remove this if you have installed that and wish to build the documentation.

<code class="option">-D gir=false</code>: Use this if you have not installed <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection).

<code class="option">-D vapi=false</code>: Use this if you have not installed <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gucharmap</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgucharmap_2_90.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gucharmap-2.90</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------
  <a id="gucharmap-prog"></a><span class="command"><span class="term"><strong>gucharmap</strong></span></span>              is a Unicode character map and font viewer
  <a id="libgucharmap_2_90"></a><span class="term"><code class="filename">libgucharmap_2_90.so</code></span>   contains the <span class="application">Gucharmap</span> API functions
  ------------------------------------------------------------------ ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-weather.md "gnome-weather-48.0")

    gnome-weather-48.0

-   [Next](loupe.md "Loupe-49.2")

    Loupe-49.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](yelp-xsl.md "yelp-xsl-49.0")

    yelp-xsl-49.0

-   [Next](gjs.md "Gjs-1.88.0")

    Gjs-1.88.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# geocode-glib-3.26.4 {#geocode-glib-3.26.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Geocode GLib {#introduction-to-geocode-glib}

The <span class="application">Geocode GLib</span> is a convenience library for the Yahoo! Place Finder APIs. The Place Finder web service allows you to do geocoding (finding longitude and latitude from an address), as well as reverse geocoding (finding an address from coordinates).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.4.tar.xz">https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.4.tar.xz</a>

-   Download MD5 sum: 4c0dcdb7ee1222435b20acd3d7b68cd1

-   Download size: 76 KB

-   Estimated disk space required: 4.6 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Geocode GLib Dependencies

#### Required

<a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a> and <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Geocode GLib {#installation-of-geocode-glib}

Install <span class="application">Geocode GLib</span> by running the following commands:

```bash
mkdir build                   &&
cd    build                   &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D enable-gtk-doc=false \
            -D soup2=false          \
            ..                      &&
ninja
```

To test the results, issue: <span class="command"><strong>LANG=C ninja test</strong></span>. One test fails because it needs the <code class="literal">sv_SE.utf8</code> locale, which is not installed by default in LFS.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D enable-gtk-doc=false`*: Allow this package to be built without <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>. Remove this parameter if <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> is installed and you wish to rebuild and install the API documentation.

*`-D soup2=false`*: This switch forces this package to use libsoup-3 for HTTP requests instead of libsoup-2. The packages in BLFS that use geocode-glib now expect libsoup-3 to be used.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgeocode-glib-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/geocode-glib-2.0, /usr/libexec/installed-tests/geocode-glib, /usr/share/icons/gnome/scalable/places, and /usr/share/gtk-doc/html/geocode-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------
  <a id="libgeocode-glib-2"></a><span class="term"><code class="filename">libgeocode-glib-2.so</code></span>   contains the <span class="application">Geocode GLib</span> API functions
  ------------------------------------------------------------------ ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](yelp-xsl.md "yelp-xsl-49.0")

    yelp-xsl-49.0

-   [Next](gjs.md "Gjs-1.88.0")

    Gjs-1.88.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

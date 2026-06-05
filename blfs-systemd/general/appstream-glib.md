<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](appstream.md "AppStream-1.1.2")

    AppStream-1.1.2

-   [Next](apr.md "Apr-1.7.6")

    Apr-1.7.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# appstream-glib-0.8.3 {#appstream-glib-0.8.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to appstream-glib {#introduction-to-appstream-glib}

The <span class="application">appstream-glib</span> provides GObjects and helper methods to make it easy to read and write AppStream metadata. It also provides a simple DOM (Document Object Model) implementation that makes it easy to edit nodes and convert to and from the standardized XML representation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://people.freedesktop.org/~hughsient/appstream-glib/releases/appstream-glib-0.8.3.tar.xz">http://people.freedesktop.org/\~hughsient/appstream-glib/releases/appstream-glib-0.8.3.tar.xz</a>

-   Download MD5 sum: 2ffd46eff1c16f31e435849b706c2287

-   Download size: 2.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### appstream-glib Dependencies

#### Required

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, and <a class="xref" href="libyaml.md" title="libyaml-0.2.5">libyaml-0.2.5</a>

#### Optional

<a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
## Installation of appstream-glib {#installation-of-appstream-glib}

Install <span class="application">appstream-glib</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D rpm=false        &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">appstream-builder, appstream-compose, and appstream-util</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libappstream-glib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libappstream-glib, /usr/lib/asb-plugins-5, and /usr/share/installed-tests/appstream-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------
  <a id="appstream-builder"></a><span class="command"><span class="term"><strong>appstream-builder</strong></span></span>   builds AppStream metadata
  <a id="appdata-compose"></a><span class="command"><span class="term"><strong>appdata-compose</strong></span></span>       generates AppStream metadata
  <a id="appstream-util"></a><span class="command"><span class="term"><strong>appstream-util</strong></span></span>         Is a management tool for appstream-builder
  <a id="libappstream-glib"></a><span class="term"><code class="filename">libappstream-glib.so</code></span>   contains the API functions
  ------------------------------------------------------------------ --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](appstream.md "AppStream-1.1.2")

    AppStream-1.1.2

-   [Next](apr.md "Apr-1.7.6")

    Apr-1.7.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

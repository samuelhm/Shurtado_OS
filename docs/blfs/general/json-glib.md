<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](json-c.md "JSON-C-0.18")

    JSON-C-0.18

-   [Next](keyutils.md "keyutils-1.6.3")

    keyutils-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# JSON-GLib-1.10.8 {#json-glib-1.10.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to JSON GLib {#introduction-to-json-glib}

The <span class="application">JSON GLib</span> package is a library providing serialization and deserialization support for the JavaScript Object Notation (JSON) format described by RFC 4627.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/json-glib/1.10/json-glib-1.10.8.tar.xz">https://download.gnome.org/sources/json-glib/1.10/json-glib-1.10.8.tar.xz</a>

-   Download MD5 sum: 95c3d5dd56d4ada808480739889b75bc

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### JSON-GLib Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required if building GNOME)

#### Optional

<a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> and <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>
</div>

<div class="installation" lang="en">
## Installation of JSON GLib {#installation-of-json-glib}

Install <span class="application">JSON GLib</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If <a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> is installed, build the man pages:

```bash
meson configure -D man=true &&
ninja
```

If <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> is installed, build the API documentation:

```bash
sed "/json_docdir =/s|$| / 'json-glib-1.10.8'|" -i ../doc/meson.build &&
meson configure -D documentation=enabled &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, node, is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=disabled</code>: Add this option if you have <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and do not wish to generate the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">json-glib-format and json-glib-validate</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libjson-glib-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,libexec,share{,/installed-tests}/json-glib-1.0} and /usr/share/gtk-doc/html/json-glib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------
  <a id="json-glib-format"></a><span class="command"><span class="term"><strong>json-glib-format</strong></span></span>       is a simple command line interface to format JSON data
  <a id="json-glib-validate"></a><span class="command"><span class="term"><strong>json-glib-validate</strong></span></span>   is a simple command line interface to validate JSON data
  <a id="libjson-glib-1"></a><span class="term"><code class="filename">libjson-glib-1.0.so</code></span>         contains the <span class="application">JSON GLib</span> API functions
  -------------------------------------------------------------------- ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](json-c.md "JSON-C-0.18")

    JSON-C-0.18

-   [Next](keyutils.md "keyutils-1.6.3")

    keyutils-1.6.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

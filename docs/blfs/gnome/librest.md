<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libsecret.md "libsecret-0.21.7")

    libsecret-0.21.7

-   [Next](totem-pl-parser.md "totem-pl-parser-3.26.7")

    totem-pl-parser-3.26.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# librest-0.10.2 {#librest-0.10.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to librest {#introduction-to-librest}

The <span class="application">librest</span> package contains a library that is designed to make it easier to access web services that claim to be "RESTful". It includes convenience wrappers for libsoup and libxml to make remote usage of the RESTful API easier.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/librest/0.10/librest-0.10.2.tar.xz">https://download.gnome.org/sources/librest/0.10/librest-0.10.2.tar.xz</a>

-   Download MD5 sum: 32b0ecf86932cd45b4e7078690c8306f

-   Download size: 72 KB

-   Estimated disk space required: 4.0 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### librest Dependencies

#### Required

<a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, and <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a> and <a class="xref" href="../x/gtksourceview5.md" title="gtksourceview5-5.20.0">gtksourceview5-5.20.0</a> (to build the demo), and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of librest {#installation-of-librest}

Install <span class="application">librest</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D examples=false   \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/output/s/librest-1.0/librest-0.10.2/" -i ../docs/meson.build &&
meson configure -D gtk_doc=true                                    &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.

*`-D examples=false`*: Remove this option if <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a> and <a class="xref" href="../x/gtksourceview5.md" title="gtksourceview5-5.20.0">gtksourceview5-5.20.0</a> are installed and you wish to build the demonstration application provided by this package.

<code class="option">-D vapi=true</code>: Use this switch if <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a> is installed and you wish to build the Vala bindings provided by this package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">librest-demo (optional)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">librest-1.0.so and librest-extras-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/rest-1.0 and /usr/share/gtk-doc/html/librest-0.10.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------------------
  <a id="librest-demo"></a><span class="command"><span class="term"><strong>librest-demo</strong></span></span>               provides an example of how to use the RESTful Web API Query functions
  <a id="librest-1.0"></a><span class="term"><code class="filename">librest-1.0.so</code></span>                 contains the RESTful Web API Query functions
  <a id="librest-extras-1.0"></a><span class="term"><code class="filename">librest-extras-1.0.so</code></span>   contains extra RESTful Web API Query functions
  -------------------------------------------------------------------- -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsecret.md "libsecret-0.21.7")

    libsecret-0.21.7

-   [Next](totem-pl-parser.md "totem-pl-parser-3.26.7")

    totem-pl-parser-3.26.7

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

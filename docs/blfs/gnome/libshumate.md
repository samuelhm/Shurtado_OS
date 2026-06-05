<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libpeas.md "libpeas-1.38.1")

    libpeas-1.38.1

-   [Next](evolution-data-server.md "evolution-data-server-3.60.2")

    evolution-data-server-3.60.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libshumate-1.6.1 {#libshumate-1.6.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libshumate {#introduction-to-libshumate}

The <span class="application">libshumate</span> package contains a GTK-4 widget to display maps.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libshumate/1.6/libshumate-1.6.1.tar.xz">https://download.gnome.org/sources/libshumate/1.6/libshumate-1.6.1.tar.xz</a>

-   Download MD5 sum: 358252b2ff6de445515b1d6175121526

-   Download size: 5.6 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.2 SBU
</div>

### libshumate Dependencies

#### Required

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, and <a class="xref" href="../general/protobuf-c.md" title="Protobuf-c-1.5.2">Protobuf-c-1.5.2</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) (required for gnome-maps)

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>
</div>

<div class="installation" lang="en">
## Installation of libshumate {#installation-of-libshumate}

Install <span class="application">libshumate</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nodownload \
            -D gtk_doc=false       \
            ..                     &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -e 's/lib_version/version/' \
    -i ../docs/meson.build      &&
meson configure -D gtk_doc=true &&
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

*`--wrap-mode=nodownload`*: This switch prevents <span class="command"><strong>meson</strong></span> from downloading any optional dependency which is not installed on the system.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libshumate-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/shumate-1.0 and /usr/share/doc/libshumate-1.6.1 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ----------------------------------------------------------------
  <a id="libshumate-1.0"></a><span class="term"><code class="filename">libshumate-1.0.so</code></span>   contains functions that provide a GTK-4 widget to display maps
  ------------------------------------------------------------ ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpeas.md "libpeas-1.38.1")

    libpeas-1.38.1

-   [Next](evolution-data-server.md "evolution-data-server-3.60.2")

    evolution-data-server-3.60.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

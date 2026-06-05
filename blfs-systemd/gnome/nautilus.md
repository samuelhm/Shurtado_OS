<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gexiv2.md "gexiv2-0.16.0")

    gexiv2-0.16.0

-   [Next](gnome-bluetooth.md "gnome-bluetooth-47.2")

    gnome-bluetooth-47.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Nautilus-50.2.2 {#nautilus-50.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Nautilus {#introduction-to-nautilus}

The <span class="application">Nautilus</span> package contains the <span class="application">GNOME</span> file manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/nautilus/50/nautilus-50.2.2.tar.xz">https://download.gnome.org/sources/nautilus/50/nautilus-50.2.2.tar.xz</a>

-   Download MD5 sum: b8a2330c5ac165178b4775e70435a473

-   Download size: 3.2 MB

-   Estimated disk space required: 96 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests, both using parallelism=4)
</div>

### Nautilus Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="gexiv2.md" title="gexiv2-0.16.0">gexiv2-0.16.0</a>, <a class="xref" href="../general/glycin-gtk4.md" title="libglycin-gtk4 from glycin-2.1.1">libglycin-gtk4 from glycin-2.1.1</a>, <a class="xref" href="gnome-autoar.md" title="gnome-autoar-0.4.5">gnome-autoar-0.4.5</a>, <a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="../general/libportal.md" title="libportal-0.9.1">libportal-0.9.1</a>, <a class="xref" href="../general/libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, and <a class="xref" href="tinysparql.md" title="tinysparql-3.11.1">tinysparql-3.11.1</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a>, and <a class="xref" href="localsearch.md" title="localsearch-3.11.1">localsearch-3.11.1</a> (required at runtime)

#### Optional (for generating documentation)

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>

#### Recommended (Runtime)

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a> and <a class="xref" href="gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a> (For hotplugging and device mounting to work)
</div>

<div class="installation" lang="en">
## Installation of Nautilus {#installation-of-nautilus}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are upgrading from a previous version of this package, remove a conflicting file by running the following command as the <code class="systemitem">root</code> user:

```bash
rm -fv /usr/lib/libnautilus-extension.so.4
```
</div>

Install <span class="application">Nautilus</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D selinux=disabled \
            ..                  &&

ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to generate and install the API documentation, issue the following commands:

```bash
sed "/docdir =/s@\$@ / 'nautilus-50.2.2'@" -i ../meson.build &&
meson configure -D docs=true &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests need to be run in a graphical environment. One test is known to fail if <a class="xref" href="localsearch.md" title="localsearch-3.11.1">localsearch-3.11.1</a> is not installed. One test is also known to timeout if the user running the tests has a large home directory.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a <span class="quote">“<span class="quote">DESTDIR</span>”</span> method, <code class="filename">/usr/share/glib-2.0/schemas/gschemas.compiled</code> was not updated/created. Create (or update) the file using the following command as the <code class="systemitem">root</code> user:

```bash
glib-compile-schemas /usr/share/glib-2.0/schemas
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D cloudproviders=false</code>: Use this switch if you do not have <a class="xref" href="../general/libcloudproviders.md" title="libcloudproviders-0.3.6">libcloudproviders-0.3.6</a> installed.

<code class="option">-D tests=none</code>: Use this switch if you do not have <a class="xref" href="localsearch.md" title="localsearch-3.11.1">localsearch-3.11.1</a> installed. But note that it would disable most tests in the test suite, and Nautilus would fail to start until you install <a class="xref" href="localsearch.md" title="localsearch-3.11.1">localsearch-3.11.1</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">nautilus and nautilus-autorun-software</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libnautilus-extension.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,share}/nautilus and /usr/share/doc/nautilus-50.2.2 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------
  <a id="nautilus-prog"></a><span class="command"><span class="term"><strong>nautilus</strong></span></span>                        is the <span class="application">GNOME</span> file manager
  <a id="libnautilus-extension"></a><span class="term"><code class="filename">libnautilus-extension.so</code></span>   supplies the functions needed by the file manager extensions
  -------------------------------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gexiv2.md "gexiv2-0.16.0")

    gexiv2-0.16.0

-   [Next](gnome-bluetooth.md "gnome-bluetooth-47.2")

    gnome-bluetooth-47.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

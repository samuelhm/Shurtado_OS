<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gcr.md "Gcr-3.41.2")

    Gcr-3.41.2

-   [Next](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1")

    gsettings-desktop-schemas-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gcr-4.4.0.1 {#gcr-4.4.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gcr {#introduction-to-gcr}

The <span class="application">Gcr</span> package contains libraries used for displaying certificates and accessing key stores. It also provides the viewer for crypto files on the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gcr/4.4/gcr-4.4.0.1.tar.xz">https://download.gnome.org/sources/gcr/4.4/gcr-4.4.0.1.tar.xz</a>

-   Download MD5 sum: 01da4445b5b16801c6dcc7d8945b4cc4

-   Download size: 728 KB

-   Estimated disk space required: 26 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests; both using parallelism=4)
</div>

### Gcr Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended), <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../postlfs/p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>

#### Recommended

<a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of Gcr {#installation-of-gcr}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Both gcr-3 and gcr-4 are coinstallable. This version of the package is used to support GTK-4 applications, such as <a class="xref" href="gnome-shell.md" title="gnome-shell-50.2">gnome-shell-50.2</a> and <a class="xref" href="../xsoft/epiphany.md" title="Epiphany-50.4">Epiphany-50.4</a>.
</div>

Install <span class="application">Gcr</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -e "/install_dir/s@,\$@ / 'gcr-4.4.0.1'&@" \
    -i ../docs/*/meson.build                 &&
meson configure -D gtk_doc=true              &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests must be run from an X Terminal or similar.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk4=false</code>: Use this switch if you haven't installed <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>. Note that <span class="application">gcr-viewer-gtk4</span> will not be installed if this is passed to meson.

*`-D gtk_doc=false`*: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.

<code class="option">-D crypto=gnutls</code>: Use this switch if you have <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> installed and wish to use it instead of <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gcr-viewer-gtk4</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgck-2.so, libgcr-4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gck-2, /usr/include/gcr-4, and /usr/share/gtk-doc/html/{gcr,gck}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------
  <a id="gcr-viewer-gtk4"></a><span class="command"><span class="term"><strong>gcr-viewer-gtk4</strong></span></span>   is used to view certificates and key files
  <a id="libgck-2"></a><span class="term"><code class="filename">libgck-2.so</code></span>                 contains GObject bindings for PKCS#11
  <a id="libgcr-4"></a><span class="term"><code class="filename">libgcr-4.so</code></span>                 contains functions for accessing key stores and displaying certificates
  -------------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gcr.md "Gcr-3.41.2")

    Gcr-3.41.2

-   [Next](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1")

    gsettings-desktop-schemas-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

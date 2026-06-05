<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](core.md "GNOME Libraries and Desktop")

    GNOME Libraries and Desktop

-   [Next](gcr4.md "Gcr-4.4.0.1")

    Gcr-4.4.0.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gcr-3.41.2 {#gcr-3.41.2}

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
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gcr/3.41/gcr-3.41.2.tar.xz">https://download.gnome.org/sources/gcr/3.41/gcr-3.41.2.tar.xz</a>

-   Download MD5 sum: 40a754ba44d5e95e4d07656d6302900c

-   Download size: 1012 KB

-   Estimated disk space required: 33 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests; both using parallelism=4)
</div>

### Gcr Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended), <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, and <a class="xref" href="../postlfs/p11-kit.md" title="p11-kit-0.26.2">p11-kit-0.26.2</a>

#### Recommended

<a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of Gcr {#installation-of-gcr}

First, apply a fix for building without OpenSSH installed:

```bash
sed '/ssh.add/d; /ssh.agent/d' -i meson.build
```

Install <span class="application">Gcr</span> by running the following commands:

```bash
sed -i 's:"/desktop:"/org:' schema/*.xml &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            -D ssh_agent=false  \
            ..                  &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -e "/install_dir/s@,\$@ / 'gcr-3.41.2'&@" \
    -i ../docs/*/meson.build                  &&
meson configure -D gtk_doc=true               &&
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

*`-D ssh_agent=false`*: Disable the ssh-agent implementation from this package. This implementation is incomplete and the implementation from <a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a> should be used instead for GNOME.

<code class="option">-D gtk=false</code>: Use this switch if you haven't installed <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>. Note that <span class="application">gcr-viewer</span> will not be installed if this is option is used.

<code class="option">-D gtk_doc=true</code>: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gcr-viewer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgck-1.so, libgcr-base-3.so and libgcr-ui-3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gck-1, /usr/include/gcr-3, and /usr/share/gtk-doc/html/{gcr,gck}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------
  <a id="gcr-viewer"></a><span class="command"><span class="term"><strong>gcr-viewer</strong></span></span>   is used to view certificates and key files
  <a id="libgck-1"></a><span class="term"><code class="filename">libgck-1.so</code></span>       contains GObject bindings for PKCS#11
  ---------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](core.md "GNOME Libraries and Desktop")

    GNOME Libraries and Desktop

-   [Next](gcr4.md "Gcr-4.4.0.1")

    Gcr-4.4.0.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

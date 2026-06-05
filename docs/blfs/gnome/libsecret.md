<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1")

    gsettings-desktop-schemas-50.1

-   [Next](librest.md "librest-0.10.2")

    librest-0.10.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsecret-0.21.7 {#libsecret-0.21.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsecret {#introduction-to-libsecret}

The <span class="application">libsecret</span> package contains a GObject based library for accessing the Secret Service API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libsecret/0.21/libsecret-0.21.7.tar.xz">https://download.gnome.org/sources/libsecret/0.21/libsecret-0.21.7.tar.xz</a>

-   Download MD5 sum: 7a938a802a3c17df441fbd0358866e99

-   Download size: 204 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
</div>

### libsecret Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended)

#### Recommended

<a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> (or <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, for cryptography), and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build manual pages), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (can be used in tests), and <a class="ulink" href="https://github.com/tpm2-software/tpm2-tss">tpm2-tss</a> (for TPM support)

#### Optional (Required for the test suite)

<a class="xref" href="../general/python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a>, <a class="xref" href="gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a>, and <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

#### Required Runtime Dependency

<a class="xref" href="gnome-keyring.md" title="gnome-keyring-50.0">gnome-keyring-50.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Any package requiring <span class="application">libsecret</span> expects <span class="application">GNOME Keyring</span> to be present at runtime.
</div>
</div>

<div class="installation" lang="en">
## Installation of libsecret {#installation-of-libsecret}

Install <span class="application">libsecret</span> by running the following commands:

```bash
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "s/api_version_major/'0.21.7'/"            \
    -i ../docs/reference/libsecret/meson.build &&
meson configure -D gtk_doc=true                &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>dbus-run-session ninja test</strong></span>.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.

<code class="option">-D manpage=false</code>: Use this switch if you have not installed <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> and DocBook packages.

<code class="option">-D crypto=gnutls</code>: Use this switch if you want to use <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> for cryptography instead of <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>.

<code class="option">-D crypto=disabled</code>: Use this switch if you don't have <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> or <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> installed. Note that disabling transport encryption support by doing this is not recommended.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">secret-tool</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsecret-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libsecret-1 and /usr/share/doc/libsecret-0.21.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------
  <a id="secret-tool"></a><span class="command"><span class="term"><strong>secret-tool</strong></span></span>   is a command line tool that can be used to store and retrieve passwords
  <a id="libsecret-1"></a><span class="term"><code class="filename">libsecret-1.so</code></span>   contains the <span class="application">libsecret</span> API functions
  ------------------------------------------------------ -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1")

    gsettings-desktop-schemas-50.1

-   [Next](librest.md "librest-0.10.2")

    librest-0.10.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

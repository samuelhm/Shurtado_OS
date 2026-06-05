<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](geoclue2.md "GeoClue-2.8.1")

    GeoClue-2.8.1

-   [Next](kdsoap.md "kdsoap-2.3.0")

    kdsoap-2.3.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# glib-networking-2.80.1 {#glib-networking-2.80.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLib Networking {#introduction-to-glib-networking}

The <span class="application">GLib Networking</span> package contains Network related gio modules for <span class="application">GLib</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/glib-networking/2.80/glib-networking-2.80.1.tar.xz">https://download.gnome.org/sources/glib-networking/2.80/glib-networking-2.80.1.tar.xz</a>

-   Download MD5 sum: 405e6c058723217a1307ba8415615f9d

-   Download size: 288 KB

-   Estimated disk space required: 5.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### GLib Networking Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>

#### Recommended

<a class="xref" href="../gnome/gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a> (for the applications using this package to use proxy server settings in GNOME) and <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>

#### Optional

<a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>
</div>

<div class="installation" lang="en">
## Installation of GLib Networking {#installation-of-glib-networking}

Install <span class="application">GLib Networking</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup             \
   --prefix=/usr        \
   --buildtype=release  \
   -D libproxy=disabled \
   .. &&
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

*`-D libproxy=disabled`*: This switch disables libproxy support. If you wish to build with libproxy to allow this package to retrieve proxy settings via it's API, remove this switch.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgiognomeproxy.so and libgiognutls.so (GIO Modules installed in <code class="filename">/usr/lib/gio/modules</code>)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](geoclue2.md "GeoClue-2.8.1")

    GeoClue-2.8.1

-   [Next](kdsoap.md "kdsoap-2.3.0")

    kdsoap-2.3.0

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

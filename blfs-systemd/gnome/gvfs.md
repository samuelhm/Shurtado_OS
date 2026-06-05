<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-backgrounds.md "gnome-backgrounds-50.0")

    gnome-backgrounds-50.0

-   [Next](gexiv2.md "gexiv2-0.16.0")

    gexiv2-0.16.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gvfs-1.60.0 {#gvfs-1.60.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gvfs {#introduction-to-gvfs}

The <span class="application">Gvfs</span> package is a userspace virtual filesystem designed to work with the I/O abstractions of GLib's GIO library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gvfs/1.60/gvfs-1.60.0.tar.xz">https://download.gnome.org/sources/gvfs/1.60/gvfs-1.60.0.tar.xz</a>

-   Download MD5 sum: 36e8616c3d315cde92d2560f99f7c5c8

-   Download size: 1.2 MB

-   Estimated disk space required: 27 MB

-   Estimated build time: 0.1 SBU (using parallelism=4)
</div>

### Gvfs Dependencies

#### Required

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, and <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>

#### Recommended

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../multimedia/libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime),</span> and <a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>

#### Optional

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a>, <a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../postlfs/fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="gnome-online-accounts.md" title="gnome-online-accounts-3.58.1">gnome-online-accounts-3.58.1</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../postlfs/openssh.md" title="OpenSSH-10.3p1">OpenSSH-10.3p1</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="ulink" href="https://download.gnome.org/sources/gnome-desktop-testing/">gnome-desktop-testing</a> (for tests), <a class="ulink" href="https://www.videolan.org/developers/libbluray.md">libbluray</a>, <a class="ulink" href="https://gitlab.gnome.org/GNOME/libgdata">libgdata</a>, <a class="ulink" href="http://www.gphoto.org/">libgphoto2</a>, <a class="ulink" href="https://libimobiledevice.org/">libimobiledevice</a>, <a class="ulink" href="https://gitlab.gnome.org/GNOME/msgraph">libmsgraph</a>, <a class="ulink" href="https://libmtp.sourceforge.net/">libmtp</a>, <a class="ulink" href="https://github.com/sahlberg/libnfs/">libnfs</a>, and <a class="ulink" href="https://twisted.org/">Twisted</a>
</div>

<div class="installation" lang="en">
## Installation of Gvfs {#installation-of-gvfs}

Install <span class="application">Gvfs</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup               \
      --prefix=/usr       \
      --buildtype=release \
      -D onedrive=false   \
      -D fuse=false       \
      -D gphoto2=false    \
      -D afc=false        \
      -D bluray=false     \
      -D nfs=false        \
      -D mtp=false        \
      -D smb=false        \
      -D dnssd=false      \
      -D goa=false        \
      -D google=false     .. &&
ninja
```

The test suite requires <span class="application">gnome-desktop-testing</span>, which is beyond the scope of BLFS.

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

*`-D <option>=false`*: These switches are required if the corresponding dependency is not installed. Remove those where you have installed the corresponding application and wish to use it with <span class="application">Gvfs</span>. The dnssd option requires avahi and both goa and google require GNOME Online Accounts. The google option also requires the libgdata package, which has been removed from BLFS. The onedrive support requires the libmsgraph package.

<code class="option">-D cdda=false</code>: This switch is required if libcdio is not installed. The cdda backend is useless on machines without a CDROM/DVD drive.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgvfscommon.so, libgvfsdaemon.so and some under /usr/lib/gio/modules/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gvfs-client and /usr/{lib,share}/gvfs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------------------------
  <a id="libgvfscommon"></a><span class="term"><code class="filename">libgvfscommon.so</code></span>   contains the common API functions used in <span class="application">Gvfs</span> programs
  ---------------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-backgrounds.md "gnome-backgrounds-50.0")

    gnome-backgrounds-50.0

-   [Next](gexiv2.md "gexiv2-0.16.0")

    gexiv2-0.16.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

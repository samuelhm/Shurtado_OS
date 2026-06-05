<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-connections.md "gnome-connections-50.0")

    gnome-connections-50.0

-   [Next](gnome-logs.md "gnome-logs-45.0")

    gnome-logs-45.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-disk-utility-46.1 {#gnome-disk-utility-46.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Disk Utility {#introduction-to-gnome-disk-utility}

The <span class="application">GNOME Disk Utility</span> package provides applications used for dealing with storage devices.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-disk-utility/46/gnome-disk-utility-46.1.tar.xz">https://download.gnome.org/sources/gnome-disk-utility/46/gnome-disk-utility-46.1.tar.xz</a>

-   Download MD5 sum: bfc4d0cfbf186ba5bd487f3fddbf07d2

-   Download size: 1.5 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.2 SBU
</div>

### GNOME Disk Utility Dependencies

#### Required

<a class="xref" href="gnome-settings-daemon.md" title="gnome-settings-daemon-50.1">gnome-settings-daemon-50.1</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../multimedia/libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a>, <a class="xref" href="../postlfs/libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, <a class="xref" href="libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, and <a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Disk Utility {#installation-of-gnome-disk-utility}

Install <span class="application">GNOME Disk Utility</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">gnome-disk-image-mounter and gnome-disks</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------
  <a id="gnome-disk-image-mounter"></a><span class="command"><span class="term"><strong>gnome-disk-image-mounter</strong></span></span>   is used to set up disk images
  <a id="gnome-disks"></a><span class="command"><span class="term"><strong>gnome-disks</strong></span></span>                             is used to inspect, format, partition and configure disks and block devices
  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-connections.md "gnome-connections-50.0")

    gnome-connections-50.0

-   [Next](gnome-logs.md "gnome-logs-45.0")

    gnome-logs-45.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

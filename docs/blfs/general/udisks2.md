<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](systemd.md "Systemd-260.2")

    Systemd-260.2

-   [Next](unrar.md "UnRar-7.2.4")

    UnRar-7.2.4

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# UDisks-2.11.1 {#udisks-2.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to UDisks {#introduction-to-udisks}

The <span class="application">UDisks</span> package provides a daemon, tools and libraries to access and manipulate disks and storage devices.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/storaged-project/udisks/releases/download/udisks-2.11.1/udisks-2.11.1.tar.bz2">https://github.com/storaged-project/udisks/releases/download/udisks-2.11.1/udisks-2.11.1.tar.bz2</a>

-   Download MD5 sum: 55f9f7bbb7986244bb4905c04f8c1542

-   Download size: 1.9 MB

-   Estimated disk space required: 68 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### UDisks Dependencies

#### Required

<a class="xref" href="libatasmart.md" title="libatasmart-0.19">libatasmart-0.19</a>, <a class="xref" href="libblockdev.md" title="libblockdev-3.5.0">libblockdev-3.5.0</a>, <a class="xref" href="libgudev.md" title="libgudev-238">libgudev-238</a>, and <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>

#### Recommended

<a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime)</span>

#### Optional (Required if building GNOME)

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a> (for the integration tests), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (for the man pages), <a class="xref" href="../postlfs/lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for the integration tests), <a class="ulink" href="https://github.com/relan/exfat">exFAT</a>, and <a class="ulink" href="https://github.com/sahlberg/libiscsi">libiscsi</a>

#### Optional Runtime Dependencies

<a class="xref" href="../postlfs/btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a>, <a class="xref" href="../postlfs/dosfstools.md" title="dosfstools-4.2">dosfstools-4.2</a>, <a class="xref" href="../postlfs/gptfdisk.md" title="gptfdisk-1.0.10">gptfdisk-1.0.10</a>, <a class="xref" href="../postlfs/mdadm.md" title="mdadm-4.6">mdadm-4.6</a>, and <a class="xref" href="../postlfs/xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>
</div>

<div class="installation" lang="en">
## Installation of UDisks {#installation-of-udisks}

Install <span class="application">UDisks</span> by running the following commands:

```bash
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     \
            --enable-available-modules &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. A more thorough test can be run with <span class="command"><strong>make ci</strong></span>. You must first create the directories <code class="filename">/var/run/udisks2</code> and <code class="filename">/var/lib/udisks2</code>, and the optional python modules should be present.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.

*`--enable-available-modules`*: This switch enables additional <span class="application">UDisks2</span> functionalities if <a class="xref" href="libblockdev.md" title="libblockdev-3.5.0">libblockdev-3.5.0</a> has been built with optional dependencies.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">udisksctl and umount.udisks2</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libudisks2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/udisks2, /usr/include/udisks2, /usr/libexec/udisks2, /usr/share/gtk-doc/html/udisks2, and /var/lib/udisks2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
  <a id="udisksctl"></a><span class="command"><span class="term"><strong>udisksctl</strong></span></span>            is a command-line program used to interact with the <span class="command"><strong>udisksd</strong></span> daemon
  <a id="umountudisks2"></a><span class="command"><span class="term"><strong>umount.udisks2</strong></span></span>   is a command-line program used to unmount file systems that have been mounted by the <span class="application">UDisks</span> daemon
  <a id="libudisks2"></a><span class="term"><code class="filename">libudisks2.so</code></span>          contains the <span class="application">UDisks</span> API functions
  ----------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](systemd.md "Systemd-260.2")

    Systemd-260.2

-   [Next](unrar.md "UnRar-7.2.4")

    UnRar-7.2.4

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](gimp.md "Gimp-3.2.4")

    Gimp-3.2.4

-   [Next](inkscape.md "Inkscape-1.4.4")

    Inkscape-1.4.4

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gparted-1.8.1 {#gparted-1.8.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gparted {#introduction-to-gparted}

Gparted is the Gnome Partition Editor, a Gtk 3 GUI for other command line tools that can create, reorganise or delete disk partitions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gparted/gparted-1.8.1.tar.gz">https://downloads.sourceforge.net/gparted/gparted-1.8.1.tar.gz</a>

-   Download MD5 sum: 3805a43eafd08277f12dc6c2e0de97c2

-   Download size: 5.7 MB

-   Estimated disk space required: 193 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; add 0.3 SBU for tests)
</div>

### Gparted Dependencies

#### Required

<a class="xref" href="../x/gtkmm3.md" title="Gtkmm-3.24.10">Gtkmm-3.24.10</a> and <a class="xref" href="../postlfs/parted.md" title="parted-3.7">parted-3.7</a>

#### Optional

<a class="xref" href="../postlfs/btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a> (if you are using a btrfs filesystem), <a class="ulink" href="https://github.com/exfatprogs/exfatprogs">exfatprogs</a>, and <a class="ulink" href="https://github.com/pali/udftools">udftools</a>

Additional dependencies may be required depending on the types of filesystems that you are working with. Please read the "Using Gparted" section below for more information.
</div>

<div class="installation" lang="en">
## Installation of Gparted {#installation-of-gparted}

Install <span class="application">Gparted</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To run the tests, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-xhost-root</code>: This switch provides an interim workaround to allow GParted to run under Wayland by using xhost to grant and revoke root access to the X11 display.
</div>

<div class="using" lang="en">
## Using Gparted {#using-gparted}

To manipulate file systems, Gparted has a run time dependency on various file system tools (you only need to install the tools for file systems you actually use): <a class="xref" href="../general/hdparm.md" title="Hdparm-9.65">Hdparm-9.65</a> (required for optionally displaying the serial number of a device), <a class="xref" href="../postlfs/btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a>, <a class="xref" href="../postlfs/dosfstools.md" title="dosfstools-4.2">dosfstools-4.2</a>, e2fsprogs (installed as part of LFS), <a class="xref" href="../postlfs/jfsutils.md" title="jfsutils-1.1.15">jfsutils-1.1.15</a>, <a class="xref" href="../postlfs/ntfs-3g.md" title="ntfs-3g-2026.2.25">ntfs-3g-2026.2.25</a>, <a class="xref" href="../postlfs/xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>, <a class="ulink" href="https://ftpmirror.gnu.org/mtools/">mtools</a> (required to read and write FAT16/32 volume labels and UUIDs), <a class="ulink" href="https://www.mars.org/home/rob/proj/hfs/">hfsutils</a>, <a class="ulink" href="https://packages.debian.org/sid/hfsprogs">hfsprogs</a>, <a class="ulink" href="https://nilfs.sourceforge.io/en/">nilfs-utils</a>, <a class="ulink" href="https://reiser4.wiki.kernel.org/index.php/Reiser4progs">Reiser4progs</a>, and <a class="ulink" href="https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/">reiserfsprogs</a>.

Root privileges are required to run Gparted. If you want to run the application from the menu, further applications and configuration might be necessary depending on your desktop environment. If you are using KDE Plasma, GNOME, or LXQt, your desktop includes an ssh-askpass implementation, or a wrapper around Polkit that provides this functionality for you. If you are not using one of these desktop environments, an easier solution is use the generic <a class="xref" href="../postlfs/ssh-askpass.md" title="ssh-askpass-10.3p1">ssh-askpass-10.3p1</a> package.

<div class="ssh-askpass" lang="en">
### ssh-askpass {#ssh-askpass}

To use <a class="xref" href="../postlfs/ssh-askpass.md" title="ssh-askpass-10.3p1">ssh-askpass-10.3p1</a> if it is installed on your system, run the following commands as the <code class="systemitem">root</code> user:

```bash
cp -v /usr/share/applications/gparted.desktop /usr/share/applications/gparted.desktop.back &&
sed -i 's/Exec=/Exec=sudo -A /'               /usr/share/applications/gparted.desktop
```

Now, when you click on the menu item for Gparted, a dialog will appear asking for the administrator password.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gparted and gparted_polkit (optional)</span>
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

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------
  <a id="gparted-prog"></a><span class="command"><span class="term"><strong>gparted</strong></span></span>            is a shell script which sets up the environment before calling <span class="command"><strong>gpartedbin</strong></span>
  <a id="gparted_polkit"></a><span class="command"><span class="term"><strong>gparted_polkit</strong></span></span>   is an optional script which can be used to run gparted with polkit, from a menu
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gimp.md "Gimp-3.2.4")

    Gimp-3.2.4

-   [Next](inkscape.md "Inkscape-1.4.4")

    Inkscape-1.4.4

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

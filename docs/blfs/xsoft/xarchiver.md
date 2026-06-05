<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](transmission.md "Transmission-4.1.1")

    Transmission-4.1.1

-   [Next](xdg-utils.md "xdg-utils-1.2.1")

    xdg-utils-1.2.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xarchiver-0.5.4.26 {#xarchiver-0.5.4.26}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xarchiver {#introduction-to-xarchiver}

<span class="application">XArchiver</span> is a <span class="application">GTK+</span> archive manager with support for tar, xz, bzip2, gzip, zip, 7z, rar, lzo and many other archive formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">xarchiver</span> is only a command line or graphical interface to archiving utilities such as <span class="application">tar</span> and <span class="application">zip</span>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ib/xarchiver/archive/0.5.4.26/xarchiver-0.5.4.26.tar.gz">https://github.com/ib/xarchiver/archive/0.5.4.26/xarchiver-0.5.4.26.tar.gz</a>

-   Download MD5 sum: 47e405196a0a9d98d0d356b4dae11701

-   Download size: 1.1 MB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.1 SBU
</div>

### xarchiver Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>

#### Optional (Runtime)

<a class="xref" href="../general/7zip.md" title="7zip-26.01">7zip-26.01</a>, <a class="xref" href="../general/cpio.md" title="cpio-2.15">cpio-2.15</a>, <a class="xref" href="../general/lzo.md" title="LZO-2.10">LZO-2.10</a>, <a class="xref" href="../general/unrar.md" title="UnRar-7.2.4">UnRar-7.2.4</a>, <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a>, and <a class="ulink" href="https://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/">unzip</a>
</div>

<div class="installation" lang="en">
## Installation of xarchiver {#installation-of-xarchiver}

BLFS provides <span class="command"><strong>unzip</strong></span> as a symlink to <span class="command"><strong>bsdunzip</strong></span> from <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, but it doesn't work for xarchiver. Adapt xarchiver to use <a class="xref" href="../general/7zip.md" title="7zip-26.01">7zip-26.01</a> for handling <code class="filename">.zip</code> files by default instead:

```bash
sed '/TOGGLE.*prefer_unzip/s/TRUE/FALSE/' -i src/pref_dialog.c
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you've already installed and run this package before (maybe in another distro if your <code class="filename">/home</code> is a partition shared with that distro), it's likely already configured to prefer <span class="command"><strong>unzip</strong></span>. Unset the <span class="quote">“<span class="quote">Prefer unzip for zip files</span>”</span> checkbox in the <span class="quote">“<span class="quote">Action =\> Preferences</span>”</span> dialog to change the configuration.
</div>

Install <span class="application">xarchiver</span> by running the following commands:

```bash
./configure  --prefix=/usr               \
             --libexecdir=/usr/lib/xfce4 \
             --docdir=/usr/share/doc/xarchiver-0.5.4.26 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--libexecdir=/usr/lib/xfce4`*: This switch fixes the location for the thunar-archive-plugin, so it will work if <a class="xref" href="../xfce/thunar.md" title="thunar-4.20.8">thunar-4.20.8</a> is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xarchiver</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/xfce4/thunar-archive-plugin, /usr/share/doc/xarchiver-0.5.4.26, and /usr/share/pixmaps/xarchiver</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------
  <a id="xarchiver-prog"></a><span class="command"><span class="term"><strong>xarchiver</strong></span></span>   is a <span class="application">GTK+</span> archive manager
  ------------------------------------------------------- -------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](transmission.md "Transmission-4.1.1")

    Transmission-4.1.1

-   [Next](xdg-utils.md "xdg-utils-1.2.1")

    xdg-utils-1.2.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](thunar.md "thunar-4.20.8")

    thunar-4.20.8

-   [Next](tumbler.md "tumbler-4.20.1")

    tumbler-4.20.1

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# thunar-volman-4.20.0 {#thunar-volman-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Thunar Volume Manager {#introduction-to-the-thunar-volume-manager}

The <span class="application">Thunar Volume Manager</span> is an extension for the <span class="application">Thunar</span> file manager, which enables automatic management of removable drives and media.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/thunar-volman/4.20/thunar-volman-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/thunar-volman/4.20/thunar-volman-4.20.0.tar.bz2</a>

-   Download MD5 sum: 34c8e0af77ea3894db7e3d164998f9bf

-   Download size: 624 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Thunar Volume Manager Dependencies

#### Required

<a class="xref" href="exo.md" title="Exo-4.20.0">Exo-4.20.0</a> and <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>

#### Recommended

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>

#### Recommended Runtime Dependency

<a class="xref" href="../gnome/gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a>
</div>

<div class="installation" lang="en">
## Installation of the Thunar Volume Manager {#installation-of-the-thunar-volume-manager}

Install the <span class="application">Thunar Volume Manager</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">thunar-volman and thunar-volman-settings</span>
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

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
  <a id="thunar-volman-prog"></a><span class="command"><span class="term"><strong>thunar-volman</strong></span></span>                is the <span class="application">Thunar</span> Volume Manager, a command line utility to automatically mount or unmount removable media
  <a id="thunar-volman-settings"></a><span class="command"><span class="term"><strong>thunar-volman-settings</strong></span></span>   is a small <span class="application">GTK+ 3</span> application for changing <span class="application">Thunar Volume Manager</span> settings
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](thunar.md "thunar-4.20.8")

    thunar-4.20.8

-   [Next](tumbler.md "tumbler-4.20.1")

    tumbler-4.20.1

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

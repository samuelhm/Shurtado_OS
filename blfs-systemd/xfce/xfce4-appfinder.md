<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](tumbler.md "tumbler-4.20.1")

    tumbler-4.20.1

-   [Next](xfce4-power-manager.md "xfce4-power-manager-4.20.0")

    xfce4-power-manager-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-appfinder-4.20.0 {#xfce4-appfinder-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Appfinder {#introduction-to-xfce4-appfinder}

<span class="application">Xfce4 Appfinder</span> is a tool to find and launch installed applications by searching the .desktop files installed on your system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfce4-appfinder/4.20/xfce4-appfinder-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/xfce4-appfinder/4.20/xfce4-appfinder-4.20.0.tar.bz2</a>

-   Download MD5 sum: e60f6c2521a985c6cfe09057d4fb2d69

-   Download size: 716 KB

-   Estimated disk space required: 7.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Xfce4 Appfinder Dependencies

#### Required

<a class="xref" href="garcon.md" title="Garcon-4.20.0">Garcon-4.20.0</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Appfinder {#installation-of-xfce4-appfinder}

Install <span class="application">Xfce4 Appfinder</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">xfce4-appfinder and xfrun4 (symlink)</span>
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

  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfce4-appfinder-prog"></a><span class="command"><span class="term"><strong>xfce4-appfinder</strong></span></span>   Is a <span class="application">GTK+ 3</span> application that enables you to quickly search through the .desktop files installed on your system looking for an application
  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tumbler.md "tumbler-4.20.1")

    tumbler-4.20.1

-   [Next](xfce4-power-manager.md "xfce4-power-manager-4.20.0")

    xfce4-power-manager-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

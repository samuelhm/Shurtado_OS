<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-panel.md "xfce4-panel-4.20.7")

    xfce4-panel-4.20.7

-   [Next](thunar-volman.md "thunar-volman-4.20.0")

    thunar-volman-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# thunar-4.20.8 {#thunar-4.20.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to thunar {#introduction-to-thunar}

<span class="application">Thunar</span> is the <span class="application">Xfce</span> file manager, a <span class="application">GTK+ 3</span> GUI to organise the files on your computer.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/thunar/4.20/thunar-4.20.8.tar.bz2">https://archive.xfce.org/src/xfce/thunar/4.20/thunar-4.20.8.tar.bz2</a>

-   Download MD5 sum: 6c6b958d96de74b5f0369e8b1ff999c1

-   Download size: 4.4 MB

-   Estimated disk space required: 84 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Thunar Dependencies

#### Required

<a class="xref" href="exo.md" title="Exo-4.20.0">Exo-4.20.0</a>

#### Required (Runtime)

<a class="xref" href="../x/hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>

#### Recommended

<a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a> and <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for documentation), <a class="xref" href="../gnome/gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a> (for remote browsing and automounting), <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a> and <a class="xref" href="tumbler.md" title="tumbler-4.20.1">tumbler-4.20.1</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of Thunar {#installation-of-thunar}

Install <span class="application">Thunar</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/thunar-4.20.8 &&
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
**Installed Programs:** <span class="segbody">Thunar (symlink to thunar), thunar, and thunar-settings</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libthunarx-3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/Thunar, /usr/include/thunarx-3, /usr/lib/Thunar, /usr/lib/thunarx-3, /usr/share/Thunar, /usr/share/doc/thunar-4.20.8, and /usr/share/gtk-doc/html/thunarx</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  <a id="thunar-prog"></a><span class="command"><span class="term"><strong>thunar</strong></span></span>                is the <span class="application">Xfce</span> file manager
  <a id="thunar-settings"></a><span class="command"><span class="term"><strong>thunar-settings</strong></span></span>   is a shell script that launches a dialog box to allow you to alter the behavior of <span class="application">Thunar</span>
  <a id="libthunarx-3"></a><span class="term"><code class="filename">libthunarx-3.so</code></span>         contains the <span class="application">Thunar</span> extension library which permits adding new features to the <span class="application">Thunar</span> file manager
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-panel.md "xfce4-panel-4.20.7")

    xfce4-panel-4.20.7

-   [Next](thunar-volman.md "thunar-volman-4.20.0")

    thunar-volman-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

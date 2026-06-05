<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4windowing.md "libxfce4windowing-4.20.6")

    libxfce4windowing-4.20.6

-   [Next](thunar.md "thunar-4.20.8")

    thunar-4.20.8

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-panel-4.20.7 {#xfce4-panel-4.20.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Panel {#introduction-to-xfce4-panel}

The <span class="application">Xfce4 Panel</span> package contains the <span class="application">Xfce4</span> Panel.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfce4-panel/4.20/xfce4-panel-4.20.7.tar.bz2">https://archive.xfce.org/src/xfce/xfce4-panel/4.20/xfce4-panel-4.20.7.tar.bz2</a>

-   Download MD5 sum: b24103b17c0acb902ad32137e40e5198

-   Download size: 2.3 MB

-   Estimated disk space required: 60 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Xfce4 Panel Dependencies

#### Required

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="exo.md" title="Exo-4.20.0">Exo-4.20.0</a>, <a class="xref" href="garcon.md" title="Garcon-4.20.0">Garcon-4.20.0</a>, <a class="xref" href="libwnck.md" title="libwnck-43.3">libwnck-43.3</a>, and <a class="xref" href="libxfce4windowing.md" title="libxfce4windowing-4.20.6">libxfce4windowing-4.20.6</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="ulink" href="https://launchpad.net/libdbusmenu">libdbusmenu</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/xfce4-panel">https://wiki.linuxfromscratch.org/blfs/wiki/xfce4-panel</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Panel {#installation-of-xfce4-panel}

Install <span class="application">Xfce4 Panel</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xfce4-panel, xfce4-popup-applicationsmenu, xfce4-popup-directorymenu, and xfce4-popup-windowmenu</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxfce4panel-2.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/xfce4/panel, /usr/include/xfce4/libxfce4panel-1.0, /usr/lib/xfce4/panel, /usr/share/gtk-doc/html/libxfce4panel-1.0 and /usr/share/xfce4/panel</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfce4-panel-prog"></a><span class="command"><span class="term"><strong>xfce4-panel</strong></span></span>                                is the <span class="application">Xfce</span> panel
  <a id="xfce4-popup-applicationsmenu"></a><span class="command"><span class="term"><strong>xfce4-popup-applicationsmenu</strong></span></span>   is a shell script that uses <span class="application">D-Bus</span> and <span class="application">Xfce Panel</span> to display a popup menu of the installed applications
  <a id="xfce4-popup-directorymenu"></a><span class="command"><span class="term"><strong>xfce4-popup-directorymenu</strong></span></span>         is a shell script that uses <span class="application">D-Bus</span> and <span class="application">Xfce Panel</span> to display a popup menu of your home folder and its subdirectories
  <a id="xfce4-popup-windowmenu"></a><span class="command"><span class="term"><strong>xfce4-popup-windowmenu</strong></span></span>               is a shell script that uses <span class="application">DBus</span> to display the <span class="application">Xfwm4</span> a popup menu
  <a id="libxfce4panel-2.0"></a><span class="term"><code class="filename">libxfce4panel-2.0.so</code></span>                         contains the <span class="application">Xfce Panel</span> API functions
  ---------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxfce4windowing.md "libxfce4windowing-4.20.6")

    libxfce4windowing-4.20.6

-   [Next](thunar.md "thunar-4.20.8")

    thunar-4.20.8

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

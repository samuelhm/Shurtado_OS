<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-session.md "lxqt-session-2.4.0")

    lxqt-session-2.4.0

-   [Next](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0")

    xdg-desktop-portal-lxqt-1.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-wayland-session-0.4.1 {#lxqt-wayland-session-0.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-wayland-session {#introduction-to-lxqt-wayland-session}

The <span class="application">lxqt-wayland-session</span> package contains the wayland based session manager for <span class="application">LXQt</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-wayland-session/releases/download/0.4.1/lxqt-wayland-session-0.4.1.tar.xz">https://github.com/lxqt/lxqt-wayland-session/releases/download/0.4.1/lxqt-wayland-session-0.4.1.tar.xz</a>

-   Download MD5 sum: 677cb8d34f2c2b7e16d5c7c62e0cea37

-   Download size: 360 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### lxqt-wayland-session Dependencies

#### Required

<a class="xref" href="lxqt-session.md" title="lxqt-session-2.4.0">lxqt-session-2.4.0</a>, <a class="xref" href="lxqt-layer-shell-qt.md" title="layer-shell-qt-6.6.5 for lxqt">layer-shell-qt-6.6.5 for lxqt</a>, and <a class="xref" href="qtxdg-tools.md" title="qtxdg-tools-4.4.0">qtxdg-tools-4.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-wayland-session {#installation-of-lxqt-wayland-session}

Install <span class="application">lxqt-wayland-session</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring lxqt-wayland-session {#configuring-lxqt-wayland-session}

Window Managers other than <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a> may be used, e.g. <a class="xref" href="../xfce/xfwm4.md" title="Xfwm4-4.20.0">Xfwm4-4.20.0</a>. Please note that <a class="xref" href="../x/icewm.md" title="IceWM-4.0.0">IceWM-4.0.0</a> is not a good substitute. <span class="application">Fluxbox</span> does work, although in this context (with <a class="xref" href="lxqt-config.md" title="lxqt-config-2.4.0">lxqt-config-2.4.0</a>), <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a> is better. The configuration file <code class="filename">/usr/share/lxqt/windowmanagers.conf</code> comes with many examples of Window Managers and the ones which are installed will appear in a drop down list of <span class="command"><strong>lxqt-config-session</strong></span>. For the ones not included in <code class="filename">/usr/share/lxqt/windowmanagers.conf</code>, you can use <span class="command"><strong>lxqt-config-session</strong></span>'s "search" button, e.g. for <a class="xref" href="../x/fluxbox.md" title="Fluxbox-1.3.7">Fluxbox-1.3.7</a>, navigating through the file system until you can choose <span class="command"><strong>fluxbox</strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lxqt-qdbus and startlxqtwayland</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/lxqt/wayland, and /usr/share/themes/Vent{,dark},</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------
  <a id="lxqt-qdbus"></a><span class="command"><span class="term"><strong>lxqt-qdbus</strong></span></span>               is a dbus wrapper for keybinds on wayland compositors.
  <a id="startlxqtwayland"></a><span class="command"><span class="term"><strong>startlxqtwayland</strong></span></span>   is used to start the desktop wayland session for <span class="application">LXQt</span>
  ---------------------------------------------------------------- -----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-session.md "lxqt-session-2.4.0")

    lxqt-session-2.4.0

-   [Next](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0")

    xdg-desktop-portal-lxqt-1.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

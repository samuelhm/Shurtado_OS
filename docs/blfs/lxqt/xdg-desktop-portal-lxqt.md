<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1")

    lxqt-wayland-session-0.4.1

-   [Next](obconf-qt.md "obconf-qt-0.16.5")

    obconf-qt-0.16.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdg-desktop-portal-lxqt-1.4.0 {#xdg-desktop-portal-lxqt-1.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdg-desktop-portal-lxqt {#introduction-to-xdg-desktop-portal-lxqt}

<span class="application">xdg-desktop-portal-lxqt</span> is a backend for <span class="application">xdg-desktop-portal</span>, that is using the Qt library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/xdg-desktop-portal-lxqt/releases/download/1.4.0/xdg-desktop-portal-lxqt-1.4.0.tar.xz">https://github.com/lxqt/xdg-desktop-portal-lxqt/releases/download/1.4.0/xdg-desktop-portal-lxqt-1.4.0.tar.xz</a>

-   Download MD5 sum: e624e0c130c2210a7e3a08ab6d9b6e04

-   Download size: 20 KB

-   Estimated disk space required: 3.3 MB

-   Estimated build time: 0.1 SBU
</div>

### xdg-desktop-portal-lxqt Dependencies

#### Required

<a class="xref" href="libfm-qt.md" title="libfm-qt-2.4.0">libfm-qt-2.4.0</a>, <a class="xref" href="lxqt-kwindowsystem.md" title="kwindowsystem-6.26.0 for lxqt">kwindowsystem-6.26.0 for lxqt</a>, and <a class="xref" href="../x/xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a> (at runtime)
</div>

<div class="installation" lang="en">
## Installation of xdg-desktop-portal-lxqt {#installation-of-xdg-desktop-portal-lxqt}

Install <span class="application">xdg-desktop-portal-lxqt</span> by running the following commands:

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

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xdg-desktop-portal-lxqt (in /usr/libexec)</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="application">/usr/share/xdg-desktop-portal (if no other <span class="segbody">xdg-desktop-portal</span> backend is installed)</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-wayland-session.md "lxqt-wayland-session-0.4.1")

    lxqt-wayland-session-0.4.1

-   [Next](obconf-qt.md "obconf-qt-0.16.5")

    obconf-qt-0.16.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

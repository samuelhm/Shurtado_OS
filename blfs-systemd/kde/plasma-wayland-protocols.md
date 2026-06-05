<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](polkit-qt.md "Polkit-Qt-0.201.1")

    Polkit-Qt-0.201.1

-   [Next](libdmtx.md "libdmtx-0.7.8")

    libdmtx-0.7.8

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# plasma-wayland-protocols-1.21.0 {#plasma-wayland-protocols-1.21.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Plasma-wayland-protocols {#introduction-to-the-plasma-wayland-protocols}

This package provides a custom set of Wayland protocol definitions for KDE.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma-wayland-protocols/plasma-wayland-protocols-1.21.0.tar.xz">https://download.kde.org/stable/plasma-wayland-protocols/plasma-wayland-protocols-1.21.0.tar.xz</a>

-   Download MD5 sum: 9a2f58d154a6cb514f60c59311e14559

-   Download size: 52 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Plasma-wayland-protocols Dependencies

#### Required

<a class="xref" href="extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>
</div>

<div class="installation" lang="en">
## Installation of Plasma-wayland-protocols {#installation-of-plasma-wayland-protocols}

Install <span class="application">Plasma-wayland-protocols</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr ..
```

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
**Installed Programs:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/plasma-wayland-protocols and /usr/lib/cmake/PlasmaWaylandProtocols</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](polkit-qt.md "Polkit-Qt-0.201.1")

    Polkit-Qt-0.201.1

-   [Next](libdmtx.md "libdmtx-0.7.8")

    libdmtx-0.7.8

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

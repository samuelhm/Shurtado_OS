<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0")

    Phonon-backend-vlc-0.12.0

-   [Next](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0")

    plasma-wayland-protocols-1.21.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Polkit-Qt-0.201.1 {#polkit-qt-0.201.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Polkit-Qt {#introduction-to-polkit-qt}

<span class="application">Polkit-Qt</span> provides an API to PolicyKit in the Qt environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/polkit-qt-1/polkit-qt-1-0.201.1.tar.xz">https://download.kde.org/stable/polkit-qt-1/polkit-qt-1-0.201.1.tar.xz</a>

-   Download MD5 sum: 0b255fb033de543c3010ebec33f4d233

-   Download size: 58 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.1 SBU
</div>

### Polkit-Qt Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of Polkit-Qt {#installation-of-polkit-qt}

Install <span class="application">Polkit-Qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D QT_MAJOR_VERSION=6        \
      -W no-dev .. &&
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

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpolkit-qt6-agent-1.so, libpolkit-qt6-core-1.so, and libpolkit-qt6-gui-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/polkit-qt6-1 and /usr/lib/cmake/PolkitQt6-1</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0")

    Phonon-backend-vlc-0.12.0

-   [Next](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0")

    plasma-wayland-protocols-1.21.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

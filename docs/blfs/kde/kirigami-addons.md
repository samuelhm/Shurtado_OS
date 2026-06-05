<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](plasma.md "KDE Plasma")

    KDE Plasma

-   [Next](pulseaudio-qt.md "pulseaudio-qt-1.8.1")

    pulseaudio-qt-1.8.1

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kirigami-addons-1.12.1 {#kirigami-addons-1.12.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kirigami-addons {#introduction-to-kirigami-addons}

This package provides additional QML files for the Kirigami framework.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/kirigami-addons/kirigami-addons-1.12.1.tar.xz">https://download.kde.org/stable/kirigami-addons/kirigami-addons-1.12.1.tar.xz</a>

-   Download MD5 sum: cfc77067a7a30c1a45b47174754469f6

-   Download size: 2.7 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 0.7 SBU (Using parallelism=4)
</div>

### kirigami-addons Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>

#### Recommended

<a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of kirigami-addons {#installation-of-kirigami-addons}

Install <span class="application">kirigami-addons</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
       ..                                 &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/lib/qml/org/kde/kirigamiaddons and \$KF6_PREFIX/lib/cmake/KF6KirigamiAddons</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](plasma.md "KDE Plasma")

    KDE Plasma

-   [Next](pulseaudio-qt.md "pulseaudio-qt-1.8.1")

    pulseaudio-qt-1.8.1

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

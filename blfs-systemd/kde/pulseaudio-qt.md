<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](kirigami-addons.md "kirigami-addons-1.12.1")

    kirigami-addons-1.12.1

-   [Next](qtkeychain.md "qtkeychain-0.16.0")

    qtkeychain-0.16.0

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pulseaudio-qt-1.8.1 {#pulseaudio-qt-1.8.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to pulseaudio-qt {#introduction-to-pulseaudio-qt}

This package is a Qt-based wrapper for <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>. It allows for querying and manipulating various PulseAudio objects, including Sinks, Sources, and Streams. It does not wrap the full feature set of libpulse, but rather only what is needed for KDE.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/pulseaudio-qt/pulseaudio-qt-1.8.1.tar.xz">https://download.kde.org/stable/pulseaudio-qt/pulseaudio-qt-1.8.1.tar.xz</a>

-   Download MD5 sum: fa37fbba12097a6ff276f0a29ddec20f

-   Download size: 44 KB

-   Estimated disk space required: 8.5 MB

-   Estimated build time: 0.3 SBU
</div>

### Konsole Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>
</div>

<div class="installation" lang="en">
## Installation of pulseaudio-qt {#installation-of-pulseaudio-qt}

Install <span class="application">pulseaudio-qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_PREFIX_PATH=$QT6DIR        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON      \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      .. &&
make
```

Now as the <code class="systemitem">root</code> user:

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
**Installed Libraries:** <span class="segbody">libKF6PulseAudioQt.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/lib/cmake/KF6PulseAudioQt and \$KF6_PREFIX/include/KF6/KF6PulseAudioQt</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kirigami-addons.md "kirigami-addons-1.12.1")

    kirigami-addons-1.12.1

-   [Next](qtkeychain.md "qtkeychain-0.16.0")

    qtkeychain-0.16.0

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

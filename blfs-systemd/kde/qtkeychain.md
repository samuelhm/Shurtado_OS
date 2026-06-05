<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](pulseaudio-qt.md "pulseaudio-qt-1.8.1")

    pulseaudio-qt-1.8.1

-   [Next](kquickimageeditor.md "kquickimageeditor-0.6.1")

    kquickimageeditor-0.6.1

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qtkeychain-0.16.0 {#qtkeychain-0.16.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qtkeychain {#introduction-to-qtkeychain}

This package provides a Qt API to store passwords and other secret data securely.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/frankosterfeld/qtkeychain/archive/0.16.0/qtkeychain-0.16.0.tar.gz">https://github.com/frankosterfeld/qtkeychain/archive/0.16.0/qtkeychain-0.16.0.tar.gz</a>

-   Download MD5 sum: f97ec6ec37a465abdea63c2def01f280

-   Download size: 64 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
</div>

### qtkeychain Dependencies

#### Required

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of qtkeychain {#installation-of-qtkeychain}

Install <span class="application">qtkeychain</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR \
      -D CMAKE_BUILD_TYPE=Release     \
      -D BUILD_WITH_QT6=ON            \
      -D BUILD_TESTING=OFF            \
      -W no-dev ..                    &&
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
**Installed Libraries:** <span class="segbody">libqt6keychain.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$QT6DIR/include/qt6keychain, \$QT6DIR/lib/cmake/Qt6Keychain, and \$QT6DIR/share/qt6keychain</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pulseaudio-qt.md "pulseaudio-qt-1.8.1")

    pulseaudio-qt-1.8.1

-   [Next](kquickimageeditor.md "kquickimageeditor-0.6.1")

    kquickimageeditor-0.6.1

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

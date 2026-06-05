<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](qtkeychain.md "qtkeychain-0.16.0")

    qtkeychain-0.16.0

-   [Next](bolt.md "bolt-0.9.11")

    bolt-0.9.11

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kquickimageeditor-0.6.1 {#kquickimageeditor-0.6.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kquickimageeditor {#introduction-to-kquickimageeditor}

This package provides a set of QtQuick components providing basic image editing capabilities.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KDE/kquickimageeditor/archive/v0.6.1/kquickimageeditor-0.6.1.tar.gz">https://github.com/KDE/kquickimageeditor/archive/v0.6.1/kquickimageeditor-0.6.1.tar.gz</a>

-   Download MD5 sum: 26e15ed5f8da5b938c8db52b63830588

-   Download size: 4.3 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### kquickimageeditor Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>

#### Optional

<a class="xref" href="../general/opencv.md" title="opencv-4.13.0">opencv-4.13.0</a>
</div>

<div class="installation" lang="en">
## Installation of kquickimageeditor {#installation-of-kquickimageeditor}

Install <span class="application">kquickimageeditor</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev ..                        &&
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
**Installed Libraries:** <span class="segbody">libKQuickImageEditor.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/KQuickImageEditor, \$KF6_PREFIX/include/kquickimageeditor, \$KF6_PREFIX/lib/cmake/KQuickImageEditor, and \$KF6_PREFIX/lib/qml/org/kde/kquickimageeditor</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qtkeychain.md "qtkeychain-0.16.0")

    qtkeychain-0.16.0

-   [Next](bolt.md "bolt-0.9.11")

    bolt-0.9.11

-   [Up](plasma.md "Chapter 32. KDE Plasma")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

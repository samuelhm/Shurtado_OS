<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](imlib2.md "imlib2-1.12.6")

    imlib2-1.12.6

-   [Next](kimageannotator.md "kImageAnnotator-0.7.2")

    kImageAnnotator-0.7.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kColorPicker-0.3.1 {#kcolorpicker-0.3.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kColorPicker {#introduction-to-kcolorpicker}

kColorPicker is a QToolButton library with a color popup menu, which lets you select colors. The popup menu features a color dialog button which can be used to add custom colors to the popup menu.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ksnip/kColorPicker/archive/v0.3.1/kColorPicker-0.3.1.tar.gz">https://github.com/ksnip/kColorPicker/archive/v0.3.1/kColorPicker-0.3.1.tar.gz</a>

-   Download MD5 sum: 1efc91252446af0d7e5c467ea7d517e7

-   Download size: 16 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### kColorPicker Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of kColorPicker {#installation-of-kcolorpicker}

Install <span class="application">kColorPicker</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON      \
      -D BUILD_WITH_QT6=ON         \
      .. &&
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
**Installed Libraries:** <span class="segbody">libkColorPicker.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/kColorPicker</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](imlib2.md "imlib2-1.12.6")

    imlib2-1.12.6

-   [Next](kimageannotator.md "kImageAnnotator-0.7.2")

    kImageAnnotator-0.7.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

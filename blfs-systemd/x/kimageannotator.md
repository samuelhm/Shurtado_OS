<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](kcolorpicker.md "kColorPicker-0.3.1")

    kColorPicker-0.3.1

-   [Next](keybinder-3.md "keybinder-3.0-0.3.2")

    keybinder-3.0-0.3.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kImageAnnotator-0.7.2 {#kimageannotator-0.7.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kImageAnnotator {#introduction-to-kimageannotator}

kImageAnnotator is a tool for annotating images.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ksnip/kImageAnnotator/archive/v0.7.2/kImageAnnotator-0.7.2.tar.gz">https://github.com/ksnip/kImageAnnotator/archive/v0.7.2/kImageAnnotator-0.7.2.tar.gz</a>

-   Download MD5 sum: 12811a2611613152b8dccc266a8f4804

-   Download size: 268 KB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
</div>

### kImageAnnotator Dependencies

#### Required

<a class="xref" href="kcolorpicker.md" title="kColorPicker-0.3.1">kcolorpicker-0.3.1</a>
</div>

<div class="installation" lang="en">
## Installation of kImageAnnotator {#installation-of-kimageannotator}

Install <span class="application">kImageAnnotator</span> by running the following commands:

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
**Installed Libraries:** <span class="segbody">libkImageAnnotator.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/kImageAnnotator-Qt6, /usr/lib/cmake/kImageAnnotator-Qt6, and /usr/share/kImageAnnotator</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kcolorpicker.md "kColorPicker-0.3.1")

    kColorPicker-0.3.1

-   [Next](keybinder-3.md "keybinder-3.0-0.3.2")

    keybinder-3.0-0.3.2

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

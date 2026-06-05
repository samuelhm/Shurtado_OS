<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](lxde-icon-theme.md "lxde-icon-theme-0.5.1")

    lxde-icon-theme-0.5.1

-   [Next](../kde/kde.md "KDE")

    KDE

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# oxygen-icons-6.1.0 {#oxygen-icons-6.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to oxygen-icons {#introduction-to-oxygen-icons}

The oxygen icons theme is a photo-realistic icon style, with a high standard of graphics quality.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/oxygen-icons/oxygen-icons-6.1.0.tar.xz">https://download.kde.org/stable/oxygen-icons/oxygen-icons-6.1.0.tar.xz</a>

-   Download MD5 sum: b04f533b89d0412e9583ce70229c7077

-   Download size: 233 MB

-   Estimated disk space required: 454 MB

-   Estimated build time: less than 0.1 SBU
</div>

### oxygen-icons Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a> and <a class="xref" href="qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of oxygen-icons {#installation-of-oxygen-icons}

First, enable scalable icons:

```bash
sed -i '/( oxygen/ s/)/scalable )/' CMakeLists.txt
```

Install <span class="application">oxygen-icons</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -W no-dev ..
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
**Installed Programs:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/icons/oxygen</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxde-icon-theme.md "lxde-icon-theme-0.5.1")

    lxde-icon-theme-0.5.1

-   [Next](../kde/kde.md "KDE")

    KDE

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

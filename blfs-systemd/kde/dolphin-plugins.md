<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](dolphin.md "dolphin-26.04.1")

    dolphin-26.04.1

-   [Next](kddockwidgets.md "KDDockWidgets-2.4.0")

    KDDockWidgets-2.4.0

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dolphin-plugins-26.04.1 {#dolphin-plugins-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dolphin-plugins {#introduction-to-dolphin-plugins}

The <span class="application">dolphin-plugins</span> package provides extra plugins for the dolphin file manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/dolphin-plugins-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/dolphin-plugins-26.04.1.tar.xz</a>

-   Download MD5 sum: 637868449572455b2b05b5608b9c7268

-   Download size: 332 KB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
</div>

### dolphin-plugins Dependencies

#### Required

<a class="xref" href="dolphin.md" title="dolphin-26.04.1">dolphin-26.04.1</a>
</div>

<div class="installation" lang="en">
## Installation of dolphin-plugins {#installation-of-dolphin-plugins}

Install <span class="application">dolphin-plugins</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
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
**Installed Libraries:** <span class="segbody">In \$KF6_PREFIX/lib/plugins/dolphin/vcs/: fileviewsvnplugin.so, fileviewgitplugin.so, fileviewbazaarplugin.so, fileviewdropboxplugin.so, fileviewhgplugin.so, makefileactions.so, and mountisoaction.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dolphin.md "dolphin-26.04.1")

    dolphin-26.04.1

-   [Next](kddockwidgets.md "KDDockWidgets-2.4.0")

    KDDockWidgets-2.4.0

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](dolphin-plugins.md "dolphin-plugins-26.04.1")

    dolphin-plugins-26.04.1

-   [Next](kdenlive.md "kdenlive-26.04.1")

    kdenlive-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# KDDockWidgets-2.4.0 {#kddockwidgets-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to KDDockWidgets {#introduction-to-kddockwidgets}

The <span class="application">KDDockWidgets</span> package provides Qt dock widgets that are suitable for replacing QDockWidget and implementing advanced functionality that is missing from Qt.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KDAB/KDDockWidgets/releases/download/v2.4.0/KDDockWidgets-2.4.0.tar.gz">https://github.com/KDAB/KDDockWidgets/releases/download/v2.4.0/KDDockWidgets-2.4.0.tar.gz</a>

-   Download MD5 sum: 6ad73ca8501c207d99116210054814aa

-   Download size: 5.4 MB

-   Estimated disk space required: 117 MB

-   Estimated build time: 0.6 SBU (using parallelism=4)
</div>

### KDDockWidgets Dependencies

#### Required

<a class="xref" href="../general/fmt.md" title="fmt-12.1.0">fmt-12.1.0</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>

#### Optional

<a class="ulink" href="https://github.com/KDAB/KDBindings">KDBindings</a>, <a class="ulink" href="https://github.com/nlohmann/json">nlohmann_json</a>, and <a class="ulink" href="https://github.com/gabime/spdlog">spdlog</a>
</div>

<div class="installation" lang="en">
## Installation of KDDockWidgets {#installation-of-kddockwidgets}

Install <span class="application">KDDockWidgets</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
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
**Installed Libraries:** <span class="segbody">libkddockwidgets-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/cmake/KDDockWidgets-qt6, \$KF6_PREFIX/include/kddockwidgets-qt6, and \$KF6_PREFIX/share/doc/kddockwidgets</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------
  <a id="libkddockwidgets-qt6.so"></a><span class="term">libkddockwidgets-qt6.so</span>   is a library containing Qt-based dock widgets
  -------------------------------------------------------------- -----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dolphin-plugins.md "dolphin-plugins-26.04.1")

    dolphin-plugins-26.04.1

-   [Next](kdenlive.md "kdenlive-26.04.1")

    kdenlive-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](adwaita-icon-theme.md "adwaita-icon-theme-50.0")

    adwaita-icon-theme-50.0

-   [Next](gnome-icon-theme.md "gnome-icon-theme-3.12.0")

    gnome-icon-theme-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# breeze-icons-6.26.0 {#breeze-icons-6.26.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Breeze Icons {#introduction-to-breeze-icons}

The <span class="application">Breeze Icons</span> package contains the default icons for <span class="application">KDE Plasma</span> applications, but it can be used for other window environments.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/breeze-icons-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/breeze-icons-6.26.0.tar.xz</a>

-   Download MD5 sum: 0a8a87904eab97f3f3c8dffb82756db1

-   Download size: 2.0 MB

-   Estimated disk space required: 141 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Breeze Icons Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a> and <a class="xref" href="qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional

<a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a>
</div>

<div class="installation" lang="en">
## Installation of Breeze Icons {#installation-of-breeze-icons}

Install <span class="application">Breeze Icons</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_TESTING=OFF         \
      -D WITH_ICON_GENERATION=OFF  \
      -W no-dev ..                 &&
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

*`-D BUILD_TESTING=OFF`*: This parameter disables building the testing framework, which requires some modules from <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>.

*`-D WITH_ICON_GENERATION=OFF`*: This parameter disables generation of 24x24 dark icons, which requires the <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a> python module. This parameter can be removed if <a class="xref" href="../general/python-modules.md#lxml" title="lxml-6.1.1">lxml-6.1.1</a> is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6BreezeIcons.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/KF6/BreezeIcons, /usr/lib/cmake/KF6BreezeIcons, and /usr/share/icons/breeze{,-dark}</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](adwaita-icon-theme.md "adwaita-icon-theme-50.0")

    adwaita-icon-theme-50.0

-   [Next](gnome-icon-theme.md "gnome-icon-theme-3.12.0")

    gnome-icon-theme-3.12.0

-   [Up](icons.md "Chapter 28. Icons")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

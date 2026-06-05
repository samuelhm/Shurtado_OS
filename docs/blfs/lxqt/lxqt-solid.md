<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kconfig.md "kconfig-6.26.0 for lxqt")

    kconfig-6.26.0 for lxqt

-   [Next](lxqt-kidletime.md "kidletime-6.26.0 for lxqt")

    kidletime-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# solid-6.26.0 for lxqt {#solid-6.26.0-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to solid {#introduction-to-solid}

<span class="application">Solid</span> is a device integration framework. It provides a way of querying and interacting with hardware independently of the underlying operating system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

This package is extracted from the KF6 set of packages. If <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> is built, do <span class="bold"><strong>NOT</strong></span> also build this package as presented here.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/solid-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/solid-6.26.0.tar.xz</a>

-   Download MD5 sum: dc8d2c5864ace71f21fd4283014d9bf1

-   Download size: 308 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.5 SBU (Using parallelism=4)
</div>

### solid Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a> and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional (runtime)

<a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>, <a class="ulink" href="https://libimobiledevice.org/">libimobiledevice</a>, and <a class="ulink" href="http://www.freedesktop.org/wiki/Software/media-player-info">media-player-info</a>
</div>

<div class="installation" lang="en">
## Installation of solid {#installation-of-solid}

Install <span class="application">solid</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_INSTALL_LIBEXECDIR=libexec \
      -D KDE_INSTALL_USE_QT_SYS_PATHS=ON  \
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
**Installed Programs:** <span class="segbody">solid-hardware6</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6Solid.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KF6/Solid and /usr/lib/cmake/KF6Solid</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------
  <a id="lxqt-solid-solid-hardware6"></a><span class="command"><span class="term"><strong>solid-hardware6</strong></span></span>   queries hardware information from the system
  <a id="lxqt-solid-lib"></a><span class="term"><code class="filename">libKF6Solid.so</code></span>                   provides a way of querying and interacting with hardware independently of the underlying operating system
  ------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-kconfig.md "kconfig-6.26.0 for lxqt")

    kconfig-6.26.0 for lxqt

-   [Next](lxqt-kidletime.md "kidletime-6.26.0 for lxqt")

    kidletime-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

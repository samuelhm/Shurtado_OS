<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-solid.md "solid-6.26.0 for lxqt")

    solid-6.26.0 for lxqt

-   [Next](lxqt-kwayland.md "kwayland-6.6.5 for lxqt")

    kwayland-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kidletime-6.26.0 for lxqt {#kidletime-6.26.0-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kidletime {#introduction-to-kidletime}

KIdleTime is used to report the idle time of users and the system. It is useful not only for determining the current idle time of the PC, but also for getting notified upon idle time events, such as custom timeouts or user activity.

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
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/kidletime-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/kidletime-6.26.0.tar.xz</a>

-   Download MD5 sum: 9c173c895f89c904154063c361d9bae4

-   Download size: 32 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.2 SBU
</div>

### kidletime Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../kde/plasma-wayland-protocols.md" title="plasma-wayland-protocols-1.21.0">plasma-wayland-protocols-1.21.0</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of kidletime {#installation-of-kidletime}

Install <span class="application">kidletime</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6IdleTime.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KF6/KIdleTime, /usr/lib/cmake/KF6IdleTime, and \$QT6DIR/lib/plugins/kf6/org.kde.kidletime.platforms</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------
  <a id="lxqt-kidletime-lib"></a><span class="term"><code class="filename">libKF6IdleTime.so</code></span>   contains the KDE API for idle time reports
  ---------------------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-solid.md "solid-6.26.0 for lxqt")

    solid-6.26.0 for lxqt

-   [Next](lxqt-kwayland.md "kwayland-6.6.5 for lxqt")

    kwayland-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

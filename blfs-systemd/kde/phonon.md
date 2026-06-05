<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0")

    Extra-CMake-Modules-6.26.0

-   [Next](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0")

    Phonon-backend-vlc-0.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Phonon-4.12.0 {#phonon-4.12.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Phonon {#introduction-to-phonon}

<span class="application">Phonon</span> is the multimedia API for KDE. It replaces the old <span class="application">aRts</span> package. Phonon needs the VLC backend.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/phonon/4.12.0/phonon-4.12.0.tar.xz">https://download.kde.org/stable/phonon/4.12.0/phonon-4.12.0.tar.xz</a>

-   Download MD5 sum: e80e9c73967080016bdb3c0ee514ceab

-   Download size: 400 KB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Phonon Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Required at runtime

<a class="xref" href="phonon-backend-vlc.md" title="Phonon-backend-vlc-0.12.0">phonon-backend-vlc-0.12.0</a> needs to be installed afterwards for multimedia operations in <span class="application">KDE</span> to work correctly.

#### Optional

<a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>
</div>

<div class="installation" lang="en">
## Installation of Phonon {#installation-of-phonon}

Install <span class="application">Phonon</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PHONON_BUILD_QT5=OFF      \
      -W no-dev .. &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.

*`-D PHONON_BUILD_QT5=OFF`*: This switch is needed to prevent building the <span class="application">Qt5</span> bindings, which fails if <span class="application">Qt5</span> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">phononsettings</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libphonon4qt6.so and libphonon4qt6experimental.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/phonon4qt6, /usr/lib/cmake/phonon4qt6, and /usr/lib/plugins/designer</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="phononsettings"></a><span class="command"><span class="term"><strong>phononsettings</strong></span></span>                         provides a graphical interface to set the default audio device for several different types of playback, including for communications, games, and more
  <a id="libphonon4qt6"></a><span class="term"><code class="filename">libphonon4qt6.so</code></span>                           contains functions that provide the multimedia API used by KDE
  <a id="libphonon4qt6experimental"></a><span class="term"><code class="filename">libphonon4qt6experimental.so</code></span>   contains several experimental functions for use with KDE
  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0")

    Extra-CMake-Modules-6.26.0

-   [Next](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0")

    Phonon-backend-vlc-0.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

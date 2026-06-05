<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](phonon.md "Phonon-4.12.0")

    Phonon-4.12.0

-   [Next](polkit-qt.md "Polkit-Qt-0.201.1")

    Polkit-Qt-0.201.1

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Phonon-backend-vlc-0.12.0 {#phonon-backend-vlc-0.12.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Phonon-backend-vlc {#introduction-to-the-phonon-backend-vlc}

This package provides a <span class="application">Phonon</span> backend which utilizes the <span class="application">VLC</span> media framework.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/phonon/phonon-backend-vlc/0.12.0/phonon-backend-vlc-0.12.0.tar.xz">https://download.kde.org/stable/phonon/phonon-backend-vlc/0.12.0/phonon-backend-vlc-0.12.0.tar.xz</a>

-   Download MD5 sum: 2a27b5d249f97a15040481008fb16e1b

-   Download size: 72 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: 0.2 SBU
</div>

### Phonon-backend-vlc Dependencies

#### Required

<a class="xref" href="phonon.md" title="Phonon-4.12.0">phonon-4.12.0</a> and <a class="xref" href="../multimedia/vlc.md" title="VLC-3.0.23">VLC-3.0.23</a> (gui is not needed)
</div>

<div class="installation" lang="en">
## Installation of Phonon-backend-vlc {#installation-of-phonon-backend-vlc}

Install <span class="application">Phonon-backend-vlc</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PHONON_BUILD_QT5=OFF      \
      .. &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of compiler optimizations.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">phonon_vlc_qt6.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/plugins/phonon4qt6_backend</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](phonon.md "Phonon-4.12.0")

    Phonon-4.12.0

-   [Next](polkit-qt.md "Polkit-Qt-0.201.1")

    Polkit-Qt-0.201.1

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

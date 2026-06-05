<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kddockwidgets.md "KDDockWidgets-2.4.0")

    KDDockWidgets-2.4.0

-   [Next](kmix.md "KMix-26.04.1")

    KMix-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kdenlive-26.04.1 {#kdenlive-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Kdenlive {#introduction-to-kdenlive}

The <span class="application">Kdenlive</span> package is a KDE Frameworks-based video editor that can handle numerous video and audio codecs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/kdenlive-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/kdenlive-26.04.1.tar.xz</a>

-   Download MD5 sum: deea1c1ea799b03f8afc43983982403d

-   Download size: 19 MB

-   Estimated disk space required: 387 MB

-   Estimated build time: 3.5 SBU (using parallelism=4)
</div>

### Kdenlive Dependencies

#### Required

<a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="kddockwidgets.md" title="KDDockWidgets-2.4.0">KDDockWidgets-2.4.0</a>, <a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../multimedia/mlt.md" title="MLT-7.38.0">MLT-7.38.0</a>, <a class="xref" href="../general/opentimelineio.md" title="OpenTimelineIO-0.18.1">OpenTimelineIO-0.18.1</a>, and <a class="xref" href="../multimedia/v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a> (runtime)

#### Recommended

<a class="xref" href="../x/breeze-icons.md" title="breeze-icons-6.26.0">breeze-icons-6.26.0</a>

#### Optional

<a class="ulink" href="https://glfs-book.github.io/slfs/general/ladspa-sdk.md">LADSPA-SDK</a>, and <a class="ulink" href="https://glfs-book.github.io/slfs/general/noise-suppression.md">Noise-Suppression</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Kdenlive {#installation-of-kdenlive}

Install <span class="application">Kdenlive</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
make
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The build process will download a Git repository of <span class="application">OpenTimelineIO</span>, totaling around 100 MB. Configuration will seem to hang right after <span class="command"><strong>cmake</strong></span> begins running. This is normal, it is fetching that Git repository. If it hangs for a while, it's most likely due to a poor download speed during the download process. The *`-D FETCH_OTIO`* CMake option should be omitted if you have installed the <span class="application">OpenTimelineIO</span> package.
</div>

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
**Installed Programs:** <span class="segbody">kdenlive and kdenlive_render</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">mltpreview.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/doc/HTML/\*/kdenlive and \$KF6_PREFIX/share/kdenlive</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="kdenlive-prog"></a><span class="command"><span class="term"><strong>kdenlive</strong></span></span>            is an open source non-linear video editor which supports numerous audio and video codecs
  <a id="kdenlive_render"></a><span class="command"><span class="term"><strong>kdenlive_render</strong></span></span>   is a render program for <span class="command"><strong>kdenlive</strong></span>
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kddockwidgets.md "KDDockWidgets-2.4.0")

    KDDockWidgets-2.4.0

-   [Next](kmix.md "KMix-26.04.1")

    KMix-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

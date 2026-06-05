<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kdenlive.md "kdenlive-26.04.1")

    kdenlive-26.04.1

-   [Next](khelpcenter.md "khelpcenter-26.04.1")

    khelpcenter-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# KMix-26.04.1 {#kmix-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to KMix {#introduction-to-kmix}

The <span class="application">KMix</span> package contains a KDE Frameworks-based Sound Mixer that integrates nicely with <span class="application">Plasma</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/kmix-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/kmix-26.04.1.tar.xz</a>

-   Download MD5 sum: be4073a003b1f8d6f707549337cb158c

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
</div>

### KMix Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>

#### Recommended

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

#### Optional

<a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a> and <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>
</div>

<div class="installation" lang="en">
## Installation of KMix {#installation-of-kmix}

Install <span class="application">KMix</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">kmix, kmixctrl, and kmixremote</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkmixcore.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/kmix and \$KF6_PREFIX/share/doc/HTML/\*/kmix</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  <a id="kmix-prog"></a><span class="command"><span class="term"><strong>kmix</strong></span></span>          is a small audio mixer for KDE that integrates into Plasma
  <a id="kmixctrl"></a><span class="command"><span class="term"><strong>kmixctrl</strong></span></span>       is used to save and/or restore the settings that <span class="command"><strong>kmix</strong></span> has set
  <a id="kmixremote"></a><span class="command"><span class="term"><strong>kmixremote</strong></span></span>   is a utility to mute, get, or set volume levels on the system. It can be run over SSH to adjust the volume on a remote system
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kdenlive.md "kdenlive-26.04.1")

    kdenlive-26.04.1

-   [Next](khelpcenter.md "khelpcenter-26.04.1")

    khelpcenter-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

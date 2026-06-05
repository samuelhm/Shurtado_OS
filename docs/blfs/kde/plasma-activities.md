<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkexiv2.md "libkexiv2-26.04.1")

    libkexiv2-26.04.1

-   [Next](plasma-activities-stats.md "plasma-activities-stats-6.6.5")

    plasma-activities-stats-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# plasma-activities-6.6.5 {#plasma-activities-6.6.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to plasma-activities-6.6.5 {#introduction-to-plasma-activities-6.6.5}

The <span class="application">plasma-activities</span> package provides core components for the KDE Activities system. It is normally built with <a class="xref" href="plasma-all.md" title="Building Plasma">Plasma-6.6.5</a>, but it is included here because it is needed for <a class="xref" href="okular.md" title="okular-26.04.1">okular-26.04.1</a> and <a class="xref" href="kio-extras.md" title="kio-extras-26.04.1">kio-extras-26.04.1</a> if <a class="xref" href="plasma-all.md" title="Building Plasma">Plasma-6.6.5</a> is not built yet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma/6.6.5/plasma-activities-6.6.5.tar.xz">https://download.kde.org/stable/plasma/6.6.5/plasma-activities-6.6.5.tar.xz</a>

-   Download MD5 sum: 779d53a76bf71addcc9160cd778886fc

-   Download size: 64 KB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
</div>

### plasma-activities Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>
</div>

<div class="installation" lang="en">
## Installation of plasma-activities {#installation-of-plasma-activities}

Install <span class="application">plasma-activities</span> by running the following commands:

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
**Installed Program:** <span class="segbody">plasma-activities-cli6</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libPlasmaActivities.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/PlasmaActivities, \$KF6_PREFIX/lib/cmake/PlasmaActivities, and \$KF6_PREFIX/share/share/qlogging-categories6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------
  <a id="plasma-activities-prog"></a><span class="command"><span class="term"><strong>plasma-activities-cli6</strong></span></span>   is the activity manager for KDE applications
  ---------------------------------------------------------------------------- ----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libkexiv2.md "libkexiv2-26.04.1")

    libkexiv2-26.04.1

-   [Next](plasma-activities-stats.md "plasma-activities-stats-6.6.5")

    plasma-activities-stats-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

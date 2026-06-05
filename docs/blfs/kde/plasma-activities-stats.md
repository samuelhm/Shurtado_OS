<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](plasma-activities.md "plasma-activities-6.6.5")

    plasma-activities-6.6.5

-   [Next](kio-extras.md "kio-extras-26.04.1")

    kio-extras-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# plasma-activities-stats-6.6.5 {#plasma-activities-stats-6.6.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to plasma-activities-stats-6.6.5 {#introduction-to-plasma-activities-stats-6.6.5}

The <span class="application">plasma-activities-stats</span> package provides access to the usage data collected by the KDE Activities system. It is normally built with <a class="xref" href="plasma-all.md" title="Building Plasma">Plasma-6.6.5</a>, but it is included here because it is needed for <a class="xref" href="kio-extras.md" title="kio-extras-26.04.1">kio-extras-26.04.1</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma/6.6.5/plasma-activities-stats-6.6.5.tar.xz">https://download.kde.org/stable/plasma/6.6.5/plasma-activities-stats-6.6.5.tar.xz</a>

-   Download MD5 sum: 0834ef652f0161d6d16dc5365a0471da

-   Download size: 84 KB

-   Estimated disk space required: 4.3 MB

-   Estimated build time: 0.1 SBU
</div>

### plasma-activities Dependencies

#### Required

<a class="xref" href="plasma-activities.md" title="plasma-activities-6.6.5">plasma-activities-6.6.5</a>
</div>

<div class="installation" lang="en">
## Installation of plasma-activities-stats {#installation-of-plasma-activities-stats}

Install <span class="application">plasma-activities-stats</span> by running the following commands:

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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libPlasmaActivitiesStats.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/PlasmaActivitiesStats and \$KF6_PREFIX/lib/cmake/PlasmaActivitiesStats</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](plasma-activities.md "plasma-activities-6.6.5")

    plasma-activities-6.6.5

-   [Next](kio-extras.md "kio-extras-26.04.1")

    kio-extras-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

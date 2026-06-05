<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](ark.md "ark-26.04.1")

    ark-26.04.1

-   [Next](dolphin-plugins.md "dolphin-plugins-26.04.1")

    dolphin-plugins-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dolphin-26.04.1 {#dolphin-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dolphin {#introduction-to-dolphin}

The <span class="application">dolphin</span> package is a KDE Frameworks-based file manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/dolphin-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/dolphin-26.04.1.tar.xz</a>

-   Download MD5 sum: 2e90e8c8008977b5fb59a795587ee012

-   Download size: 5.6 MB

-   Estimated disk space required: 99 MB

-   Estimated build time: 0.9 SBU (using parallelism=4)
</div>

### dolphin Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="phonon.md" title="Phonon-4.12.0">phonon-4.12.0</a>

#### Optional

<a class="ulink" href="https://download.kde.org/stable/release-service">baloo-widgets</a> (for the metadata features of Dolphin) and <a class="ulink" href="https://www.freedesktop.org/software/PackageKit/releases/">packagekit-qt</a>

#### Optional (Runtime)

<a class="xref" href="kio-extras.md" title="kio-extras-26.04.1">kio-extras-26.04.1</a> (for mounting SMB shares)
</div>

<div class="installation" lang="en">
## Installation of dolphin {#installation-of-dolphin}

Install <span class="application">dolphin</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">dolphin</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdolphinvcs.so and libdolphinprivate.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/Dolphin, \$KF6_PREFIX/lib/cmake/DolphinVcs, \$KF6_PREFIX/lib/plugins/dolphin, and \$KF6_PREFIX/share/doc/HTML/\*/dolphin</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ----------------------------------------
  <a id="dolphin-prog"></a><span class="command"><span class="term"><strong>dolphin</strong></span></span>   is a KDE Frameworks-based file manager
  --------------------------------------------------- ----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ark.md "ark-26.04.1")

    ark-26.04.1

-   [Next](dolphin-plugins.md "dolphin-plugins-26.04.1")

    dolphin-plugins-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

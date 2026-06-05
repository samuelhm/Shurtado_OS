<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](plasma-activities-stats.md "plasma-activities-stats-6.6.5")

    plasma-activities-stats-6.6.5

-   [Next](okular.md "okular-26.04.1")

    okular-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kio-extras-26.04.1 {#kio-extras-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kio-extras {#introduction-to-kio-extras}

The <span class="application">kio-extras</span> package contains additional components to increase the functionality of the KDE resource and network access abstractions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/kio-extras-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/kio-extras-26.04.1.tar.xz</a>

-   Download MD5 sum: 48cab927f6abf6083536f568fbe5c2e6

-   Download size: 5.3 MB

-   Estimated disk space required: 95 MB

-   Estimated build time: 0.5 SBU (using parallelism=4)
</div>

### kio-extras Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="../basicnet/kdsoap-ws-discovery-client.md" title="kdsoap-ws-discovery-client-0.4.0">kdsoap-ws-discovery-client-0.4.0</a>, <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="plasma-activities-stats.md" title="plasma-activities-stats-6.6.5">plasma-activities-stats-6.6.5</a>, and <a class="xref" href="../general/qcoro.md" title="qcoro-0.13.0">qcoro-0.13.0</a>

#### Recommended

<a class="xref" href="libkexiv2.md" title="libkexiv2-26.04.1">libkexiv2-26.04.1</a>

#### Optional

<a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="xref" href="../multimedia/taglib.md" title="Taglib-2.3">taglib-2.3</a>, <a class="ulink" href="https://github.com/AppImageCommunity/libappimage">libappimage</a>, <a class="ulink" href="https://libimobiledevice.org/">libimobiledevice</a>, <a class="ulink" href="https://libmtp.sourceforge.net/">libmtp</a>, <a class="ulink" href="https://github.com/libimobiledevice/libplist">libplist</a>, <a class="ulink" href="https://www.libssh.org/">libssh</a>, and <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>
</div>

<div class="installation" lang="en">
## Installation of kio-extras {#installation-of-kio-extras}

Install <span class="application">kio-extras</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkioarchive6.so and 33 plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/KioArchive6, \$KF6_PREFIX/lib/cmake/KioArchive6, and \$KF6_PREFIX/share/doc/HTML/en/kioworker6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](plasma-activities-stats.md "plasma-activities-stats-6.6.5")

    plasma-activities-stats-6.6.5

-   [Next](okular.md "okular-26.04.1")

    okular-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](nspr.md "NSPR-4.39")

    NSPR-4.39

-   [Next](popt.md "Popt-1.19")

    Popt-1.19

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenTimelineIO-0.18.1 {#opentimelineio-0.18.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenTimelineIO {#introduction-to-opentimelineio}

The <span class="application">OpenTimelineIO</span> package contains an interchange format and API for editorial cut information.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/AcademySoftwareFoundation/OpenTimelineIO/archive/v0.18.1/OpenTimelineIO-0.18.1.tar.gz">https://github.com/AcademySoftwareFoundation/OpenTimelineIO/archive/v0.18.1/OpenTimelineIO-0.18.1.tar.gz</a>

-   Download MD5 sum: 7b13298f151ad5bd2d4a74c0c66bfa41

-   Download size: 1.6 MB

-   Estimated disk space required: 62 MB

-   Estimated build time: 0.1 SBU (using parallelism=4
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required download: <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/OpenTimelineIO/OpenTimelineIO-rapidjson-20260513.tar.xz">https://anduin.linuxfromscratch.org/BLFS/OpenTimelineIO/OpenTimelineIO-rapidjson-20260513.tar.xz</a>

-   Download MD5 sum: 620458ffa66419cdff9bf656a344ed57
</div>

### OpenTimelineIO Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="imath.md" title="Imath-3.2.2">Imath-3.2.2</a>
</div>

<div class="installation" lang="en">
## Installation of OpenTimelineIO {#installation-of-opentimelineio}

First, install a substitute for RapidJSON. This updates the upstream version that has not been updated since 2016 and avoids downloading untagged releases of external submodules.

```bash
tar -xvf ../OpenTimelineIO-rapidjson-20260513.tar.xz \
    --strip-components=1 -C src/deps
```

Install <span class="application">OpenTimelineIO</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D OTIO_FIND_IMATH=ON            \
      -D OTIO_AUTOMATIC_SUBMODULES=OFF \
      -D OTIO_DEPENDENCIES_INSTALL=OFF \
      .. &&
make
```

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
**Installed Libraries:** <span class="segbody">libopentime.so and libopentimelineio.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/opentime, /usr/include/opentimelineio /usr/share/opentime, and /usr/share/opentimelineio</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nspr.md "NSPR-4.39")

    NSPR-4.39

-   [Next](popt.md "Popt-1.19")

    Popt-1.19

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

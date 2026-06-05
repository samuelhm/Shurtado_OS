<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgtop.md "libgtop-2.41.3")

    libgtop-2.41.3

-   [Next](libgweather.md "libgweather-4.6.0")

    libgweather-4.6.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gweather-locations-2026.2 {#gweather-locations-2026.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gweather-locations {#introduction-to-gweather-locations}

This package provides a location and timezone database for the libgweather library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gweather-locations/2026/gweather-locations-2026.2.tar.xz">https://download.gnome.org/sources/gweather-locations/2026/gweather-locations-2026.2.tar.xz</a>

-   Download MD5 sum: 6d600c6af383b611a17e5828adca81a9

-   Download size: 2.5 MB

-   Estimated disk space required: 65 MB

-   Estimated build time: less than 0.1 SBU
</div>

### gweather-locations Dependencies

#### Required

<a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>
</div>

<div class="installation" lang="en">
## Installation of gweather-locations {#installation-of-gweather-locations}

Install <span class="application">gweather-locations</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
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
**Installed Libraries:** <span class="segbody">Locations.bin</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/gweather-locations and /usr/share/gweather-locations</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgtop.md "libgtop-2.41.3")

    libgtop-2.41.3

-   [Next](libgweather.md "libgweather-4.6.0")

    libgweather-4.6.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

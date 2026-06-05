<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wayland.md "Wayland-1.25.0")

    Wayland-1.25.0

-   [Next](wv.md "wv-1.2.9")

    wv-1.2.9

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wayland-Protocols-1.48 {#wayland-protocols-1.48}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wayland-Protocols {#introduction-to-wayland-protocols}

The <span class="application">Wayland-Protocols</span> package contains additional Wayland protocols that add functionality outside of protocols already in the Wayland core.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.48/downloads/wayland-protocols-1.48.tar.xz">https://gitlab.freedesktop.org/wayland/wayland-protocols/-/releases/1.48/downloads/wayland-protocols-1.48.tar.xz</a>

-   Download MD5 sum: 498bf2f7fa51bc1edfed89ca89ae6345

-   Download size: 148 KB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Wayland-protocols Dependencies

#### Required

<a class="xref" href="wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>
</div>

<div class="installation" lang="en">
## Installation of Wayland-protocols {#installation-of-wayland-protocols}

Install <span class="application">Wayland-protocols</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

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
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/wayland-protocols</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wayland.md "Wayland-1.25.0")

    Wayland-1.25.0

-   [Next](wv.md "wv-1.2.9")

    wv-1.2.9

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

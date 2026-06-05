<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-bad.md "gst-plugins-bad-1.28.3")

    gst-plugins-bad-1.28.3

-   [Next](gst-plugins-rs.md "gst-plugins-rs-1.28.3")

    gst-plugins-rs-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-plugins-ugly-1.28.3 {#gst-plugins-ugly-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GStreamer Ugly Plug-ins {#introduction-to-gstreamer-ugly-plug-ins}

The <span class="application">GStreamer Ugly Plug-ins</span> is a set of plug-ins considered by the <span class="application">GStreamer</span> developers to have good quality and correct functionality, but distributing them might pose problems. The license on either the plug-ins or the supporting libraries might not be how the <span class="application">GStreamer</span> developers would like. The code might be widely known to present patent problems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.28.3.tar.xz</a>

-   Download MD5 sum: 5206f9131dbafaa9758c878d2e43a00f

-   Download size: 232 KB

-   Estimated disk space required: 7.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### GStreamer Ugly Plug-ins Dependencies

#### Required

<a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>

#### Recommended

<a class="xref" href="liba52.md" title="Liba52-0.8.0">liba52-0.8.0</a> (needed to play DVD's), <a class="xref" href="libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, and <a class="xref" href="x264.md" title="x264-20250815">x264-20250815</a>

#### Optional

<a class="xref" href="libmpeg2.md" title="libmpeg2-0.5.1">libmpeg2-0.5.1</a>, <a class="xref" href="libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a> (for CD-ROM drive access), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://pypi.org/project/hotdoc/">hotdoc</a>, <a class="ulink" href="https://packages.debian.org/source/sid/libsidplay">libsidplay</a>, and <a class="ulink" href="https://gstreamer.freedesktop.org/src/orc/">Orc</a>
</div>

<div class="installation" lang="en">
## Installation of GStreamer Ugly Plug-ins {#installation-of-gstreamer-ugly-plug-ins}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
</div>

Install <span class="application">GStreamer Ugly Plug-ins</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gpl=enabled      &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gpl=enabled`*: Without this switch, plugins with dependencies on (A)GPL licensed libraries are not built.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Several plugins under /usr/lib/gstreamer-1.0</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst10-plugins-bad.md "gst-plugins-bad-1.28.3")

    gst-plugins-bad-1.28.3

-   [Next](gst-plugins-rs.md "gst-plugins-rs-1.28.3")

    gst-plugins-rs-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst-plugins-rs.md "gst-plugins-rs-1.28.3")

    gst-plugins-rs-1.28.3

-   [Next](id3lib.md "id3lib-3.8.3")

    id3lib-3.8.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-libav-1.28.3 {#gst-libav-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GStreamer Libav {#introduction-to-gstreamer-libav}

The <span class="application">GStreamer Libav</span> package contains <span class="application">GStreamer</span> plugins for <span class="application">Libav</span> (a fork of <span class="application">FFmpeg</span>).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.28.3.tar.xz</a>

-   Download MD5 sum: 08dd58cc1721c174958a34d3083017f6

-   Download size: 208 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GStreamer Libav Dependencies

#### Required

<a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> and <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>

#### Recommended

<a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a>

#### Optional

<a class="ulink" href="https://pypi.org/project/hotdoc/">hotdoc</a>
</div>

<div class="installation" lang="en">
## Installation of GStreamer Libav {#installation-of-gstreamer-libav}

Install <span class="application">GStreamer Libav</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

To run the tests, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgstlibav.so in /usr/lib/gstreamer-1.0</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst-plugins-rs.md "gst-plugins-rs-1.28.3")

    gst-plugins-rs-1.28.3

-   [Next](id3lib.md "id3lib-3.8.3")

    id3lib-3.8.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

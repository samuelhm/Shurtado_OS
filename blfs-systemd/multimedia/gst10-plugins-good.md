<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-base.md "gst-plugins-base-1.28.3")

    gst-plugins-base-1.28.3

-   [Next](gst10-plugins-bad.md "gst-plugins-bad-1.28.3")

    gst-plugins-bad-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-plugins-good-1.28.3 {#gst-plugins-good-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GStreamer Good Plug-ins {#introduction-to-gstreamer-good-plug-ins}

The <span class="application">GStreamer Good Plug-ins</span> is a set of plug-ins considered by the <span class="application">GStreamer</span> developers to have good quality code, correct functionality, and the preferred license (LGPL for the plug-in code, LGPL or LGPL-compatible for the supporting library). A wide range of video and audio decoders, encoders, and filters are included.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.28.3.tar.xz</a>

-   Download MD5 sum: 8a65245b9723adf0fe2a01e08480f4ff

-   Download size: 5.8 MB

-   Estimated disk space required: 130 MB (with tests)

-   Estimated build time: 0.6 SBU (Using parallelism=4; with tests)
</div>

### GStreamer Good Plug-ins Dependencies

#### Required

<a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>

#### Recommended

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, <a class="xref" href="libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="mpg123.md" title="mpg123-1.33.5">mpg123-1.33.5</a>, <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>, and <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>

#### Optional

<a class="xref" href="../general/aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for examples), <a class="xref" href="libdv.md" title="Libdv-1.0.0">libdv-1.0.0</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="xref" href="taglib.md" title="Taglib-2.3">taglib-2.3</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, <a class="ulink" href="https://www.alsa-project.org/files/pub/oss-lib">alsa-oss</a>, <a class="ulink" href="https://pypi.org/project/hotdoc/">hotdoc</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a>, <a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a>, <a class="ulink" href="https://sourceforge.net/projects/libavc1394/">libavc1394</a>, <a class="ulink" href="https://sourceforge.net/projects/libraw1394/">libiec61883</a>, <a class="ulink" href="https://sourceforge.net/projects/libraw1394/">libraw1394</a>, <a class="ulink" href="https://www.icecast.org">libshout</a>, <a class="ulink" href="https://download.gnome.org/sources/libsoup/2.74/">libsoup2</a>, <a class="ulink" href="https://gstreamer.freedesktop.org/src/orc/">Orc</a>, <a class="ulink" href="https://www.twolame.org/">TwoLame</a>, and <a class="ulink" href="https://wavpack.com/">WavPack</a>
</div>

<div class="installation" lang="en">
## Installation of GStreamer Good Plug-ins {#installation-of-gstreamer-good-plug-ins}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
</div>

Install <span class="application">GStreamer Good Plug-ins</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, <code class="filename">elements_flvmux</code>, is known to fail on some systems.

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
**Installed Libraries:** <span class="segbody">Several plugins under /usr/lib/gstreamer-1.0</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gstreamer-1.0/presets</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst10-plugins-base.md "gst-plugins-base-1.28.3")

    gst-plugins-base-1.28.3

-   [Next](gst10-plugins-bad.md "gst-plugins-bad-1.28.3")

    gst-plugins-bad-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

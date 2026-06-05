<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gstreamer10.md "gstreamer-1.28.3")

    gstreamer-1.28.3

-   [Next](gst10-plugins-good.md "gst-plugins-good-1.28.3")

    gst-plugins-good-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-plugins-base-1.28.3 {#gst-plugins-base-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GStreamer Base Plug-ins {#introduction-to-gstreamer-base-plug-ins}

The <span class="application">GStreamer Base Plug-ins</span> is a well-groomed and well-maintained collection of <span class="application">GStreamer</span> plug-ins and elements, spanning the range of possible types of elements one would want to write for <span class="application">GStreamer</span>. You will need at least one of Good, Bad, Ugly or Libav plugins for <span class="application">GStreamer</span> applications to function properly.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.28.3.tar.xz</a>

-   Download MD5 sum: 0238ce29eb0b3b3a1b84115f96a121b0

-   Download size: 2.5 MB

-   Estimated disk space required: 122 MB (with tests)

-   Estimated build time: 0.9 SBU (Using parallelism=4; with tests)
</div>

### GStreamer Base Plug-ins Dependencies

#### Required

<a class="xref" href="gstreamer10.md" title="gstreamer-1.28.3">gstreamer-1.28.3</a>

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="cdparanoia.md" title="CDParanoia-III-10.2">CDParanoia-III-10.2</a> (for building the CDDA plugin), <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../x/graphene.md" title="Graphene-1.10.8">graphene-1.10.8</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for examples), <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://pypi.org/project/hotdoc">hotdoc</a>, <a class="ulink" href="http://www.theora.org">libtheora</a>, <a class="ulink" href="http://libvisual.org/">libvisual</a>, <a class="ulink" href="https://gstreamer.freedesktop.org/src/orc/">Orc</a>, and <a class="ulink" href="https://wiki.xiph.org/Tremor">Tremor</a>
</div>

<div class="installation" lang="en">
## Installation of GStreamer Base Plug-ins {#installation-of-gstreamer-base-plug-ins}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
</div>

Install <span class="application">GStreamer Base Plug-ins</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..               \
      --prefix=/usr          \
      --buildtype=release    \
      --wrap-mode=nodownload &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests require an X terminal running, or all of the GL tests will fail.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing, the build process does some additional linking. If you do not have Xorg in /usr, the LIBRARY_PATH variable needs to be defined for the root user. If using sudo to assume root, use the -E option to pass your current environment variables for the install process.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nodownload`*: This switch prevents <span class="command"><strong>meson</strong></span> from downloading any optional dependency which is not installed on the system.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gst-device-monitor-1.0, gst-discoverer-1.0, and gst-play-1.0</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgstallocators-1.0.so, libgstapp-1.0.so, libgstaudio-1.0.so, libgstfft-1.0.so, libgstgl-1.0.so, libgstpbutils-1.0.so, libgstriff-1.0.so, libgstrtp-1.0.so, libgstrtsp-1.0.so, libgstsdp-1.0.so, libgsttag-1.0.so, libgstvideo-1.0.so, and several plugins under /usr/lib/gstreamer-1.0</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gstreamer-1.0/gst/{allocators,app,audio,fft,gl,pbutils}, /usr/include/gstreamer-1.0/gst/{riff,rtp,rtsp,sdp,tag,video}, and /usr/share/gst-plugins-base</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------
  <a id="gst-device-monitor-1.0"></a><span class="command"><span class="term"><strong>gst-device-monitor-1.0</strong></span></span>   is a command line tool that can be used to test GStreamer's device monitoring functionality
  <a id="gst-discoverer-1.0"></a><span class="command"><span class="term"><strong>gst-discoverer-1.0</strong></span></span>           is a tool that can be used to print basic metadata and stream information about a media file
  <a id="gst-play-1.0"></a><span class="command"><span class="term"><strong>gst-play-1.0</strong></span></span>                       is a command line tool that can be used to test basic playback using the playbin element
  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gstreamer10.md "gstreamer-1.28.3")

    gstreamer-1.28.3

-   [Next](gst10-plugins-good.md "gst-plugins-good-1.28.3")

    gst-plugins-good-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

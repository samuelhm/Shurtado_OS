<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-good.md "gst-plugins-good-1.28.3")

    gst-plugins-good-1.28.3

-   [Next](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3")

    gst-plugins-ugly-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-plugins-bad-1.28.3 {#gst-plugins-bad-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GStreamer Bad Plug-ins {#introduction-to-gstreamer-bad-plug-ins}

The <span class="application">GStreamer Bad Plug-ins</span> package contains a set of plug-ins that aren't up to par compared to the rest. They might be close to being good quality, but they're missing something - be it a good code review, some documentation, a set of tests, a real live maintainer, or some actual wide use.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.28.3.tar.xz</a>

-   Download MD5 sum: 995f3a6b7b45cecf0aaab4933e6bf690

-   Download size: 7.7 MB

-   Estimated disk space required: 314 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
</div>

### GStreamer Bad Plug-ins Dependencies

#### Required

<a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>

#### Recommended

<a class="xref" href="libaom.md" title="libaom-3.14.1">libaom-3.14.1</a> (for chroma subsampling outside of YUV420), <a class="xref" href="libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, <a class="xref" href="libdvdnav.md" title="libdvdnav-7.0.0">libdvdnav-7.0.0</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a>, <a class="xref" href="svt-av1.md" title="SVT-AV1-4.1.0">SVT-AV1-4.1.0</a> (only supports YUV420), <a class="xref" href="soundtouch.md" title="SoundTouch-2.4.1">SoundTouch-2.4.1</a>

#### Optional

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="faac.md" title="faac-1.50">faac-1.50</a>, <a class="xref" href="faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a>, <a class="xref" href="fdk-aac.md" title="fdk-aac-2.0.3">fdk-aac-2.0.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for examples), <a class="xref" href="gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a> (for one test), <a class="xref" href="../general/imath.md" title="Imath-3.2.2">Imath-3.2.2</a>, <a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libass.md" title="libass-0.17.4">libass-0.17.4</a>, <a class="xref" href="libde265.md" title="libde265-1.1.0">libde265-1.1.0</a>, <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a> (for one test), <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../basicnet/neon.md" title="neon-0.37.1">neon-0.37.1</a>, <a class="xref" href="../postlfs/nettle.md" title="Nettle-4.0">Nettle-4.0</a> or <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> (for SSL support in the hls plugin, if both are not installed OpenSSL will be used instead), <a class="xref" href="../general/opencv.md" title="opencv-4.13.0">opencv-4.13.0</a> (with additional modules), <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, <a class="xref" href="../general/libqrencode.md" title="libqrencode-4.1.1">libqrencode-4.1.1</a>, <a class="xref" href="sbc.md" title="SBC-2.2">SBC-2.2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, both <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a> and <a class="xref" href="../general/glslc.md" title="glslc from shaderc-2026.2">glslc from shaderc-2026.2</a> (for Vulkan plugin), <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> (<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> must have been compiled with wayland support), <a class="xref" href="x265.md" title="x265-4.2">x265-4.2</a>, <a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a>, <a class="ulink" href="https://bs2b.sourceforge.net/">bs2b</a>, <a class="ulink" href="https://acoustid.org/chromaprint">Chromaprint</a>, <a class="ulink" href="https://github.com/kornelski/dssim">dssim</a>, <a class="ulink" href="https://github.com/festvox/flite">Flite</a>, <a class="ulink" href="https://www.fluidsynth.org/">FluidSynth</a>, <a class="ulink" href="https://github.com/libgme/game-music-emu">Game Music Emu</a>, <a class="ulink" href="https://www.quut.com/gsm/">GSM</a> (currently broken), <a class="ulink" href="https://pypi.org/project/hotdoc/">hotdoc</a>, <a class="ulink" href="https://www.ladspa.org/">LADSPA</a>, <a class="ulink" href="https://github.com/EHfive/ldacBT">ldacBT</a>, <a class="ulink" href="https://github.com/aja-video/libajantv2">libajantv2</a>, <a class="ulink" href="https://github.com/AVnu/libavtp">libavtp</a>, <a class="ulink" href="https://sourceforge.net/projects/libdc1394/files/libdc1394-2/">libdc1394-2</a>, <a class="ulink" href="https://www.videolan.org/developers/libdca.md">libdca</a>, <a class="ulink" href="https://code.google.com/archive/p/libkate/">libkate</a>, <a class="ulink" href="https://github.com/Intel-Media-SDK/MediaSDK">libmfx</a>, <a class="ulink" href="https://sourceforge.net/projects/libmms/">libmms</a>, <a class="ulink" href="https://github.com/Konstanty/libmodplug">libmodplug</a>, <a class="ulink" href="https://libnice.freedesktop.org/">libnice</a>, <a class="ulink" href="https://code.google.com/p/musicip-libofa/">libofa</a>, <a class="ulink" href="https://lib.openmpt.org/libopenmpt/">libopenmpt</a>, <a class="ulink" href="https://structure.io/openni">libopenni</a>, <a class="ulink" href="https://download.gnome.org/sources/libsoup/2.74/">libsoup2</a>, <a class="ulink" href="https://github.com/cisco/libsrtp">libsrtp</a>, <a class="ulink" href="https://drobilla.net/software/lilv">lilv</a>, <a class="ulink" href="https://github.com/swh/LRDF">LRDF</a>, <a class="ulink" href="https://github.com/x42/ltc-tools">ltc-tools</a>, <a class="ulink" href="https://github.com/videolabs/libmicrodns">microdns</a>, <a class="ulink" href="https://mjpeg.sourceforge.net/">MJPEG Tools</a>, <a class="ulink" href="https://snyk.io/advisor/npm-package/mplex2">mplex2</a>, <a class="ulink" href="https://www.musepack.net/">musepack</a>, <a class="ulink" href="https://github.com/microsoft/onnxruntime">onnxruntime</a>, <a class="ulink" href="https://openal.org/">OpenAL</a>, <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>, <a class="ulink" href="https://www.openh264.org/">OpenH264</a>, <a class="ulink" href="https://gstreamer.freedesktop.org/src/orc/">Orc</a>, <a class="ulink" href="https://rtmpdump.mplayerhq.hu/">rtmpdump</a>, <a class="ulink" href="https://github.com/jart/spandsp">spandsp</a>, <a class="ulink" href="https://github.com/Haivision/srt">Srt</a>, <a class="ulink" href="https://github.com/OpenVisualCloud/SVT-HEVC/">svthevcenc</a>, <a class="ulink" href="https://sourceforge.net/projects/opencore-amr/files/vo-aacenc/">VO AAC</a>, <a class="ulink" href="https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/">VO AMRWB</a>, <a class="ulink" href="https://github.com/Mindwerks/wildmidi/">WildMidi</a>, <a class="ulink" href="https://webkit.org/wpe/">WPE-WebKit</a>, <a class="ulink" href="https://github.com/Igalia/WPEBackend-fdo">WPEBackend-fdo</a>, <a class="ulink" href="https://zbar.sourceforge.net/">ZBAR</a>, and <a class="ulink" href="https://zapping.sourceforge.net/ZVBI/index.html/">ZVBI</a>
</div>

<div class="installation" lang="en">
## Installation of GStreamer Bad Plug-ins {#installation-of-gstreamer-bad-plug-ins}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
</div>

Install <span class="application">GStreamer Bad Plug-ins</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gpl=enabled      &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Several tests need a terminal emulator in a graphical session. One test, <span class="emphasis"><em>elements_dtls</em></span>, is known to fail with OpenSSL-4.x. If <a class="xref" href="gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a> is not installed, two tests, <span class="emphasis"><em>elements_rtpsrc</em></span> and <span class="emphasis"><em>elements_rtpsink</em></span>, will fail.

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
**Installed Programs:** <span class="segbody">gst-transcoder-1.0 and playout</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgstadaptivedemux-1.0.so, libgstanalytics-1.0.so, libgstbadaudio-1.0.so, libgstbasecamerabinsrc-1.0.so, libgstcuda-1.0.so, libgstcodecparsers-1.0.so, libgstcodecs-1.0.so, libgstdxva-1.0.so, libgstinsertbin-1.0.so, libgstisoff-1.0.so, libgstmpegts-1.0.so, libgstmse-1.0.so, libgstphotography-1.0.so, libgstplay-1.0.so, libgstplayer-1.0.so, libgstsctp-1.0.so, libgsttranscoder-1.0.so, libgsturidownloader-1.0.so, libgstva-1.0.so, libgstwayland-1.0.so, libgstwebrtc-1.0.so, and several plugins under /usr/lib/gstreamer-1.0</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gstreamer-1.0/gst/{audio,basecamerabinsrc,cuda}, /usr/include/gstreamer-1.0/gst/{codecparsers,insertbin,interfaces}, /usr/include/gstreamer-1.0/gst/{isoff,mpegts,play,player,sctp} /usr/include/gstreamer-1.0/gst/{transcoder,uridownloader,va}, and /usr/include/gstreamer-1.0/gst/{wayland,webrtc}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------
  <a id="gst-transcoder-1.0"></a><span class="command"><span class="term"><strong>gst-transcoder-1.0</strong></span></span>   is used to transcode a stream into a different format
  <a id="playout"></a><span class="command"><span class="term"><strong>playout</strong></span></span>                         is an example application used to sequentially play a list of audio-video files
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst10-plugins-good.md "gst-plugins-good-1.28.3")

    gst-plugins-good-1.28.3

-   [Next](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3")

    gst-plugins-ugly-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

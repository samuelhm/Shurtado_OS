<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](opus.md "Opus-1.6.1")

    Opus-1.6.1

-   [Next](pulseaudio.md "PulseAudio-17.0")

    PulseAudio-17.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pipewire-1.6.6 {#pipewire-1.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pipewire {#introduction-to-pipewire}

The <span class="application">pipewire</span> package contains a server and userspace API to handle multimedia pipelines. This includes a universal API to connect to multimedia devices, as well as sharing multimedia files between applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/1.6.6/pipewire-1.6.6.tar.bz2">https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/1.6.6/pipewire-1.6.6.tar.bz2</a>

-   Download MD5 sum: ac5ddcc6fc4b66025eb796e2c71001f1

-   Download size: 2.0 MB

-   Estimated disk space required: 110 MB (with tests)

-   Estimated build time: 0.7 SBU (with tests, both using parallelism=4)
</div>

### Pipewire Dependencies

#### Recommended

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="gstreamer10.md" title="gstreamer-1.28.3">gstreamer-1.28.3</a>, <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="sbc.md" title="SBC-2.2">SBC-2.2</a>, <a class="xref" href="v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, and <a class="xref" href="wireplumber.md" title="Wireplumber-0.5.14">Wireplumber-0.5.14</a> (runtime)

#### Optional

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="fdk-aac.md" title="fdk-aac-2.0.3">fdk-aac-2.0.3</a>, <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="../x/libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a> (for one example and libcamera support), <a class="xref" href="../x/libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a>, <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a> (for some examples), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>, <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (for documentation), <a class="ulink" href="https://ffado.org/">ffado</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a>, <a class="ulink" href="https://github.com/arkq/LC3plus">LC3plus</a>, <a class="ulink" href="https://github.com/EHfive/ldacBT">ldacBT</a>, <a class="ulink" href="https://libcamera.org/">libcamera</a>, <a class="ulink" href="https://github.com/hoene/libmysofa">libmysofa</a>, <a class="ulink" href="https://drobilla.net/software/lilv.md">lilv</a>, and <a class="ulink" href="https://sourceforge.net/projects/xmltoman/">xmltoman</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/pipewire">https://wiki.linuxfromscratch.org/blfs/wiki/pipewire</a>
</div>

<div class="installation" lang="en">
## Installation of Pipewire {#installation-of-pipewire}

Install <span class="application">pipewire</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                             \
      --prefix=/usr                        \
      --buildtype=release                  \
      -D session-managers="[]"             &&
ninja
```

To test the result, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D session-managers="[]"`*: This switch allows specifying the session managers to build as subprojects. We specify an empty list to prevent <span class="command"><strong>meson</strong></span> from downloading any external copy of the session managers. A Pipewire session manager recommended by the PipeWire developers for general use, <a class="xref" href="wireplumber.md" title="Wireplumber-0.5.14">Wireplumber-0.5.14</a>, is available as a separate BLFS package. Build it after installing Pipewire if you need to run the Pipewire daemon (for example in order to support <a class="xref" href="../gnome/snapshot.md" title="Snapshot-50.0">Snapshot-50.0</a>).

<code class="option">-D docs=true</code>: This switch enables the generation of HTML documentation. The optional dependencies for documentation need to be installed for this to work.

<code class="option">-D man=true</code>: This switch enables the generation of manual pages. The optional dependencies for documentation need to be installed for this to work.

<code class="option">-D ffmpeg=enabled</code>: This switch enables using ffmpeg for audio conversion as a SPA backend.

<code class="option">-D vulkan=enabled</code>: This switch enables using Vulkan for video rendering as a SPA backend.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pipewire, pw-cat, pw-cli, pw-config, pw-dot, pw-dump, pw-jack, pw-link, pw-loopback, pw-metadata, pw-mididump, pw-mon, pw-profiler, pw-reserve, pw-top, pw-v4l2, spa-acp-tool, spa-inspect, spa-json-dump, spa-monitor, spa-resample, and pipewire-aes67, pipewire-avb, pipewire-pulse (symlinks to pipewire), pw-dsdplay, pw-encplay, pw-midiplay, pw-midirecord, pw-play, pw-record (symlinks to pw-cat)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpipewire-0.3.so and 60 modules below /usr/lib/pipewire-0.3 and /usr/lib/spa-0.2</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pipewire-0.3, /usr/include/spa-0.2, /usr/lib/alsa-lib, /usr/lib/pipewire-0.3, /usr/lib/spa-0.2, /usr/share/alsa-card-profile, /usr/share/pipewire, and /usr/share/spa-0.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
  <a id="pipewire-prog"></a><span class="command"><span class="term"><strong>pipewire</strong></span></span>          is a service that allows access to multimedia devices and allows sharing of multimedia files between applications
  <a id="pipewire-pulse"></a><span class="command"><span class="term"><strong>pipewire-pulse</strong></span></span>   starts a Pulseaudio-compatible version of the pipewire service
  <a id="pw-cat"></a><span class="command"><span class="term"><strong>pw-cat</strong></span></span>                   allows you to play or record media using a pipewire instance
  <a id="pw-cli"></a><span class="command"><span class="term"><strong>pw-cli</strong></span></span>                   allows you to interact with a pipewire instance
  <a id="pw-config"></a><span class="command"><span class="term"><strong>pw-config</strong></span></span>             allows you to interact with pipewire's configuration system for debugging purposes or syntax checking
  <a id="pw-dot"></a><span class="command"><span class="term"><strong>pw-dot</strong></span></span>                   lists all of the daemons and objects in use by pipewire
  <a id="pw-dump"></a><span class="command"><span class="term"><strong>pw-dump</strong></span></span>                 dumps debug messages from a local or remote pipewire instance to the console
  <a id="pw-jack"></a><span class="command"><span class="term"><strong>pw-jack</strong></span></span>                 runs JACK applications on a pipewire instance
  <a id="pw-link"></a><span class="command"><span class="term"><strong>pw-link</strong></span></span>                 links pipewire ports together
  <a id="pw-loopback"></a><span class="command"><span class="term"><strong>pw-loopback</strong></span></span>         initializes a loopback link between two different pipewire ports. This is useful for testing and debugging
  <a id="pw-metadata"></a><span class="command"><span class="term"><strong>pw-metadata</strong></span></span>         inspects, adds, and removes metadata for objects
  <a id="pw-mididump"></a><span class="command"><span class="term"><strong>pw-mididump</strong></span></span>         dumps MIDI messages from a file to the screen
  <a id="pw-mon"></a><span class="command"><span class="term"><strong>pw-mon</strong></span></span>                   allows you to monitor pipewire instances
  <a id="pw-profiler"></a><span class="command"><span class="term"><strong>pw-profiler</strong></span></span>         tracks memory usage and API calls used by pipewire
  <a id="pw-reserve"></a><span class="command"><span class="term"><strong>pw-reserve</strong></span></span>           reserves or monitors a device via D-Bus
  <a id="pw-top"></a><span class="command"><span class="term"><strong>pw-top</strong></span></span>                   displays real-time performance information from pipewire
  <a id="pw-v4l2"></a><span class="command"><span class="term"><strong>pw-v4l2</strong></span></span>                 runs v4l2 applications on a pipewire instance
  <a id="spa-acp-tool"></a><span class="command"><span class="term"><strong>spa-acp-tool</strong></span></span>       inspects the card profile of a given sound card
  <a id="spa-inspect"></a><span class="command"><span class="term"><strong>spa-inspect</strong></span></span>         allows you to inspect pipewire plugins
  <a id="spa-json-dump"></a><span class="command"><span class="term"><strong>spa-json-dump</strong></span></span>     dumps the current pipewire configuration in JSON format
  <a id="spa-monitor"></a><span class="command"><span class="term"><strong>spa-monitor</strong></span></span>         allows you to monitor pipewire plugins
  <a id="spa-resample"></a><span class="command"><span class="term"><strong>spa-resample</strong></span></span>       resamples a given file
  <a id="libpipewire"></a><span class="term"><code class="filename">libpipewire-0.3.so</code></span>     contains API functions for handling multimedia pipelines
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](opus.md "Opus-1.6.1")

    Opus-1.6.1

-   [Next](pulseaudio.md "PulseAudio-17.0")

    PulseAudio-17.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

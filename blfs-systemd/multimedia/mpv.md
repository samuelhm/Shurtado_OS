<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](ffmpeg.md "FFmpeg-8.1.1")

    FFmpeg-8.1.1

-   [Next](vlc.md "VLC-3.0.23")

    VLC-3.0.23

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mpv-0.41.0 {#mpv-0.41.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to mpv {#introduction-to-mpv}

<span class="application">mpv</span> is a free media player for the command line. It supports a wide variety of media file formats, audio and video codecs, and subtitle types.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mpv-player/mpv/archive/v0.41.0/mpv-0.41.0.tar.gz">https://github.com/mpv-player/mpv/archive/v0.41.0/mpv-0.41.0.tar.gz</a>

-   Download MD5 sum: fa40a0fedeaf0a77127e238a39b9d4c4

-   Download size: 6.9 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.4 SBU
</div>

### mpv Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="libass.md" title="libass-0.17.4">libass-0.17.4</a>, <a class="xref" href="libplacebo.md" title="libplacebo-7.360.1">libplacebo-7.360.1</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, and <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>

#### Recommended

<a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a>, <a class="xref" href="../general/luajit.md" title="luajit-20260213">luajit-20260213</a>, <a class="xref" href="../general/uchardet.md" title="Uchardet-0.0.8">uchardet-0.0.8</a>, and <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>

#### Optional Input Drivers and Libraries

<a class="xref" href="libdvdcss.md" title="libdvdcss-1.5.0">libdvdcss-1.5.0</a>, <a class="xref" href="libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, <a class="xref" href="libdvdnav.md" title="libdvdnav-7.0.0">libdvdnav-7.0.0</a>, and <a class="ulink" href="https://www.videolan.org/developers/libbluray.md">libbluray</a>

#### Optional Audio Output Drivers and Libraries

<a class="xref" href="pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>, <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a>, and <a class="ulink" href="https://openal.org/">OpenAL</a>

#### Optional Video Output Drivers and Libraries

<a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a> and <a class="ulink" href="https://www.svgalib.org/">SVGAlib</a>

#### Optional (for documentation)

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>
</div>

<div class="installation" lang="en">
## Installation of mpv {#installation-of-mpv}

Install <span class="application">mpv</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D x11=enabled      \
            ..                  &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D x11=enabled`*: allows linking to the X11 libraries.

<code class="option">-D dvdnav=enabled</code>: enables support for DVD playback.

<code class="option">-D cdda=enabled</code>: enables support for CD Audio.

<code class="option">-D sdl2=enabled</code>: enables the usage of SDL2 for audio and video output.
</div>

<div class="configuration" lang="en">
## Configuring mpv {#configuring-mpv}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/mpv/*</code> and <code class="filename">~/.config/mpv/*</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mpv</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/mpv and /usr/share/doc/mpv</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- -------------------------
  <a id="mpv-prog"></a><span class="command"><span class="term"><strong>mpv</strong></span></span>   is the mpv video player
  ------------------------------------------- -------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ffmpeg.md "FFmpeg-8.1.1")

    FFmpeg-8.1.1

-   [Next](vlc.md "VLC-3.0.23")

    VLC-3.0.23

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

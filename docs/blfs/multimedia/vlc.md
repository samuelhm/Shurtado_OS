<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](mpv.md "mpv-0.41.0")

    mpv-0.41.0

-   [Next](xine-ui.md "xine-ui-0.99.14")

    xine-ui-0.99.14

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# VLC-3.0.23 {#vlc-3.0.23}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to VLC {#introduction-to-vlc}

<span class="application">VLC</span> is a media player, streamer, and encoder. It can play from many inputs, such as files, network streams, capture devices, desktops, or DVD, SVCD, VCD, and audio CD. It can use most audio and video codecs (MPEG 1/2/4, H264, VC-1, DivX, WMV, Vorbis, AC3, AAC, etc.), and it can also convert to different formats and/or send streams through the network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.videolan.org/vlc/3.0.23/vlc-3.0.23.tar.xz">https://download.videolan.org/vlc/3.0.23/vlc-3.0.23.tar.xz</a>

-   Download MD5 sum: ebc3f0d0a94785fd2b2df4087516938e

-   Download size: 26 MB

-   Estimated disk space required: 957 MB

-   Estimated build time: 1.2 SBU (using parallelism=4; with tests)
</div>

### VLC Dependencies

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="liba52.md" title="Liba52-0.8.0">liba52-0.8.0</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a> <a class="xref" href="libmad.md" title="libmad-0.15.1b">libmad-0.15.1b</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>

#### Optional features and packages

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a>, and <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a>

#### Optional input plugins

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libcddb.md" title="libcddb-1.3.2">libcddb-1.3.2</a>, <a class="xref" href="libdv.md" title="Libdv-1.0.0">libdv-1.0.0</a>, <a class="xref" href="libdvdcss.md" title="libdvdcss-1.5.0">libdvdcss-1.5.0</a>, <a class="xref" href="libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, <a class="xref" href="libdvdnav.md" title="libdvdnav-7.0.0">libdvdnav-7.0.0</a>, <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="xref" href="v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, <a class="ulink" href="https://www.videolan.org/developers/libbluray.md">libbluray</a>, <a class="ulink" href="https://sourceforge.net/projects/libdc1394/">libdc1394</a>, <a class="ulink" href="https://github.com/sahlberg/libnfs">libnfs</a>, <a class="ulink" href="https://sourceforge.net/projects/libraw1394/">libraw1394</a>, <a class="ulink" href="http://www.live555.com/">Live555</a>, and <a class="ulink" href="https://www.gnu.org/software/vcdimager/">VCDImager</a> (requires <a class="xref" href="libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a>)

#### Optional mux/demux plugins

<a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>, <a class="ulink" href="https://github.com/kode54/Game_Music_Emu">Game Music Emu</a>, <a class="ulink" href="https://www.videolan.org/developers/libdvbpsi.md">libdvbpsi</a>, <a class="ulink" href="https://downloads.xiph.org/releases/libshout/">libshout</a>, <a class="ulink" href="https://dl.matroska.org/downloads/libmatroska/">libmatroska</a> (requires <a class="ulink" href="https://dl.matroska.org/downloads/libebml/">libebml</a>), <a class="ulink" href="https://sourceforge.net/projects/modplug-xmms/">libmodplug</a>, <a class="ulink" href="https://www.musepack.net/">Musepack</a>, and <a class="ulink" href="https://sourceforge.net/projects/sidplay2/">sidplay-libs</a>

#### Optional codec plugins

<a class="xref" href="dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>, <a class="xref" href="faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="libaom.md" title="libaom-3.14.1">libaom-3.14.1</a>, <a class="xref" href="libass.md" title="libass-0.17.4">libass-0.17.4</a>, <a class="xref" href="libmpeg2.md" title="libmpeg2-0.5.1">libmpeg2-0.5.1</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a>, <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, <a class="xref" href="libvpx.md" title="libvpx-1.16.0">libvpx-1.16.0</a>, <a class="xref" href="x264.md" title="x264-20250815">x264-20250815</a>, <a class="ulink" href="https://github.com/nkoriyama/aribb24">aribb24</a>, <a class="ulink" href="https://sourceforge.net/projects/dirac/">Dirac</a>, <a class="ulink" href="https://github.com/divideconcept/FluidLite">FluidLite</a>, <a class="ulink" href="https://sourceforge.net/projects/fluidsynth/">FluidSynth</a>, <a class="ulink" href="https://www.videolan.org/developers/libdca.md">libdca</a>, <a class="ulink" href="https://wiki.xiph.org/index.php/OggKate">libkate</a>, <a class="ulink" href="https://www.theora.org">libtheora</a>, <a class="ulink" href="https://www.khronos.org/openmax/">OpenMAX</a>, <a class="ulink" href="https://sourceforge.net/projects/schrodinger/">Schroedinger</a>, <a class="ulink" href="https://github.com/toots/shine">Shine</a>, <a class="ulink" href="https://sourceforge.net/p/soxr/wiki/Home/">SoX</a>, <a class="ulink" href="https://wiki.xiph.org/Tremor">Tremor</a>, <a class="ulink" href="https://www.twolame.org/">Twolame</a>, and <a class="ulink" href="https://sourceforge.net/projects/zapping/">Zapping VBI</a>

#### Optional video plugins

<a class="xref" href="../general/aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a>, <a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a>, <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="libplacebo.md" title="libplacebo-7.360.1">libplacebo-7.360.1</a> (currently broken), <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="ulink" href="https://github.com/cacalabs/libcaca">libcaca</a>, <a class="ulink" href="https://github.com/Intel-Media-SDK/MediaSDK">libmfx</a>, and <a class="ulink" href="https://github.com/libsdl-org/sdl12-compat">SDL1</a>

#### Optional audio plugins

<a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, <a class="ulink" href="https://github.com/videolabs/libspatialaudio">spatialaudio</a>, and <a class="ulink" href="https://jackaudio.org/">JACK</a>

#### Optional interface plugins

<a class="xref" href="../xsoft/freerdp.md" title="FreeRDP-3.26.0">FreeRDP-3.26.0</a>, <a class="ulink" href="https://repo.or.cz/w/libtar.git/">libtar</a>, <a class="ulink" href="https://libvnc.github.io/">libvncclient</a>, and <a class="ulink" href="https://www.lirc.org/">LIRC</a>

#### Optional visualisations and video filter plugins

<a class="ulink" href="https://sourceforge.net/projects/goom/">Goom</a>, <a class="ulink" href="https://www.vsxu.com">libvsxu</a>, and <a class="ulink" href="https://sourceforge.net/projects/projectm/">projectM</a>

#### Optional service discovery plugins

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="ulink" href="https://sourceforge.net/projects/libmtp/">libmtp</a> and <a class="ulink" href="https://sourceforge.net/projects/pupnp/">libupnp</a>

#### Miscellaneous options

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/protobuf.md" title="Protobuf-35.0">Protobuf-35.0</a>, <a class="xref" href="taglib.md" title="Taglib-2.3">taglib-2.3</a>, <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a> (runtime), <a class="ulink" href="https://www.team-mediaportal.com/extensions/mp2-plugins/atmolight">AtmoLight</a>, <a class="ulink" href="https://github.com/videolabs/libmicrodns">libmicrodns</a>, and <a class="ulink" href="https://github.com/Haivision/srt">Srt</a>
</div>

<div class="installation" lang="en">
## Installation of VLC {#installation-of-vlc}

First, fix a build failure introduced by the latest version of gst-plugins-base:

```bash
sed -i 's/gstvideopool.h/video.h/' modules/codec/gstreamer/gstvlcvideopool.h
```

Install <span class="application">VLC</span> by running the following commands:

```bash
BUILDCC=gcc ./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. One test will fail if you are not in a graphical environment.

Now, as the <code class="systemitem">root</code> user:

```bash
make docdir=/usr/share/doc/vlc-3.0.23 install
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

<div class="using" lang="en">
## Using VLC {#using-vlc}

For a while, <span class="application">Qt-5</span> was the only way to get a graphical interface that this package is known for. It now supports <span class="application">Qt-6</span>, but comes with a lot of downsides as it is a fresh port of the previous interface. Several bits of functionality are broken. For example, pausing and other navigation features are broken, video positioning is incorrect, among other issues.

Another issue is that video playback, despite audio playback with image metadata being fine, is broken on Wayland without the use of the <code class="envar">QT_QPA_PLATFORM</code> variable. The exact issue is that the video never plays, and the window moves all over the screen. If you're on Wayland, you should run <span class="command"><strong>QT_QPA_PLATFORM=xcb vlc -I "qt"</strong></span> to use the Qt interface. This forces the <code class="literal">xcb</code> window interface to be used instead of <code class="literal">wayland</code>, since video playback will try to use <code class="literal">xcb</code> anyway and fail. On <span class="application">X11</span>, this should not be an issue.

However, many issues will still persist. It is recommended to still use <span class="application">VLC</span> through other means until these issues get fixed.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--disable-vpx</code>: Use this switch if you don't have <span class="application">libvpx</span> installed.

<code class="option">--disable-mad</code>: Use this switch if you don't have <span class="application">libmad</span> installed.

<code class="option">--disable-avcodec --disable-swscale</code>: Use these switches if you don't have <span class="application">FFmpeg</span> installed.

<code class="option">--disable-a52</code>: Use this switch if you don't have <span class="application">liba52</span> installed.

<code class="option">--disable-xcb</code>: Use this switch if you don't have <span class="application">X Window System</span> installed.

<code class="option">--disable-alsa</code>: Use this switch if you don't have <span class="application">ALSA</span> installed.

<code class="option">--disable-libgcrypt</code>: Use this switch if you don't have <span class="application">libgcrypt</span> installed.

<code class="option">--disable-sftp</code>: The default is to build the sftp module if <a class="xref" href="../general/libssh2.md" title="libssh2-1.11.1">libssh2-1.11.1</a> is installed. Use this switch if you do not want to build this module.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There are many options to <span class="application">VLC</span>'s <span class="command"><strong>configure</strong></span> command. Check the <span class="command"><strong>configure --help</strong></span> output for a complete list.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cvlc, nvlc, qvlc, rvlc, vlc and vlc-wrapper</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libvlccore.so, libvlc.so, and many plugins in /usr/lib/vlc/plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,share}/vlc, /usr/share/kde4, and /usr/share/doc/vlc-3.0.23</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------
  <a id="cvlc"></a><span class="command"><span class="term"><strong>cvlc</strong></span></span>                 is a script to run VLC with the dummy interface
  <a id="nvlc"></a><span class="command"><span class="term"><strong>nvlc</strong></span></span>                 is a script to run VLC with the ncurses interface
  <a id="qvlc"></a><span class="command"><span class="term"><strong>qvlc</strong></span></span>                 is a script to run <span class="application">VLC</span> with the <span class="application">Qt</span> interface
  <a id="rvlc"></a><span class="command"><span class="term"><strong>rvlc</strong></span></span>                 is a script to run <span class="application">VLC</span> with a command line interface
  <a id="vlc-prog"></a><span class="command"><span class="term"><strong>vlc</strong></span></span>              is the <span class="application">VLC</span> media player
  <a id="vlc-wrapper"></a><span class="command"><span class="term"><strong>vlc-wrapper</strong></span></span>   is a wrapper to drop privileges with <span class="application">VLC</span>
  ------------------------------------------------------ ------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mpv.md "mpv-0.41.0")

    mpv-0.41.0

-   [Next](xine-ui.md "xine-ui-0.99.14")

    xine-ui-0.99.14

-   [Up](videoutils.md "Chapter 44. Video Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

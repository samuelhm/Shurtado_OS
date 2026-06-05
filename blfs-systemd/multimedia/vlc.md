::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](mpv.md "mpv-0.41.0"){accesskey="p"}

    mpv-0.41.0

-   [Next](xine-ui.md "xine-ui-0.99.14"){accesskey="n"}

    xine-ui-0.99.14

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vlc}VLC-3.0.23 {#vlc-3.0.23 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to VLC {#introduction-to-vlc .sect2}

[VLC]{.application} is a media player, streamer, and encoder. It can play from many inputs, such as files, network streams, capture devices, desktops, or DVD, SVCD, VCD, and audio CD. It can use most audio and video codecs (MPEG 1/2/4, H264, VC-1, DivX, WMV, Vorbis, AC3, AAC, etc.), and it can also convert to different formats and/or send streams through the network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.videolan.org/vlc/3.0.23/vlc-3.0.23.tar.xz](https://download.videolan.org/vlc/3.0.23/vlc-3.0.23.tar.xz){.ulink}

-   Download MD5 sum: ebc3f0d0a94785fd2b2df4087516938e

-   Download size: 26 MB

-   Estimated disk space required: 957 MB

-   Estimated build time: 1.2 SBU (using parallelism=4; with tests)
:::

### VLC Dependencies

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, [liba52-0.8.0](liba52.md "Liba52-0.8.0"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref} [libmad-0.15.1b](libmad.md "libmad-0.15.1b"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}

#### Optional features and packages

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref}, and [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}

#### Optional input plugins

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}, [libcddb-1.3.2](libcddb.md "libcddb-1.3.2"){.xref}, [libdv-1.0.0](libdv.md "Libdv-1.0.0"){.xref}, [libdvdcss-1.5.0](libdvdcss.md "libdvdcss-1.5.0"){.xref}, [libdvdread-7.0.1](libdvdread.md "libdvdread-7.0.1"){.xref}, [libdvdnav-7.0.0](libdvdnav.md "libdvdnav-7.0.0"){.xref}, [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [v4l-utils-1.32.0](v4l-utils.md "v4l-utils-1.32.0"){.xref}, [libbluray](https://www.videolan.org/developers/libbluray.md){.ulink}, [libdc1394](https://sourceforge.net/projects/libdc1394/){.ulink}, [libnfs](https://github.com/sahlberg/libnfs){.ulink}, [libraw1394](https://sourceforge.net/projects/libraw1394/){.ulink}, [Live555](http://www.live555.com/){.ulink}, and [VCDImager](https://www.gnu.org/software/vcdimager/){.ulink} (requires [libcdio-2.1.0](libcdio.md "libcdio-2.1.0"){.xref})

#### Optional mux/demux plugins

[libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}, [Game Music Emu](https://github.com/kode54/Game_Music_Emu){.ulink}, [libdvbpsi](https://www.videolan.org/developers/libdvbpsi.md){.ulink}, [libshout](https://downloads.xiph.org/releases/libshout/){.ulink}, [libmatroska](https://dl.matroska.org/downloads/libmatroska/){.ulink} (requires [libebml](https://dl.matroska.org/downloads/libebml/){.ulink}), [libmodplug](https://sourceforge.net/projects/modplug-xmms/){.ulink}, [Musepack](https://www.musepack.net/){.ulink}, and [sidplay-libs](https://sourceforge.net/projects/sidplay2/){.ulink}

#### Optional codec plugins

[dav1d-1.5.3](dav1d.md "dav1d-1.5.3"){.xref}, [FAAD2-2.11.2](faad2.md "FAAD2-2.11.2"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [libaom-3.14.1](libaom.md "libaom-3.14.1"){.xref}, [libass-0.17.4](libass.md "libass-0.17.4"){.xref}, [libmpeg2-0.5.1](libmpeg2.md "libmpeg2-0.5.1"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref}, [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [libvpx-1.16.0](libvpx.md "libvpx-1.16.0"){.xref}, [x264-20250815](x264.md "x264-20250815"){.xref}, [aribb24](https://github.com/nkoriyama/aribb24){.ulink}, [Dirac](https://sourceforge.net/projects/dirac/){.ulink}, [FluidLite](https://github.com/divideconcept/FluidLite){.ulink}, [FluidSynth](https://sourceforge.net/projects/fluidsynth/){.ulink}, [libdca](https://www.videolan.org/developers/libdca.md){.ulink}, [libkate](https://wiki.xiph.org/index.php/OggKate){.ulink}, [libtheora](https://www.theora.org){.ulink}, [OpenMAX](https://www.khronos.org/openmax/){.ulink}, [Schroedinger](https://sourceforge.net/projects/schrodinger/){.ulink}, [Shine](https://github.com/toots/shine){.ulink}, [SoX](https://sourceforge.net/p/soxr/wiki/Home/){.ulink}, [Tremor](https://wiki.xiph.org/Tremor){.ulink}, [Twolame](https://www.twolame.org/){.ulink}, and [Zapping VBI](https://sourceforge.net/projects/zapping/){.ulink}

#### Optional video plugins

[AAlib-1.4rc5](../general/aalib.md "AAlib-1.4rc5"){.xref}, [Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref}, [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref}, [FriBidi-1.0.16](../general/fribidi.md "FriBidi-1.0.16"){.xref}, [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [libplacebo-7.360.1](libplacebo.md "libplacebo-7.360.1"){.xref} (currently broken), [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libcaca](https://github.com/cacalabs/libcaca){.ulink}, [libmfx](https://github.com/Intel-Media-SDK/MediaSDK){.ulink}, and [SDL1](https://github.com/libsdl-org/sdl12-compat){.ulink}

#### Optional audio plugins

[PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}, [spatialaudio](https://github.com/videolabs/libspatialaudio){.ulink}, and [JACK](https://jackaudio.org/){.ulink}

#### Optional interface plugins

[FreeRDP-3.26.0](../xsoft/freerdp.md "FreeRDP-3.26.0"){.xref}, [libtar](https://repo.or.cz/w/libtar.git/){.ulink}, [libvncclient](https://libvnc.github.io/){.ulink}, and [LIRC](https://www.lirc.org/){.ulink}

#### Optional visualisations and video filter plugins

[Goom](https://sourceforge.net/projects/goom/){.ulink}, [libvsxu](https://www.vsxu.com){.ulink}, and [projectM](https://sourceforge.net/projects/projectm/){.ulink}

#### Optional service discovery plugins

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [libmtp](https://sourceforge.net/projects/libmtp/){.ulink} and [libupnp](https://sourceforge.net/projects/pupnp/){.ulink}

#### Miscellaneous options

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [Protobuf-35.0](../general/protobuf.md "Protobuf-35.0"){.xref}, [taglib-2.3](taglib.md "Taglib-2.3"){.xref}, [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref} (runtime), [AtmoLight](https://www.team-mediaportal.com/extensions/mp2-plugins/atmolight){.ulink}, [libmicrodns](https://github.com/videolabs/libmicrodns){.ulink}, and [Srt](https://github.com/Haivision/srt){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of VLC {#installation-of-vlc .sect2}

First, fix a build failure introduced by the latest version of gst-plugins-base:

``` userinput
sed -i 's/gstvideopool.h/video.h/' modules/codec/gstreamer/gstvlcvideopool.h
```

Install [VLC]{.application} by running the following commands:

``` userinput
BUILDCC=gcc ./configure --prefix=/usr &&
make
```

To test the results, issue: [**make check**]{.command}. One test will fail if you are not in a graphical environment.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc/vlc-3.0.23 install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and desktop files into the `/usr/share/applications`{.filename} hierarchy. You can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename} and `/usr/share/applications/mimeinfo.cache`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed (for the icon cache) and [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref} (for the desktop cache) and issue the following commands as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
:::
::::

::: {.using lang="en"}
## Using VLC {#using-vlc .sect2}

For a while, [Qt-5]{.application} was the only way to get a graphical interface that this package is known for. It now supports [Qt-6]{.application}, but comes with a lot of downsides as it is a fresh port of the previous interface. Several bits of functionality are broken. For example, pausing and other navigation features are broken, video positioning is incorrect, among other issues.

Another issue is that video playback, despite audio playback with image metadata being fine, is broken on Wayland without the use of the `QT_QPA_PLATFORM`{.envar} variable. The exact issue is that the video never plays, and the window moves all over the screen. If you're on Wayland, you should run [**QT_QPA_PLATFORM=xcb vlc -I "qt"**]{.command} to use the Qt interface. This forces the `xcb`{.literal} window interface to be used instead of `wayland`{.literal}, since video playback will try to use `xcb`{.literal} anyway and fail. On [X11]{.application}, this should not be an issue.

However, many issues will still persist. It is recommended to still use [VLC]{.application} through other means until these issues get fixed.
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--disable-vpx`{.option}: Use this switch if you don't have [libvpx]{.application} installed.

`--disable-mad`{.option}: Use this switch if you don't have [libmad]{.application} installed.

`--disable-avcodec --disable-swscale`{.option}: Use these switches if you don't have [FFmpeg]{.application} installed.

`--disable-a52`{.option}: Use this switch if you don't have [liba52]{.application} installed.

`--disable-xcb`{.option}: Use this switch if you don't have [X Window System]{.application} installed.

`--disable-alsa`{.option}: Use this switch if you don't have [ALSA]{.application} installed.

`--disable-libgcrypt`{.option}: Use this switch if you don't have [libgcrypt]{.application} installed.

`--disable-sftp`{.option}: The default is to build the sftp module if [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref} is installed. Use this switch if you do not want to build this module.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are many options to [VLC]{.application}'s [**configure**]{.command} command. Check the [**configure --help**]{.command} output for a complete list.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cvlc, nvlc, qvlc, rvlc, vlc and vlc-wrapper]{.segbody}
:::

::: seg
**Installed Libraries:** [libvlccore.so, libvlc.so, and many plugins in /usr/lib/vlc/plugins]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,share}/vlc, /usr/share/kde4, and /usr/share/doc/vlc-3.0.23]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------
  []{#cvlc}[[**cvlc**]{.command}]{.term}                 is a script to run VLC with the dummy interface
  []{#nvlc}[[**nvlc**]{.command}]{.term}                 is a script to run VLC with the ncurses interface
  []{#qvlc}[[**qvlc**]{.command}]{.term}                 is a script to run [VLC]{.application} with the [Qt]{.application} interface
  []{#rvlc}[[**rvlc**]{.command}]{.term}                 is a script to run [VLC]{.application} with a command line interface
  []{#vlc-prog}[[**vlc**]{.command}]{.term}              is the [VLC]{.application} media player
  []{#vlc-wrapper}[[**vlc-wrapper**]{.command}]{.term}   is a wrapper to drop privileges with [VLC]{.application}
  ------------------------------------------------------ ------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](mpv.md "mpv-0.41.0"){accesskey="p"}

    mpv-0.41.0

-   [Next](xine-ui.md "xine-ui-0.99.14"){accesskey="n"}

    xine-ui-0.99.14

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-good.md "gst-plugins-good-1.28.3"){accesskey="p"}

    gst-plugins-good-1.28.3

-   [Next](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3"){accesskey="n"}

    gst-plugins-ugly-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst10-plugins-bad}gst-plugins-bad-1.28.3 {#gst-plugins-bad-1.28.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GStreamer Bad Plug-ins {#introduction-to-gstreamer-bad-plug-ins .sect2}

The [GStreamer Bad Plug-ins]{.application} package contains a set of plug-ins that aren't up to par compared to the rest. They might be close to being good quality, but they're missing something - be it a good code review, some documentation, a set of tests, a real live maintainer, or some actual wide use.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: 995f3a6b7b45cecf0aaab4933e6bf690

-   Download size: 7.7 MB

-   Estimated disk space required: 314 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
:::

### GStreamer Bad Plug-ins Dependencies

#### Required

[gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}

#### Recommended

[libaom-3.14.1](libaom.md "libaom-3.14.1"){.xref} (for chroma subsampling outside of YUV420), [libdvdread-7.0.1](libdvdread.md "libdvdread-7.0.1"){.xref}, [libdvdnav-7.0.0](libdvdnav.md "libdvdnav-7.0.0"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref}, [SVT-AV1-4.1.0](svt-av1.md "SVT-AV1-4.1.0"){.xref} (only supports YUV420), [SoundTouch-2.4.1](soundtouch.md "SoundTouch-2.4.1"){.xref}

#### Optional

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [faac-1.50](faac.md "faac-1.50"){.xref}, [FAAD2-2.11.2](faad2.md "FAAD2-2.11.2"){.xref}, [fdk-aac-2.0.3](fdk-aac.md "fdk-aac-2.0.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for examples), [gst-plugins-good-1.28.3](gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref} (for one test), [Imath-3.2.2](../general/imath.md "Imath-3.2.2"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libass-0.17.4](libass.md "libass-0.17.4"){.xref}, [libde265-1.1.0](libde265.md "libde265-1.1.0"){.xref}, [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref} (for one test), [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}, [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}, [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [neon-0.37.1](../basicnet/neon.md "neon-0.37.1"){.xref}, [Nettle-4.0](../postlfs/nettle.md "Nettle-4.0"){.xref} or [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref} (for SSL support in the hls plugin, if both are not installed OpenSSL will be used instead), [opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref} (with additional modules), [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}, [libqrencode-4.1.1](../general/libqrencode.md "libqrencode-4.1.1"){.xref}, [SBC-2.2](sbc.md "SBC-2.2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, both [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref} and [glslc from shaderc-2026.2](../general/glslc.md "glslc from shaderc-2026.2"){.xref} (for Vulkan plugin), [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref} ([GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} must have been compiled with wayland support), [x265-4.2](x265.md "x265-4.2"){.xref}, [zxing-cpp-3.0.2](../general/zxing-cpp.md "zxing-cpp-3.0.2"){.xref}, [bs2b](https://bs2b.sourceforge.net/){.ulink}, [Chromaprint](https://acoustid.org/chromaprint){.ulink}, [dssim](https://github.com/kornelski/dssim){.ulink}, [Flite](https://github.com/festvox/flite){.ulink}, [FluidSynth](https://www.fluidsynth.org/){.ulink}, [Game Music Emu](https://github.com/libgme/game-music-emu){.ulink}, [GSM](https://www.quut.com/gsm/){.ulink} (currently broken), [hotdoc](https://pypi.org/project/hotdoc/){.ulink}, [LADSPA](https://www.ladspa.org/){.ulink}, [ldacBT](https://github.com/EHfive/ldacBT){.ulink}, [libajantv2](https://github.com/aja-video/libajantv2){.ulink}, [libavtp](https://github.com/AVnu/libavtp){.ulink}, [libdc1394-2](https://sourceforge.net/projects/libdc1394/files/libdc1394-2/){.ulink}, [libdca](https://www.videolan.org/developers/libdca.md){.ulink}, [libkate](https://code.google.com/archive/p/libkate/){.ulink}, [libmfx](https://github.com/Intel-Media-SDK/MediaSDK){.ulink}, [libmms](https://sourceforge.net/projects/libmms/){.ulink}, [libmodplug](https://github.com/Konstanty/libmodplug){.ulink}, [libnice](https://libnice.freedesktop.org/){.ulink}, [libofa](https://code.google.com/p/musicip-libofa/){.ulink}, [libopenmpt](https://lib.openmpt.org/libopenmpt/){.ulink}, [libopenni](https://structure.io/openni){.ulink}, [libsoup2](https://download.gnome.org/sources/libsoup/2.74/){.ulink}, [libsrtp](https://github.com/cisco/libsrtp){.ulink}, [lilv](https://drobilla.net/software/lilv){.ulink}, [LRDF](https://github.com/swh/LRDF){.ulink}, [ltc-tools](https://github.com/x42/ltc-tools){.ulink}, [microdns](https://github.com/videolabs/libmicrodns){.ulink}, [MJPEG Tools](https://mjpeg.sourceforge.net/){.ulink}, [mplex2](https://snyk.io/advisor/npm-package/mplex2){.ulink}, [musepack](https://www.musepack.net/){.ulink}, [onnxruntime](https://github.com/microsoft/onnxruntime){.ulink}, [OpenAL](https://openal.org/){.ulink}, [OpenEXR](https://www.openexr.com/){.ulink}, [OpenH264](https://www.openh264.org/){.ulink}, [Orc](https://gstreamer.freedesktop.org/src/orc/){.ulink}, [rtmpdump](https://rtmpdump.mplayerhq.hu/){.ulink}, [spandsp](https://github.com/jart/spandsp){.ulink}, [Srt](https://github.com/Haivision/srt){.ulink}, [svthevcenc](https://github.com/OpenVisualCloud/SVT-HEVC/){.ulink}, [VO AAC](https://sourceforge.net/projects/opencore-amr/files/vo-aacenc/){.ulink}, [VO AMRWB](https://sourceforge.net/projects/opencore-amr/files/vo-amrwbenc/){.ulink}, [WildMidi](https://github.com/Mindwerks/wildmidi/){.ulink}, [WPE-WebKit](https://webkit.org/wpe/){.ulink}, [WPEBackend-fdo](https://github.com/Igalia/WPEBackend-fdo){.ulink}, [ZBAR](https://zbar.sourceforge.net/){.ulink}, and [ZVBI](https://zapping.sourceforge.net/ZVBI/index.html/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of GStreamer Bad Plug-ins {#installation-of-gstreamer-bad-plug-ins .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
:::

Install [GStreamer Bad Plug-ins]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gpl=enabled      &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. Several tests need a terminal emulator in a graphical session. One test, [*elements_dtls*]{.emphasis}, is known to fail with OpenSSL-4.x. If [gst-plugins-good-1.28.3](gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref} is not installed, two tests, [*elements_rtpsrc*]{.emphasis} and [*elements_rtpsink*]{.emphasis}, will fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gpl=enabled`*: Without this switch, plugins with dependencies on (A)GPL licensed libraries are not built.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gst-transcoder-1.0 and playout]{.segbody}
:::

::: seg
**Installed Libraries:** [libgstadaptivedemux-1.0.so, libgstanalytics-1.0.so, libgstbadaudio-1.0.so, libgstbasecamerabinsrc-1.0.so, libgstcuda-1.0.so, libgstcodecparsers-1.0.so, libgstcodecs-1.0.so, libgstdxva-1.0.so, libgstinsertbin-1.0.so, libgstisoff-1.0.so, libgstmpegts-1.0.so, libgstmse-1.0.so, libgstphotography-1.0.so, libgstplay-1.0.so, libgstplayer-1.0.so, libgstsctp-1.0.so, libgsttranscoder-1.0.so, libgsturidownloader-1.0.so, libgstva-1.0.so, libgstwayland-1.0.so, libgstwebrtc-1.0.so, and several plugins under /usr/lib/gstreamer-1.0]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gstreamer-1.0/gst/{audio,basecamerabinsrc,cuda}, /usr/include/gstreamer-1.0/gst/{codecparsers,insertbin,interfaces}, /usr/include/gstreamer-1.0/gst/{isoff,mpegts,play,player,sctp} /usr/include/gstreamer-1.0/gst/{transcoder,uridownloader,va}, and /usr/include/gstreamer-1.0/gst/{wayland,webrtc}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ---------------------------------------------------------------------------------
  []{#gst-transcoder-1.0}[[**gst-transcoder-1.0**]{.command}]{.term}   is used to transcode a stream into a different format
  []{#playout}[[**playout**]{.command}]{.term}                         is an example application used to sequentially play a list of audio-video files
  -------------------------------------------------------------------- ---------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gst10-plugins-good.md "gst-plugins-good-1.28.3"){accesskey="p"}

    gst-plugins-good-1.28.3

-   [Next](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3"){accesskey="n"}

    gst-plugins-ugly-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

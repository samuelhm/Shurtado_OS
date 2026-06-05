::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gstreamer10.md "gstreamer-1.28.3"){accesskey="p"}

    gstreamer-1.28.3

-   [Next](gst10-plugins-good.md "gst-plugins-good-1.28.3"){accesskey="n"}

    gst-plugins-good-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst10-plugins-base}gst-plugins-base-1.28.3 {#gst-plugins-base-1.28.3 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GStreamer Base Plug-ins {#introduction-to-gstreamer-base-plug-ins .sect2}

The [GStreamer Base Plug-ins]{.application} is a well-groomed and well-maintained collection of [GStreamer]{.application} plug-ins and elements, spanning the range of possible types of elements one would want to write for [GStreamer]{.application}. You will need at least one of Good, Bad, Ugly or Libav plugins for [GStreamer]{.application} applications to function properly.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: 0238ce29eb0b3b3a1b84115f96a121b0

-   Download size: 2.5 MB

-   Estimated disk space required: 122 MB (with tests)

-   Estimated build time: 0.9 SBU (Using parallelism=4; with tests)
:::

### GStreamer Base Plug-ins Dependencies

#### Required

[gstreamer-1.28.3](gstreamer10.md "gstreamer-1.28.3"){.xref}

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [CDParanoia-III-10.2](cdparanoia.md "CDParanoia-III-10.2"){.xref} (for building the CDDA plugin), [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}, [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref}, and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Optional

[graphene-1.10.8](../x/graphene.md "Graphene-1.10.8"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for examples), [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [hotdoc](https://pypi.org/project/hotdoc){.ulink}, [libtheora](http://www.theora.org){.ulink}, [libvisual](http://libvisual.org/){.ulink}, [Orc](https://gstreamer.freedesktop.org/src/orc/){.ulink}, and [Tremor](https://wiki.xiph.org/Tremor){.ulink}
:::::

::::: {.installation lang="en"}
## Installation of GStreamer Base Plug-ins {#installation-of-gstreamer-base-plug-ins .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
:::

Install [GStreamer Base Plug-ins]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..               \
      --prefix=/usr          \
      --buildtype=release    \
      --wrap-mode=nodownload &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests require an X terminal running, or all of the GL tests will fail.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When installing, the build process does some additional linking. If you do not have Xorg in /usr, the LIBRARY_PATH variable needs to be defined for the root user. If using sudo to assume root, use the -E option to pass your current environment variables for the install process.
:::

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nodownload`*: This switch prevents [**meson**]{.command} from downloading any optional dependency which is not installed on the system.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gst-device-monitor-1.0, gst-discoverer-1.0, and gst-play-1.0]{.segbody}
:::

::: seg
**Installed Libraries:** [libgstallocators-1.0.so, libgstapp-1.0.so, libgstaudio-1.0.so, libgstfft-1.0.so, libgstgl-1.0.so, libgstpbutils-1.0.so, libgstriff-1.0.so, libgstrtp-1.0.so, libgstrtsp-1.0.so, libgstsdp-1.0.so, libgsttag-1.0.so, libgstvideo-1.0.so, and several plugins under /usr/lib/gstreamer-1.0]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gstreamer-1.0/gst/{allocators,app,audio,fft,gl,pbutils}, /usr/include/gstreamer-1.0/gst/{riff,rtp,rtsp,sdp,tag,video}, and /usr/share/gst-plugins-base]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------
  []{#gst-device-monitor-1.0}[[**gst-device-monitor-1.0**]{.command}]{.term}   is a command line tool that can be used to test GStreamer's device monitoring functionality
  []{#gst-discoverer-1.0}[[**gst-discoverer-1.0**]{.command}]{.term}           is a tool that can be used to print basic metadata and stream information about a media file
  []{#gst-play-1.0}[[**gst-play-1.0**]{.command}]{.term}                       is a command line tool that can be used to test basic playback using the playbin element
  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gstreamer10.md "gstreamer-1.28.3"){accesskey="p"}

    gstreamer-1.28.3

-   [Next](gst10-plugins-good.md "gst-plugins-good-1.28.3"){accesskey="n"}

    gst-plugins-good-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

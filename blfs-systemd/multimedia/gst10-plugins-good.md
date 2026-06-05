::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-base.md "gst-plugins-base-1.28.3"){accesskey="p"}

    gst-plugins-base-1.28.3

-   [Next](gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){accesskey="n"}

    gst-plugins-bad-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst10-plugins-good}gst-plugins-good-1.28.3 {#gst-plugins-good-1.28.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GStreamer Good Plug-ins {#introduction-to-gstreamer-good-plug-ins .sect2}

The [GStreamer Good Plug-ins]{.application} is a set of plug-ins considered by the [GStreamer]{.application} developers to have good quality code, correct functionality, and the preferred license (LGPL for the plug-in code, LGPL or LGPL-compatible for the supporting library). A wide range of video and audio decoders, encoders, and filters are included.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: 8a65245b9723adf0fe2a01e08480f4ff

-   Download size: 5.8 MB

-   Estimated disk space required: 130 MB (with tests)

-   Estimated build time: 0.6 SBU (Using parallelism=4; with tests)
:::

### GStreamer Good Plug-ins Dependencies

#### Required

[gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}

#### Recommended

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [LAME-3.100](lame.md "LAME-3.100"){.xref}, [libsoup-3.6.6](../basicnet/libsoup3.md "libsoup-3.6.6"){.xref}, [libvpx-1.16.0](libvpx.md "libvpx-1.16.0"){.xref}, [mpg123-1.33.5](mpg123.md "mpg123-1.33.5"){.xref}, [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}, and [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}

#### Optional

[AAlib-1.4rc5](../general/aalib.md "AAlib-1.4rc5"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for examples), [libdv-1.0.0](libdv.md "Libdv-1.0.0"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [taglib-2.3](taglib.md "Taglib-2.3"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [v4l-utils-1.32.0](v4l-utils.md "v4l-utils-1.32.0"){.xref}, [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, [alsa-oss](https://www.alsa-project.org/files/pub/oss-lib){.ulink}, [hotdoc](https://pypi.org/project/hotdoc/){.ulink}, [JACK](https://jackaudio.org/){.ulink}, [libcaca](https://github.com/cacalabs/libcaca){.ulink}, [libavc1394](https://sourceforge.net/projects/libavc1394/){.ulink}, [libiec61883](https://sourceforge.net/projects/libraw1394/){.ulink}, [libraw1394](https://sourceforge.net/projects/libraw1394/){.ulink}, [libshout](https://www.icecast.org){.ulink}, [libsoup2](https://download.gnome.org/sources/libsoup/2.74/){.ulink}, [Orc](https://gstreamer.freedesktop.org/src/orc/){.ulink}, [TwoLame](https://www.twolame.org/){.ulink}, and [WavPack](https://wavpack.com/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of GStreamer Good Plug-ins {#installation-of-gstreamer-good-plug-ins .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
:::

Install [GStreamer Good Plug-ins]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. One test, `elements_flvmux`{.filename}, is known to fail on some systems.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [Several plugins under /usr/lib/gstreamer-1.0]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gstreamer-1.0/presets]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gst10-plugins-base.md "gst-plugins-base-1.28.3"){accesskey="p"}

    gst-plugins-base-1.28.3

-   [Next](gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){accesskey="n"}

    gst-plugins-bad-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

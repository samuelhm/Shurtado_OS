::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](opus.md "Opus-1.6.1"){accesskey="p"}

    Opus-1.6.1

-   [Next](pulseaudio.md "PulseAudio-17.0"){accesskey="n"}

    PulseAudio-17.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pipewire}Pipewire-1.6.6 {#pipewire-1.6.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pipewire {#introduction-to-pipewire .sect2}

The [pipewire]{.application} package contains a server and userspace API to handle multimedia pipelines. This includes a universal API to connect to multimedia devices, as well as sharing multimedia files between applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/1.6.6/pipewire-1.6.6.tar.bz2](https://gitlab.freedesktop.org/pipewire/pipewire/-/archive/1.6.6/pipewire-1.6.6.tar.bz2){.ulink}

-   Download MD5 sum: ac5ddcc6fc4b66025eb796e2c71001f1

-   Download size: 2.0 MB

-   Estimated disk space required: 110 MB (with tests)

-   Estimated build time: 0.7 SBU (with tests, both using parallelism=4)
:::

### Pipewire Dependencies

#### Recommended

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [gstreamer-1.28.3](gstreamer10.md "gstreamer-1.28.3"){.xref}, [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [SBC-2.2](sbc.md "SBC-2.2"){.xref}, [v4l-utils-1.32.0](v4l-utils.md "v4l-utils-1.32.0"){.xref}, and [Wireplumber-0.5.14](wireplumber.md "Wireplumber-0.5.14"){.xref} (runtime)

#### Optional

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [fdk-aac-2.0.3](fdk-aac.md "fdk-aac-2.0.3"){.xref}, [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, [libcanberra-0.30](libcanberra.md "libcanberra-0.30"){.xref}, [libdrm-2.4.134](../x/libdrm.md "Libdrm-2.4.134"){.xref} (for one example and libcamera support), [libxcb-1.17.0](../x/libxcb.md "libxcb-1.17.0"){.xref}, [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref} (for some examples), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}, [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref} (for documentation), [ffado](https://ffado.org/){.ulink}, [JACK](https://jackaudio.org/){.ulink}, [LC3plus](https://github.com/arkq/LC3plus){.ulink}, [ldacBT](https://github.com/EHfive/ldacBT){.ulink}, [libcamera](https://libcamera.org/){.ulink}, [libmysofa](https://github.com/hoene/libmysofa){.ulink}, [lilv](https://drobilla.net/software/lilv.md){.ulink}, and [xmltoman](https://sourceforge.net/projects/xmltoman/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/pipewire](https://wiki.linuxfromscratch.org/blfs/wiki/pipewire){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Pipewire {#installation-of-pipewire .sect2}

Install [pipewire]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                             \
      --prefix=/usr                        \
      --buildtype=release                  \
      -D session-managers="[]"             &&
ninja
```

To test the result, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D session-managers="[]"`*: This switch allows specifying the session managers to build as subprojects. We specify an empty list to prevent [**meson**]{.command} from downloading any external copy of the session managers. A Pipewire session manager recommended by the PipeWire developers for general use, [Wireplumber-0.5.14](wireplumber.md "Wireplumber-0.5.14"){.xref}, is available as a separate BLFS package. Build it after installing Pipewire if you need to run the Pipewire daemon (for example in order to support [Snapshot-50.0](../gnome/snapshot.md "Snapshot-50.0"){.xref}).

`-D docs=true`{.option}: This switch enables the generation of HTML documentation. The optional dependencies for documentation need to be installed for this to work.

`-D man=true`{.option}: This switch enables the generation of manual pages. The optional dependencies for documentation need to be installed for this to work.

`-D ffmpeg=enabled`{.option}: This switch enables using ffmpeg for audio conversion as a SPA backend.

`-D vulkan=enabled`{.option}: This switch enables using Vulkan for video rendering as a SPA backend.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pipewire, pw-cat, pw-cli, pw-config, pw-dot, pw-dump, pw-jack, pw-link, pw-loopback, pw-metadata, pw-mididump, pw-mon, pw-profiler, pw-reserve, pw-top, pw-v4l2, spa-acp-tool, spa-inspect, spa-json-dump, spa-monitor, spa-resample, and pipewire-aes67, pipewire-avb, pipewire-pulse (symlinks to pipewire), pw-dsdplay, pw-encplay, pw-midiplay, pw-midirecord, pw-play, pw-record (symlinks to pw-cat)]{.segbody}
:::

::: seg
**Installed Libraries:** [libpipewire-0.3.so and 60 modules below /usr/lib/pipewire-0.3 and /usr/lib/spa-0.2]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/pipewire-0.3, /usr/include/spa-0.2, /usr/lib/alsa-lib, /usr/lib/pipewire-0.3, /usr/lib/spa-0.2, /usr/share/alsa-card-profile, /usr/share/pipewire, and /usr/share/spa-0.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
  []{#pipewire-prog}[[**pipewire**]{.command}]{.term}          is a service that allows access to multimedia devices and allows sharing of multimedia files between applications
  []{#pipewire-pulse}[[**pipewire-pulse**]{.command}]{.term}   starts a Pulseaudio-compatible version of the pipewire service
  []{#pw-cat}[[**pw-cat**]{.command}]{.term}                   allows you to play or record media using a pipewire instance
  []{#pw-cli}[[**pw-cli**]{.command}]{.term}                   allows you to interact with a pipewire instance
  []{#pw-config}[[**pw-config**]{.command}]{.term}             allows you to interact with pipewire's configuration system for debugging purposes or syntax checking
  []{#pw-dot}[[**pw-dot**]{.command}]{.term}                   lists all of the daemons and objects in use by pipewire
  []{#pw-dump}[[**pw-dump**]{.command}]{.term}                 dumps debug messages from a local or remote pipewire instance to the console
  []{#pw-jack}[[**pw-jack**]{.command}]{.term}                 runs JACK applications on a pipewire instance
  []{#pw-link}[[**pw-link**]{.command}]{.term}                 links pipewire ports together
  []{#pw-loopback}[[**pw-loopback**]{.command}]{.term}         initializes a loopback link between two different pipewire ports. This is useful for testing and debugging
  []{#pw-metadata}[[**pw-metadata**]{.command}]{.term}         inspects, adds, and removes metadata for objects
  []{#pw-mididump}[[**pw-mididump**]{.command}]{.term}         dumps MIDI messages from a file to the screen
  []{#pw-mon}[[**pw-mon**]{.command}]{.term}                   allows you to monitor pipewire instances
  []{#pw-profiler}[[**pw-profiler**]{.command}]{.term}         tracks memory usage and API calls used by pipewire
  []{#pw-reserve}[[**pw-reserve**]{.command}]{.term}           reserves or monitors a device via D-Bus
  []{#pw-top}[[**pw-top**]{.command}]{.term}                   displays real-time performance information from pipewire
  []{#pw-v4l2}[[**pw-v4l2**]{.command}]{.term}                 runs v4l2 applications on a pipewire instance
  []{#spa-acp-tool}[[**spa-acp-tool**]{.command}]{.term}       inspects the card profile of a given sound card
  []{#spa-inspect}[[**spa-inspect**]{.command}]{.term}         allows you to inspect pipewire plugins
  []{#spa-json-dump}[[**spa-json-dump**]{.command}]{.term}     dumps the current pipewire configuration in JSON format
  []{#spa-monitor}[[**spa-monitor**]{.command}]{.term}         allows you to monitor pipewire plugins
  []{#spa-resample}[[**spa-resample**]{.command}]{.term}       resamples a given file
  []{#libpipewire}[`libpipewire-0.3.so`{.filename}]{.term}     contains API functions for handling multimedia pipelines
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](opus.md "Opus-1.6.1"){accesskey="p"}

    Opus-1.6.1

-   [Next](pulseaudio.md "PulseAudio-17.0"){accesskey="n"}

    PulseAudio-17.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

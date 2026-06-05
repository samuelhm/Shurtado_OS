::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 44. Video Utilities

-   [Prev](ffmpeg.md "FFmpeg-8.1.1"){accesskey="p"}

    FFmpeg-8.1.1

-   [Next](vlc.md "VLC-3.0.23"){accesskey="n"}

    VLC-3.0.23

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mpv}mpv-0.41.0 {#mpv-0.41.0 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to mpv {#introduction-to-mpv .sect2}

[mpv]{.application} is a free media player for the command line. It supports a wide variety of media file formats, audio and video codecs, and subtitle types.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mpv-player/mpv/archive/v0.41.0/mpv-0.41.0.tar.gz](https://github.com/mpv-player/mpv/archive/v0.41.0/mpv-0.41.0.tar.gz){.ulink}

-   Download MD5 sum: fa40a0fedeaf0a77127e238a39b9d4c4

-   Download size: 6.9 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.4 SBU
:::

### mpv Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, [libass-0.17.4](libass.md "libass-0.17.4"){.xref}, [libplacebo-7.360.1](libplacebo.md "libplacebo-7.360.1"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, and [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}

#### Recommended

[libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref}, [luajit-20260213](../general/luajit.md "luajit-20260213"){.xref}, [uchardet-0.0.8](../general/uchardet.md "Uchardet-0.0.8"){.xref}, and [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}

#### Optional Input Drivers and Libraries

[libdvdcss-1.5.0](libdvdcss.md "libdvdcss-1.5.0"){.xref}, [libdvdread-7.0.1](libdvdread.md "libdvdread-7.0.1"){.xref}, [libdvdnav-7.0.0](libdvdnav.md "libdvdnav-7.0.0"){.xref}, and [libbluray](https://www.videolan.org/developers/libbluray.md){.ulink}

#### Optional Audio Output Drivers and Libraries

[pipewire-1.6.6](pipewire.md "Pipewire-1.6.6"){.xref}, [sdl2-compat-2.32.68](sdl2.md "sdl2-compat-2.32.68"){.xref}, [JACK](https://jackaudio.org/){.ulink}, and [OpenAL](https://openal.org/){.ulink}

#### Optional Video Output Drivers and Libraries

[libcaca](https://github.com/cacalabs/libcaca){.ulink} and [SVGAlib](https://www.svgalib.org/){.ulink}

#### Optional (for documentation)

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of mpv {#installation-of-mpv .sect2}

Install [mpv]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D x11=enabled      \
            ..                  &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
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

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D x11=enabled`*: allows linking to the X11 libraries.

`-D dvdnav=enabled`{.option}: enables support for DVD playback.

`-D cdda=enabled`{.option}: enables support for CD Audio.

`-D sdl2=enabled`{.option}: enables the usage of SDL2 for audio and video output.
:::

:::: {.configuration lang="en"}
## Configuring mpv {#configuring-mpv .sect2}

::: {.sect3 lang="en"}
### []{#mpv-config}Config Files {#config-files .sect3}

`/etc/mpv/*`{.filename} and `~/.config/mpv/*`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mpv]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/mpv and /usr/share/doc/mpv]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- -------------------------
  []{#mpv-prog}[[**mpv**]{.command}]{.term}   is the mpv video player
  ------------------------------------------- -------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](ffmpeg.md "FFmpeg-8.1.1"){accesskey="p"}

    FFmpeg-8.1.1

-   [Next](vlc.md "VLC-3.0.23"){accesskey="n"}

    VLC-3.0.23

-   [Up](videoutils.md "Chapter 44. Video Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

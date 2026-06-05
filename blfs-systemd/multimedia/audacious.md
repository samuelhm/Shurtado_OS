::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](audioutils.md "Audio Utilities"){accesskey="p"}

    Audio Utilities

-   [Next](cdparanoia.md "CDParanoia-III-10.2"){accesskey="n"}

    CDParanoia-III-10.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#audacious}Audacious-4.6 {#audacious-4.6 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Audacious {#introduction-to-audacious .sect2}

[Audacious]{.application} is an audio player.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://distfiles.audacious-media-player.org/audacious-4.6.tar.bz2](https://distfiles.audacious-media-player.org/audacious-4.6.tar.bz2){.ulink}

-   Download MD5 sum: 2217b555fcbbc8e301642bede990e6ad

-   Download size: 508 KB

-   Estimated disk space required: 16 MB (with GTK support)

-   Estimated build time: 0.2 SBU (Using parallelism=4; with GTK support)
:::

### Additional Downloads

::: itemizedlist
**Required Plugins**

-   Download (HTTP): [https://distfiles.audacious-media-player.org/audacious-plugins-4.6.tar.bz2](https://distfiles.audacious-media-player.org/audacious-plugins-4.6.tar.bz2){.ulink}

-   Download MD5 sum: d6df715eb2f1bc9e10db8baa6f35d03f

-   Download size: 1.7 MB

-   Estimated disk space required: 41 MB (with GTK support)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with GTK support)
:::

### Audacious Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Recommended

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}

#### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}

#### Recommended (for Plugins)

[mpg123-1.33.5](mpg123.md "mpg123-1.33.5"){.xref}, [FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, and [neon-0.37.1](../basicnet/neon.md "neon-0.37.1"){.xref} (for online mp3 and ogg radio)

#### Optional (for Plugins)

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [FAAD2-2.11.2](faad2.md "FAAD2-2.11.2"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [LAME-3.100](lame.md "LAME-3.100"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [libcdio-2.1.0](libcdio.md "libcdio-2.1.0"){.xref} (to identify and play CDs), [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}, [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, [pipewire-1.6.6](pipewire.md "Pipewire-1.6.6"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [SDL3-3.4.10](sdl3.md "SDL3-3.4.10"){.xref}, [ampache-browser](https://ampache-browser.org/){.ulink}, [adplug](https://adplug.github.io/){.ulink}, [The Bauer stereophonic-to-binaural DSP (bs2b) library](https://sourceforge.net/projects/bs2b/){.ulink}, [FluidSynth](https://sourceforge.net/projects/fluidsynth/){.ulink}, [JACK](https://jackaudio.org/){.ulink} (requires [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}), [libcue](https://sourceforge.net/projects/libcue/){.ulink}, [libmodplug](https://sourceforge.net/projects/modplug-xmms/){.ulink}, [libmms](https://sourceforge.net/projects/libmms){.ulink}, [libopenmpt](https://lib.openmpt.org/libopenmpt/){.ulink}, [libsidplayfp](https://www.sourceforge.net/projects/sidplay-residfp/){.ulink}, [LIRC](https://www.lirc.org/){.ulink}, [sndio](https://sndio.org/){.ulink}, [SoX](https://sourceforge.net/p/soxr/wiki/Home/){.ulink}, and [WavPack](https://www.wavpack.com/){.ulink}
::::::

::::: {.installation lang="en"}
## Installation of Audacious {#installation-of-audacious .sect2}

::: {.sect3 lang="en"}
### Installation of the Main Audacious Program {#installation-of-the-main-audacious-program .sect3}

Install [Audacious]{.application} by running the following commands (you may wish to change the buildstamp to another string):

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk=true         \
      -D qt=true          \
      -D buildstamp=BLFS  \
      -D libarchive=true  &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.sect3 lang="en"}
### Installation of Audacious Plugins {#installation-of-audacious-plugins .sect3}

Install the required plugins package by issuing the following commands:

``` userinput
tar -xf ../../audacious-plugins-4.6.tar.bz2 &&
cd audacious-plugins-4.6                    &&

mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk=true         \
      -D qt=true          \
      -D opus=false       \
      -D wavpack=false    &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D buildstamp=BLFS`*: This switch appends the given text to the version string.

*`-D gtk=true`*: This option enables GTK support for the graphical user interface.

*`-D qt=true`*: This option enables Qt support for the graphical user interface.

*`-D libarchive=true`*: This adds libarchive support, for reading compressed module sets or skins.

`-D valgrind=true`{.option}: The option enables Valgrind analysis support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [audacious and audtool]{.segbody}
:::

::: seg
**Installed Libraries:** [libaudcore.so, libaudgui.so, libaudqt.so, libaudtag.so, and several plugin libraries under /usr/lib/audacious/ sub-directories]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{audacious,libaudcore,libaudgui,libaudqt}, /usr/lib/audacious, and /usr/share/audacious]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------------------------------------------------------
  []{#audacious-prog}[[**audacious**]{.command}]{.term}   is an audio player and is a descendant of [XMMS]{.application}
  []{#audtool}[[**audtool**]{.command}]{.term}            is a small tool to modify the behavior of a running [**audacious**]{.command} instance
  ------------------------------------------------------- ----------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](audioutils.md "Audio Utilities"){accesskey="p"}

    Audio Utilities

-   [Next](cdparanoia.md "CDParanoia-III-10.2"){accesskey="n"}

    CDParanoia-III-10.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

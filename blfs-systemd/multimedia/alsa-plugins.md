::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-lib.md "alsa-lib-1.2.16"){accesskey="p"}

    alsa-lib-1.2.16

-   [Next](alsa-utils.md "alsa-utils-1.2.15.2"){accesskey="n"}

    alsa-utils-1.2.15.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#alsa-plugins}alsa-plugins-1.2.12 {#alsa-plugins-1.2.12 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ALSA Plugins {#introduction-to-alsa-plugins .sect2}

The [ALSA Plugins]{.application} package contains plugins for various audio libraries and sound servers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.12.tar.bz2](https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.12.tar.bz2){.ulink}

-   Download MD5 sum: 71fce75baa38efab4e32e40db0a33716

-   Download size: 400 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### ALSA Plugins Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}

#### Optional

[FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref}, [libsamplerate-0.2.2](libsamplerate.md "libsamplerate-0.2.2"){.xref}, [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, [JACK](https://jackaudio.org/){.ulink}, and [libavtp](https://github.com/AVnu/libavtp/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of ALSA Plugins {#installation-of-alsa-plugins .sect2}

Install [ALSA Plugins]{.application} by running the following commands:

``` userinput
./configure --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [Numerous libasound_module\_*`<module>`*.so modules including conf_pulse, ctl_arcam_av, ctl_oss, ctl_pulse, pcm_a52, pcm_jack, pcm_oss, pcm_pulse, pcm_speex, pcm_upmix, pcm_usb_stream, pcm_vdownmix, rate_lavrate\*, rate_samplerate\*, and rate_speexrate\*]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/alsa-lib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------
  []{#libasound_module_pcm_oss.so}[`libasound_module_pcm_oss.so`{.filename}]{.term}                   Allows native [ALSA]{.application} applications to run on [OSS]{.application}
  []{#libasound_module_pcm_upmix.so}[`libasound_module_pcm_upmix.so`{.filename}]{.term}               Allows upmixing sound to 4 or 6 channels
  []{#libasound_module_pcm_vdownmix.so}[`libasound_module_pcm_vdownmix.so`{.filename}]{.term}         Allows downmixing sound from 4-6 channels to 2 channel stereo output
  []{#libasound_module_pcm_jack.so}[`libasound_module_pcm_jack.so`{.filename}]{.term}                 Allows native [ALSA]{.application} applications to work with [**jackd**]{.command}
  []{#libasound_module_pcm_pulse.so}[`libasound_module_pcm_pulse.so`{.filename}]{.term}               Allows native [ALSA]{.application} applications to access a [PulseAudio]{.application} sound daemon
  []{#libasound_module_pcm_a52.so}[`libasound_module_pcm_a52.so`{.filename}]{.term}                   Converts S16 linear sound format to A52 compressed format and sends it to an SPDIF output
  []{#libasound_module_rate_samplerate.so}[`libasound_module_rate_samplerate.so`{.filename}]{.term}   Provides an external rate converter through `libsamplerate`{.filename}
  --------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](alsa-lib.md "alsa-lib-1.2.16"){accesskey="p"}

    alsa-lib-1.2.16

-   [Next](alsa-utils.md "alsa-utils-1.2.15.2"){accesskey="n"}

    alsa-utils-1.2.15.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

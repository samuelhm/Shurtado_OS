::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](liba52.md "Liba52-0.8.0"){accesskey="p"}

    Liba52-0.8.0

-   [Next](libaom.md "libaom-3.14.1"){accesskey="n"}

    libaom-3.14.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libao}Libao-1.2.0 {#libao-1.2.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libao {#introduction-to-libao .sect2}

The [libao]{.application} package contains a cross-platform audio library. This is useful to output audio on a wide variety of platforms. It currently supports WAV files, OSS (Open Sound System), ESD (Enlighten Sound Daemon), ALSA (Advanced Linux Sound Architecture), NAS (Network Audio system), aRTS (analog Real-Time Synthesizer), and PulseAudio (next generation [GNOME]{.application} sound architecture).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz](https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz){.ulink}

-   Download MD5 sum: 9f5dd20d7e95fd0dd72df5353829f097

-   Download size: 456 KB

-   Estimated disk space required: 3.9 MB

-   Estimated build time: less than 0.1 SBU
:::

### Libao Dependencies

#### Optional

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, and [PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Libao {#installation-of-libao .sect2}

First, fix a gcc-14 issue:

``` userinput
sed -i '/limits.h/a #include <time.h>' src/plugins/pulse/ao_pulse.c
```

Install [libao]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 README /usr/share/doc/libao-1.2.0
```
:::

::::: {.configuration lang="en"}
## Configuring Libao {#configuring-libao .sect2}

::: {.sect3 lang="en"}
### []{#libao-config}Config Files {#config-files .sect3}

`/etc/libao.conf`{.filename} and `~/.libao`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Currently, the only configuration option available is setting the default output device. Issue [**man libao.conf**]{.command} for details.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libao.so and plugins under /usr/lib/ao/plugins-4]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ao, /usr/lib/ao and /usr/share/doc/libao-1.2.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ----------------------------------------------------------------------------------
  []{#libao-lib}[`libao.so`{.filename}]{.term}   provides functions for programs wishing to output sound over supported platforms
  ---------------------------------------------- ----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](liba52.md "Liba52-0.8.0"){accesskey="p"}

    Liba52-0.8.0

-   [Next](libaom.md "libaom-3.14.1"){accesskey="n"}

    libaom-3.14.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

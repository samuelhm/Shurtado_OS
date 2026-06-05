::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](pnmixer.md "pnmixer-0.7.2"){accesskey="p"}

    pnmixer-0.7.2

-   [Next](videoutils.md "Video Utilities"){accesskey="n"}

    Video Utilities

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vorbistools}vorbis-tools-1.4.3 {#vorbis-tools-1.4.3 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Vorbis Tools {#introduction-to-vorbis-tools .sect2}

The [Vorbis Tools]{.application} package contains command-line tools useful for encoding, playing or editing files using the Ogg codec.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.3.tar.gz](https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.3.tar.gz){.ulink}

-   Download MD5 sum: 2057a2f8778d4913ceb169268abf23d4

-   Download size: 1.7 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
:::

### Vorbis Tools Dependencies

#### Required

[libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}

#### Optional (required to build the [**ogg123**]{.command} program)

[libao-1.2.0](libao.md "Libao-1.2.0"){.xref}

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}, and [libkate](https://code.google.com/archive/p/libkate/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Vorbis Tools {#installation-of-vorbis-tools .sect2}

Install [Vorbis Tools]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --enable-vcut &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-vcut`*: This parameter is used so that the [**vcut**]{.command} program is built as it is not by default.
:::

::::: {.configuration lang="en"}
## Configuring Vorbis Tools {#configuring-vorbis-tools .sect2}

::: {.sect3 lang="en"}
### []{#vorbistools-config}Config Files {#config-files .sect3}

`/etc/libao.conf`{.filename}, `~/.libao`{.filename} and `~/.ogg123rc`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Issue [**man libao.conf**]{.command} for information about setting the default output device. Also see `/usr/share/doc/vorbis-tools-1.4.3/ogg123rc-example`{.filename}.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ogg123, oggdec, oggenc, ogginfo, vcut, and vorbiscomment]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/vorbis-tools-1.4.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ---------------------------------------------------------------------------------------
  []{#ogg123}[[**ogg123**]{.command}]{.term}                 is a command-line audio player for Ogg Vorbis streams
  []{#oggdec}[[**oggdec**]{.command}]{.term}                 is a simple decoder which converts Ogg Vorbis files into PCM audio files (WAV or raw)
  []{#oggenc}[[**oggenc**]{.command}]{.term}                 is an encoder that turns raw, WAV or AIFF files into an Ogg Vorbis stream
  []{#ogginfo}[[**ogginfo**]{.command}]{.term}               prints information stored in an audio file
  []{#vcut}[[**vcut**]{.command}]{.term}                     splits a file into two files at a designated cut point
  []{#vorbiscomment}[[**vorbiscomment**]{.command}]{.term}   is an editor that changes information in the audio file metadata tags
  ---------------------------------------------------------- ---------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](pnmixer.md "pnmixer-0.7.2"){accesskey="p"}

    pnmixer-0.7.2

-   [Next](videoutils.md "Video Utilities"){accesskey="n"}

    Video Utilities

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

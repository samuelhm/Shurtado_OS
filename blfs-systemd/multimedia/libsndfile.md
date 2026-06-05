::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libsamplerate.md "libsamplerate-0.2.2"){accesskey="p"}

    libsamplerate-0.2.2

-   [Next](libva.md "libva-2.23.0"){accesskey="n"}

    libva-2.23.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libsndfile}libsndfile-1.2.2 {#libsndfile-1.2.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libsndfile {#introduction-to-libsndfile .sect2}

[Libsndfile]{.application} is a library of C routines for reading and writing files containing sampled audio data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libsndfile/libsndfile/releases/download/1.2.2/libsndfile-1.2.2.tar.xz](https://github.com/libsndfile/libsndfile/releases/download/1.2.2/libsndfile-1.2.2.tar.xz){.ulink}

-   Download MD5 sum: 04e2e6f726da7c5dc87f8cf72f250d04

-   Download size: 716 KB

-   Estimated disk space required: 12 MB (add 10 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.3 SBU for tests)
:::

### libsndfile Dependencies

#### Recommended

[FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}, [Opus-1.6.1](opus.md "Opus-1.6.1"){.xref}, and [libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}

#### Optional

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [LAME-3.100](lame.md "LAME-3.100"){.xref}, [mpg123-1.33.5](mpg123.md "mpg123-1.33.5"){.xref}, and [Speex-1.2.1](speex.md "Speex-1.2.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libsndfile {#installation-of-libsndfile .sect2}

Fix building with [GCC-15]{.application}:

``` userinput
sed -i '/typedef enum/,/bool ;/d' src/ALAC/alac_{en,de}coder.c
```

Install [libsndfile]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --docdir=/usr/share/doc/libsndfile-1.2.2 &&
make
```

If running the test suite, disable the Opus tests which would fail with the recent Opus release and cause the test suite to bail out early:

``` userinput
sed '/ogg_opus/,+1s/HAVE_[A-Z_]*/0/' -i tests/lossy_comp_test.c
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [sndfile-cmp, sndfile-concat, sndfile-convert, sndfile-deinterleave, sndfile-info, sndfile-interleave, sndfile-metadata-get, sndfile-metadata-set, sndfile-play, and sndfile-salvage]{.segbody}
:::

::: seg
**Installed Library:** [libsndfile.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libsndfile-1.2.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------
  []{#sndfile-cmp}[[**sndfile-cmp**]{.command}]{.term}                     compares two audio files
  []{#sndfile-concat}[[**sndfile-concat**]{.command}]{.term}               concatenates two or more audio files
  []{#sndfile-convert}[[**sndfile-convert**]{.command}]{.term}             converts a sound file from one format to another
  []{#sndfile-deinterleave}[[**sndfile-deinterleave**]{.command}]{.term}   splits a multi-channel into multiple single channel files
  []{#sndfile-info}[[**sndfile-info**]{.command}]{.term}                   displays information about a sound file
  []{#sndfile-interleave}[[**sndfile-interleave**]{.command}]{.term}       converts multiple single channel files into a multi-channel file
  []{#sndfile-metadata-get}[[**sndfile-metadata-get**]{.command}]{.term}   retrieves metadata from a sound file
  []{#sndfile-metadata-set}[[**sndfile-metadata-set**]{.command}]{.term}   sets metadata in a sound file
  []{#sndfile-play}[[**sndfile-play**]{.command}]{.term}                   plays a sound file
  []{#sndfile-salvage}[[**sndfile-salvage**]{.command}]{.term}             salvages the audio data from WAV files which are more than 4 GB in size
  []{#libsndfile-lib}[`libsndfile.so`{.filename}]{.term}                   contains the [libsndfile]{.application} API functions
  ------------------------------------------------------------------------ -------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libsamplerate.md "libsamplerate-0.2.2"){accesskey="p"}

    libsamplerate-0.2.2

-   [Next](libva.md "libva-2.23.0"){accesskey="n"}

    libva-2.23.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

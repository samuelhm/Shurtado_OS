::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](dav1d.md "dav1d-1.5.3"){accesskey="p"}

    dav1d-1.5.3

-   [Next](faad2.md "FAAD2-2.11.2"){accesskey="n"}

    FAAD2-2.11.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#faac}faac-1.50 {#faac-1.50 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to faac {#introduction-to-faac .sect2}

The [faac]{.application} application is an encoder for a lossy sound compression scheme specified in MPEG-2 Part 7 and MPEG-4 Part 3 standards and known as Advanced Audio Coding (AAC). This encoder is useful for producing files that can be played back on an iPod. Moreover, the iPod does not understand other sound compression schemes used in video files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/faac/archive/v1.50/faac-1.50.tar.gz](https://github.com/lfs-book/faac/archive/v1.50/faac-1.50.tar.gz){.ulink}

-   Download MD5 sum: c474259822cf4caf1c47709b10b97963

-   Download size: 112 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own `lfs-book`{.literal} namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like [**wget**]{.command}). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
:::
::::::

::: {.installation lang="en"}
## Installation of faac {#installation-of-faac .sect2}

Install [faac]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D default_library=shared &&

ninja
```

This package does not come with a test suite. However, basic functionality can be tested by encoding a sample WAV file (the sample file is installed by the [alsa-utils-1.2.15.2](alsa-utils.md "alsa-utils-1.2.15.2"){.xref} package:

``` userinput
./frontend/faac -o Front_Left.mp4 /usr/share/sounds/alsa/Front_Left.wav
```

Then, decode the result using the [**faad**]{.command} program from the [FAAD2-2.11.2](faad2.md "FAAD2-2.11.2"){.xref} package and play back the decoded file (requires the [**aplay**]{.command} program from the [alsa-utils-1.2.15.2](alsa-utils.md "alsa-utils-1.2.15.2"){.xref} package:

``` userinput
faad Front_Left.mp4
aplay Front_Left.wav
```

[**aplay**]{.command} should identify the file as `Signed 16 bit Little Endian, Rate 48000 Hz, Stereo`{.computeroutput}, and you should hear the words [“[front left.]{.quote}”]{.quote}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D default_library=shared`*: prevents building the static library, which is not needed on a BLFS system.
:::

:::: {.sect2 lang="en"}
## Other AAC encoders {#other-aac-encoders .sect2}

The quality of [faac]{.application} is not up to par with the best AAC encoders currently available. Also, it only supports AAC and not High Efficiency AAC (also known as aacPlus), which provides better quality at low bitrates by means of using the [“[spectral band replication]{.quote}”]{.quote} technology. One example of an alternative program for producing AAC and HE-AAC streams is:

::: itemizedlist
-   [3GPP Enhanced aacPlus general audio codec](https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=1459){.ulink}: available in the source form, can encode only HE-AAC up to 48 kbps out of the box, but the maximum bitrate can be changed by editing the tuning table in the `FloatFR_sbrenclib/src/sbr_main.c`{.filename} file.
:::

Note, however, that the iPod supports only the Low Complexity AAC profile, which is the default in faac, but is completely unavailable in the 3GPP encoder.
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [faac]{.segbody}
:::

::: seg
**Installed Libraries:** [libfaac.so and libmp4v2.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------
  []{#faac-prog}[[**faac**]{.command}]{.term}      is a command-line AAC encoder
  []{#libfaac}[`libfaac.so`{.filename}]{.term}     contains functions for encoding AAC streams
  []{#libmp4v2}[`libmp4v2.so`{.filename}]{.term}   contains functions for creating and manipulating MP4 files
  ------------------------------------------------ ------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](dav1d.md "dav1d-1.5.3"){accesskey="p"}

    dav1d-1.5.3

-   [Next](faad2.md "FAAD2-2.11.2"){accesskey="n"}

    FAAD2-2.11.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](faac.md "faac-1.50"){accesskey="p"}

    faac-1.50

-   [Next](fdk-aac.md "fdk-aac-2.0.3"){accesskey="n"}

    fdk-aac-2.0.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#faad2}FAAD2-2.11.2 {#faad2-2.11.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to FAAD2 {#introduction-to-faad2 .sect2}

[FAAD2]{.application} is a decoder for a lossy sound compression scheme specified in MPEG-2 Part 7 and MPEG-4 Part 3 standards and known as Advanced Audio Coding (AAC).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/knik0/faad2/archive/2.11.2/faad2-2.11.2.tar.gz](https://github.com/knik0/faad2/archive/2.11.2/faad2-2.11.2.tar.gz){.ulink}

-   Download MD5 sum: 6a0ab532d81d9a528d08ab862bc4b637

-   Download size: 644 KB

-   Estimated disk space required: 9.6 MB

-   Estimated build time: 0.2 SBU
:::

### Additional Downloads

::: itemizedlist
-   Sample AAC file: [https://www.nch.com.au/acm/sample.aac](https://www.nch.com.au/acm/sample.aac){.ulink} (7 KB)
:::

### FAAD2 Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}
::::::

:::: {.installation lang="en"}
## Installation of FAAD2 {#installation-of-faad2 .sect2}

Install [FAAD2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON      \
      .. &&
make
```

This package does not come with a test suite. However, basic functionality can be tested by decoding the sample AAC file:

``` userinput
./faad -o sample.wav ../../sample.aac
```

This should display a copyright message and the following information about the sample file:

::: literallayout
`sample.aac file info:`{.computeroutput}\
`ADTS, 4.608 sec, 13 kbps, 16000 Hz`{.computeroutput}\
\
`  ---------------------`{.computeroutput}\
` | Config:  2 Ch       |`{.computeroutput}\
`  ---------------------`{.computeroutput}\
` | Ch |    Position    |`{.computeroutput}\
`  ---------------------`{.computeroutput}\
` | 00 | Left front     |`{.computeroutput}\
` | 01 | Right front    |`{.computeroutput}\
`  ---------------------`{.computeroutput}
:::

Now play the result (requires the [**aplay**]{.command} program from the [alsa-utils-1.2.15.2](alsa-utils.md "alsa-utils-1.2.15.2"){.xref} package):

``` userinput
aplay sample.wav
```

[**aplay**]{.command} should identify the file as `Signed 16 bit Little Endian, Rate 16000 Hz, Stereo`{.computeroutput}, and you should hear some piano notes.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [faad]{.segbody}
:::

::: seg
**Installed Library:** [libfaad.so and libfaad_drm.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ----------------------------------------------------------
  []{#faad-prog}[[**faad**]{.command}]{.term}    is a command-line utility for decoding AAC and MP4 files
  []{#libfaad}[`libfaad.so`{.filename}]{.term}   contains functions for decoding AAC streams
  ---------------------------------------------- ----------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](faac.md "faac-1.50"){accesskey="p"}

    faac-1.50

-   [Next](fdk-aac.md "fdk-aac-2.0.3"){accesskey="n"}

    fdk-aac-2.0.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

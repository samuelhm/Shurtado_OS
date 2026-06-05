::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](pulseaudio.md "PulseAudio-17.0"){accesskey="p"}

    PulseAudio-17.0

-   [Next](sdl2.md "sdl2-compat-2.32.68"){accesskey="n"}

    sdl2-compat-2.32.68

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sbc}SBC-2.2 {#sbc-2.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SBC {#introduction-to-sbc .sect2}

The [SBC]{.application} package is a digital audio encoder and decoder used to transfer data to Bluetooth audio output devices like headphones or loudspeakers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/bluetooth/sbc-2.2.tar.xz](https://www.kernel.org/pub/linux/bluetooth/sbc-2.2.tar.xz){.ulink}

-   Download MD5 sum: f3f1a4e69249241801bc8ddd6050de23

-   Download size: 272 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### SBC Dependencies

#### Optional

[libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of SBC {#installation-of-sbc .sect2}

Install [SBC]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static --disable-tester &&
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

*`--disable-tester`*: This disables the SBC tester. Remove it if you have installed [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref}.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [sbcdec, sbcenc, and sbcinfo]{.segbody}
:::

::: seg
**Installed Library:** [libsbc.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/sbc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  []{#sbcdec}[[**sbcdec**]{.command}]{.term}     is a SBC decoder utility
  []{#sbcenc}[[**sbcenc**]{.command}]{.term}     is a SBC encoder utility
  []{#sbcinfo}[[**sbcinfo**]{.command}]{.term}   is a subband codec (SBC) analyzer
  []{#libsbc}[`libsbc.so`{.filename}]{.term}     contains the [SBC]{.application} API functions
  ---------------------------------------------- ------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](pulseaudio.md "PulseAudio-17.0"){accesskey="p"}

    PulseAudio-17.0

-   [Next](sdl2.md "sdl2-compat-2.32.68"){accesskey="n"}

    sdl2-compat-2.32.68

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

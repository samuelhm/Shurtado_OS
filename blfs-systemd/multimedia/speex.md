::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](soundtouch.md "SoundTouch-2.4.1"){accesskey="p"}

    SoundTouch-2.4.1

-   [Next](svt-av1.md "SVT-AV1-4.1.0"){accesskey="n"}

    SVT-AV1-4.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#speex}Speex-1.2.1 {#speex-1.2.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Speex {#introduction-to-speex .sect2}

[Speex]{.application} is an audio compression format designed specifically for speech. It is well-adapted to internet applications and provides useful features that are not present in most other CODECs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/speex/speex-1.2.1.tar.gz](https://downloads.xiph.org/releases/speex/speex-1.2.1.tar.gz){.ulink}

-   Download MD5 sum: fe7bf610883ff202092b92c72fe0fe3e

-   Download size: 1020 KB

-   Estimated disk space required: 7.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/speex/speexdsp-1.2.1.tar.gz](https://downloads.xiph.org/releases/speex/speexdsp-1.2.1.tar.gz){.ulink}

-   Download MD5 sum: e6eb5ddef743a362c8018f260b91dca5

-   Download size: 904 KB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Speex Dependencies

#### Required

[libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}

#### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Speex {#installation-of-speex .sect2}

This package consists of two separate tarballs. They need to be extracted and built independently.

Install [Speex]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speex-1.2.1 &&
make
```

This package does not come with a test suite.

As the `root`{.systemitem} user:

``` root
make install
```

Now extract and install the speexdsp package:

``` userinput
cd ..                          &&
tar -xf speexdsp-1.2.1.tar.gz &&
cd speexdsp-1.2.1             &&

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speexdsp-1.2.1 &&
make
```

Again, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [speexenc and speexdec]{.segbody}
:::

::: seg
**Installed Libraries:** [libspeex.so and libspeexdsp.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/speex and /usr/share/doc/speex-1.2.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------
  []{#speexdec}[[**speexdec**]{.command}]{.term}         decodes a [Speex]{.application} file and produces a WAV or raw file
  []{#speexenc}[[**speexenc**]{.command}]{.term}         encodes a WAV or raw file using [Speex]{.application}
  []{#libspeex}[`libspeex.so`{.filename}]{.term}         provides functions for the audio encoding/decoding programs
  []{#libspeexdsp}[`libspeexdsp.so`{.filename}]{.term}   is a speech processing library that goes along with the [Speex]{.application} codec
  ------------------------------------------------------ -------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](soundtouch.md "SoundTouch-2.4.1"){accesskey="p"}

    SoundTouch-2.4.1

-   [Next](svt-av1.md "SVT-AV1-4.1.0"){accesskey="n"}

    SVT-AV1-4.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

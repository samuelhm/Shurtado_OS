::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](kwave.md "kwave-26.04.1"){accesskey="p"}

    kwave-26.04.1

-   [Next](mpg123.md "mpg123-1.33.5"){accesskey="n"}

    mpg123-1.33.5

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lame}LAME-3.100 {#lame-3.100 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LAME {#introduction-to-lame .sect2}

The [LAME]{.application} package contains an MP3 encoder and optionally, an MP3 frame analyzer. This is useful for creating and analyzing compressed audio files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/lame/lame-3.100.tar.gz](https://downloads.sourceforge.net/lame/lame-3.100.tar.gz){.ulink}

-   Download MD5 sum: 83e260acbe4389b54fe08e0bdbf7cddb

-   Download size: 1.5 MB

-   Estimated disk space required: 9.7 MB

-   Estimated build time: 0.1 SBU
:::

### LAME Dependencies

#### Optional

[Dmalloc](https://dmalloc.com/){.ulink}, [Electric Fence](https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/){.ulink}, [libsndfile-1.2.2](libsndfile.md "libsndfile-1.2.2"){.xref} and [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/lame](https://wiki.linuxfromscratch.org/blfs/wiki/lame){.ulink}
:::::

::: {.installation lang="en"}
## Installation of LAME {#installation-of-lame .sect2}

Prevent the source code directory from being mistakenly hardcoded as a shared library search path in the installed programs:

``` userinput
sed -i -e 's/^\(\s*hardcode_libdir_flag_spec\s*=\).*/\1/' configure
```

Install [LAME]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --enable-mp3rtp --disable-static &&
make
```

To test the results, issue: [**LD_LIBRARY_PATH=libmp3lame/.libs make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make pkghtmldir=/usr/share/doc/lame-3.100 install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-mp3rtp`*: This switch enables building the encode-to-RTP program.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-nasm`{.option}: This option enables the use of [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref} to compile optimized assembly routines for 32-bit x86. Note that this has no effect on x86_64.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lame and mp3rtp]{.segbody}
:::

::: seg
**Installed Library:** [libmp3lame.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/lame and /usr/share/doc/lame-3.100]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------
  []{#lame-prog}[[**lame**]{.command}]{.term}          creates MP3 audio files from raw PCM or `.wav`{.filename} data
  []{#mp3rtp}[[**mp3rtp**]{.command}]{.term}           is used to encode MP3 with RTP streaming of the output
  []{#libmp3lame}[`libmp3lame.so`{.filename}]{.term}   provides the functions necessary to convert raw PCM and WAV files to MP3 files
  ---------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kwave.md "kwave-26.04.1"){accesskey="p"}

    kwave-26.04.1

-   [Next](mpg123.md "mpg123-1.33.5"){accesskey="n"}

    mpg123-1.33.5

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

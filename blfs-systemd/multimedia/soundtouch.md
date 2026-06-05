::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){accesskey="p"}

    sound-theme-freedesktop-0.8

-   [Next](speex.md "Speex-1.2.1"){accesskey="n"}

    Speex-1.2.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#soundtouch}SoundTouch-2.4.1 {#soundtouch-2.4.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SoundTouch {#introduction-to-soundtouch .sect2}

The [SoundTouch]{.application} package contains an open-source audio processing library that allows changing the sound tempo, pitch and playback rate parameters independently from each other.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.surina.net/soundtouch/soundtouch-2.4.1.tar.gz](https://www.surina.net/soundtouch/soundtouch-2.4.1.tar.gz){.ulink}

-   Download MD5 sum: 6e8732dea92b6e65fc4ee75528ab0524

-   Download size: 592 KB

-   Estimated disk space required: 8.4 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::::: {.installation lang="en"}
## Installation of SoundTouch {#installation-of-soundtouch .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The tarball expands to 'soundtouch' instead of the expected 'soundtouch-2.4.1'
:::

Install [SoundTouch]{.application} by running the following commands:

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

The [**bootstrap**]{.command} command below fails if the ACLOCAL environment variable is set as specified in [Xorg-7](../x/xorg7.md "Introduction to Xorg-7"){.xref}. If it is used, ACLOCAL needs to be unset for this package and then reset for other packages.
:::

``` userinput
./bootstrap &&
./configure --prefix=/usr \
            --docdir=/usr/share/doc/soundtouch-2.4.1 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install 
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-openmp`{.option}: This switch adds support for running the algorithms in parallel across several processor cores using OpenMP implementation provided by GCC.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [soundstretch]{.segbody}
:::

::: seg
**Installed Library:** [libSoundTouch.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/soundtouch and /usr/share/doc/soundtouch-2.4.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  []{#soundstretch}[[**soundstretch**]{.command}]{.term}     is a program for processing WAV audio files by modifying sound tempo, pitch and playback rate properties independently from each other
  []{#libSoundTouch}[`libSoundTouch.so`{.filename}]{.term}   contains [SoundTouch]{.application} API functions
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){accesskey="p"}

    sound-theme-freedesktop-0.8

-   [Next](speex.md "Speex-1.2.1"){accesskey="n"}

    Speex-1.2.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

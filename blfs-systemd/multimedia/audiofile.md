::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-firmware.md "alsa-firmware-1.2.4"){accesskey="p"}

    alsa-firmware-1.2.4

-   [Next](dav1d.md "dav1d-1.5.3"){accesskey="n"}

    dav1d-1.5.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#audiofile}AudioFile-0.3.6 {#audiofile-0.3.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to AudioFile {#introduction-to-audiofile .sect2}

The [AudioFile]{.application} package contains the audio file libraries and two sound file support programs useful to support basic sound file formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz](https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz){.ulink}

-   Download MD5 sum: 235dde14742317328f0109e9866a8008

-   Download size: 520 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.6 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/audiofile-0.3.6-consolidated_patches-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/audiofile-0.3.6-consolidated_patches-1.patch){.ulink}
:::

### AudioFile Dependencies

#### Required

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}

#### Recommended

[FLAC-1.5.0](flac.md "FLAC-1.5.0"){.xref}

#### Optional

[asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of AudioFile {#installation-of-audiofile .sect2}

Install [AudioFile]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../audiofile-0.3.6-consolidated_patches-1.patch &&
autoreconf -fiv                             &&

./configure --prefix=/usr --disable-static  &&

make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

To test the results, issue: [**make check**]{.command}. Note that the tests will fail if the --disable-static option is used and tests are executed before [**make install**]{.command}. You have three options:

\(a\) configure without --disable-static, run the tests, but do not install, then start a fresh build using --disable-static just for installing the package.

\(b\) configure with --disable-static, but only run the tests after the package is installed.

\(c\) configure with --disable-static, but only run the tests after a DESTDIR install.
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
**Installed Programs:** [sfconvert and sfinfo]{.segbody}
:::

::: seg
**Installed Libraries:** [libaudiofile.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
  []{#sfinfo}[[**sfinfo**]{.command}]{.term}               displays the sound file format, audio encoding, sampling rate and duration for audio formats supported by this library
  []{#sfconvert}[[**sfconvert**]{.command}]{.term}         converts sound file formats where the original format and destination format are supported by this library
  []{#libaudiofile}[`libaudiofile.so`{.filename}]{.term}   contains functions used by programs to support AIFF, AIFF-compressed, Sun/NeXT, WAV and BIC audio formats
  -------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](alsa-firmware.md "alsa-firmware-1.2.4"){accesskey="p"}

    alsa-firmware-1.2.4

-   [Next](dav1d.md "dav1d-1.5.3"){accesskey="n"}

    dav1d-1.5.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

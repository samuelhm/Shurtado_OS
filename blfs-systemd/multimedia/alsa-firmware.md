::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](alsa-tools.md "alsa-tools-1.2.15"){accesskey="p"}

    alsa-tools-1.2.15

-   [Next](audiofile.md "AudioFile-0.3.6"){accesskey="n"}

    AudioFile-0.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#alsa-firmware}alsa-firmware-1.2.4 {#alsa-firmware-1.2.4 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ALSA Firmware {#introduction-to-alsa-firmware .sect2}

The [ALSA Firmware]{.application} package contains firmware for certain sound cards.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.alsa-project.org/files/pub/firmware/alsa-firmware-1.2.4.tar.bz2](https://www.alsa-project.org/files/pub/firmware/alsa-firmware-1.2.4.tar.bz2){.ulink}

-   Download MD5 sum: ee6c1d24a1a4ac1d86992b408ed710a2

-   Download size: 4.9 MB

-   Estimated disk space required: 39 MB

-   Estimated build time: less than 0.1 SBU
:::

### ALSA Firmware Dependencies

#### Required

[alsa-tools-1.2.15](alsa-tools.md "alsa-tools-1.2.15"){.xref}

#### Optional

[AS31](http://www.pjrc.com/tech/8051/){.ulink} (for rebuilding the firmware from source)
:::::

::: {.installation lang="en"}
## Installation of ALSA Firmware {#installation-of-alsa-firmware .sect2}

The [ALSA Firmware]{.application} package is only needed by those with advanced requirements for their sound card. See the README for configure options.

Install [ALSA Firmware]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [Several directories in /lib/firmware and /usr/share/alsa/firmware]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](alsa-tools.md "alsa-tools-1.2.15"){accesskey="p"}

    alsa-tools-1.2.15

-   [Next](audiofile.md "AudioFile-0.3.6"){accesskey="n"}

    AudioFile-0.3.6

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

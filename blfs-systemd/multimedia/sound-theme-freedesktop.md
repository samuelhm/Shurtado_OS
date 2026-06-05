::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](sdl3.md "SDL3-3.4.10"){accesskey="p"}

    SDL3-3.4.10

-   [Next](soundtouch.md "SoundTouch-2.4.1"){accesskey="n"}

    SoundTouch-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sound-theme-freedesktop}sound-theme-freedesktop-0.8 {#sound-theme-freedesktop-0.8 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Sound Theme Freedesktop {#introduction-to-sound-theme-freedesktop .sect2}

The [Sound Theme Freedesktop]{.application} package contains sound themes for the desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://people.freedesktop.org/\~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2](https://people.freedesktop.org/~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2){.ulink}

-   Download MD5 sum: d7387912cfd275282d1ec94483cb2f62

-   Download size: 472 KB

-   Estimated disk space required: 2 MB

-   Estimated build time: less than 0.1 SBU
:::

### sound-theme-freedesktop Dependencies

#### Required

[Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Sound Theme Freedesktop {#installation-of-sound-theme-freedesktop .sect2}

Install [Sound Theme Freedesktop]{.application} by running the following commands:

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
**Installed Directories:** [/usr/share/sounds/freedesktop]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](sdl3.md "SDL3-3.4.10"){accesskey="p"}

    SDL3-3.4.10

-   [Next](soundtouch.md "SoundTouch-2.4.1"){accesskey="n"}

    SoundTouch-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

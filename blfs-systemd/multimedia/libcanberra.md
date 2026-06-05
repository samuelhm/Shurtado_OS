::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libass.md "libass-0.17.4"){accesskey="p"}

    libass-0.17.4

-   [Next](libcddb.md "libcddb-1.3.2"){accesskey="n"}

    libcddb-1.3.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcanberra}libcanberra-0.30 {#libcanberra-0.30 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libcanberra {#introduction-to-libcanberra .sect2}

[libcanberra]{.application} is an implementation of the XDG Sound Theme and Name Specifications, for generating event sounds on free desktops, such as [GNOME]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz](https://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz){.ulink}

-   Download MD5 sum: 34cb7e4430afaf6f447c4ebdb9b42072

-   Download size: 312 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libcanberra-0.30-wayland-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libcanberra-0.30-wayland-1.patch){.ulink}
:::

### libcanberra Dependencies

#### Required

[libvorbis-1.3.7](libvorbis.md "libvorbis-1.3.7"){.xref}

#### Recommended

[alsa-lib-1.2.16](alsa-lib.md "alsa-lib-1.2.16"){.xref}, [gstreamer-1.28.3](gstreamer10.md "gstreamer-1.28.3"){.xref}, and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Optional

[PulseAudio-17.0](pulseaudio.md "PulseAudio-17.0"){.xref}, [GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink} and [tdb](https://tdb.samba.org/){.ulink}

#### Recommended Sound Theme (Run Time)

[sound-theme-freedesktop-0.8](sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){.xref}, or another theme, for example from [the gnome-look website](https://www.gnome-look.org/browse?cat=316){.ulink}
::::::

::: {.installation lang="en"}
## Installation of libcanberra {#installation-of-libcanberra .sect2}

First, apply a patch to fix an issue causing some applications to crash in Wayland-based desktop environments:

``` userinput
patch -Np1 -i ../libcanberra-0.30-wayland-1.patch
```

Install [libcanberra]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-oss &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make docdir=/usr/share/doc/libcanberra-0.30 install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-oss`*: disables optional deprecated OSS support

`--disable-gtk3`{.option}: disables optional support for GTK+-3
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [canberra-boot and canberra-gtk-play]{.segbody}
:::

::: seg
**Installed Libraries:** [libcanberra-gtk3.so and libcanberra.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/libcanberra-0.30, /usr/share/doc/libcanberra-0.30 and /usr/share/gtk-doc/html/libcanberra]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------
  []{#canberra-gtk-play}[[**canberra-gtk-play**]{.command}]{.term}   is an application used for playing sound events
  []{#libcanberra-gtk3}[`libcanberra-gtk3.so`{.filename}]{.term}     contains the [libcanberra]{.application} bindings for [GTK+ 3]{.application}
  []{#libcanberra-lib}[`libcanberra.so`{.filename}]{.term}           contains the [libcanberra]{.application} API functions
  ------------------------------------------------------------------ ------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libass.md "libass-0.17.4"){accesskey="p"}

    libass-0.17.4

-   [Next](libcddb.md "libcddb-1.3.2"){accesskey="n"}

    libcddb-1.3.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst-plugins-rs.md "gst-plugins-rs-1.28.3"){accesskey="p"}

    gst-plugins-rs-1.28.3

-   [Next](id3lib.md "id3lib-3.8.3"){accesskey="n"}

    id3lib-3.8.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst10-libav}gst-libav-1.28.3 {#gst-libav-1.28.3 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GStreamer Libav {#introduction-to-gstreamer-libav .sect2}

The [GStreamer Libav]{.application} package contains [GStreamer]{.application} plugins for [Libav]{.application} (a fork of [FFmpeg]{.application}).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: 08dd58cc1721c174958a34d3083017f6

-   Download size: 208 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
:::

### GStreamer Libav Dependencies

#### Required

[FFmpeg-8.1.1](ffmpeg.md "FFmpeg-8.1.1"){.xref} and [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}

#### Recommended

[yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref}

#### Optional

[hotdoc](https://pypi.org/project/hotdoc/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of GStreamer Libav {#installation-of-gstreamer-libav .sect2}

Install [GStreamer Libav]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

To run the tests, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgstlibav.so in /usr/lib/gstreamer-1.0]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](gst-plugins-rs.md "gst-plugins-rs-1.28.3"){accesskey="p"}

    gst-plugins-rs-1.28.3

-   [Next](id3lib.md "id3lib-3.8.3"){accesskey="n"}

    id3lib-3.8.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){accesskey="p"}

    gst-plugins-bad-1.28.3

-   [Next](gst-plugins-rs.md "gst-plugins-rs-1.28.3"){accesskey="n"}

    gst-plugins-rs-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst10-plugins-ugly}gst-plugins-ugly-1.28.3 {#gst-plugins-ugly-1.28.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GStreamer Ugly Plug-ins {#introduction-to-gstreamer-ugly-plug-ins .sect2}

The [GStreamer Ugly Plug-ins]{.application} is a set of plug-ins considered by the [GStreamer]{.application} developers to have good quality and correct functionality, but distributing them might pose problems. The license on either the plug-ins or the supporting libraries might not be how the [GStreamer]{.application} developers would like. The code might be widely known to present patent problems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.28.3.tar.xz](https://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.28.3.tar.xz){.ulink}

-   Download MD5 sum: 5206f9131dbafaa9758c878d2e43a00f

-   Download size: 232 KB

-   Estimated disk space required: 7.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### GStreamer Ugly Plug-ins Dependencies

#### Required

[gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}

#### Recommended

[liba52-0.8.0](liba52.md "Liba52-0.8.0"){.xref} (needed to play DVD's), [libdvdread-7.0.1](libdvdread.md "libdvdread-7.0.1"){.xref}, and [x264-20250815](x264.md "x264-20250815"){.xref}

#### Optional

[libmpeg2-0.5.1](libmpeg2.md "libmpeg2-0.5.1"){.xref}, [libcdio-2.1.0](libcdio.md "libcdio-2.1.0"){.xref} (for CD-ROM drive access), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [hotdoc](https://pypi.org/project/hotdoc/){.ulink}, [libsidplay](https://packages.debian.org/source/sid/libsidplay){.ulink}, and [Orc](https://gstreamer.freedesktop.org/src/orc/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of GStreamer Ugly Plug-ins {#installation-of-gstreamer-ugly-plug-ins .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you need a plugin for a given dependency, that dependency needs to be installed before this package.
:::

Install [GStreamer Ugly Plug-ins]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gpl=enabled      &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gpl=enabled`*: Without this switch, plugins with dependencies on (A)GPL licensed libraries are not built.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [Several plugins under /usr/lib/gstreamer-1.0]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){accesskey="p"}

    gst-plugins-bad-1.28.3

-   [Next](gst-plugins-rs.md "gst-plugins-rs-1.28.3"){accesskey="n"}

    gst-plugins-rs-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3"){accesskey="p"}

    gst-plugins-ugly-1.28.3

-   [Next](gst10-libav.md "gst-libav-1.28.3"){accesskey="n"}

    gst-libav-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gst-plugins-rs}gst-plugins-rs-1.28.3 {#gst-plugins-rs-1.28.3 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to gst-plugins-rs {#introduction-to-gst-plugins-rs .sect2}

The [gst-plugins-rs]{.application} package provides several Rust plugins for interacting with the gstreamer multimedia framework. This page has instructions for libgstdav1d and libgstgtk4.

The libgstdav1d plugin provides AV1 decoding via dav1d through gstreamer.

The libgstgtk4 plugin binds gstreamer to GTK-4.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs/-/archive/gstreamer-1.28.3/gst-plugins-rs-gstreamer-1.28.3.tar.gz](https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs/-/archive/gstreamer-1.28.3/gst-plugins-rs-gstreamer-1.28.3.tar.gz){.ulink}

-   Download MD5 sum: a78c788ae9678052ee6aae49feb6a20a

-   Download size: 3.3 MB

-   Estimated disk space required: 1.3 GB (45 MB installed)

-   Estimated build time: 0.9 SBU
:::

### gst-plugins-rs Dependencies

#### Required

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [gst-plugins-base-1.28.3](gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, and [rustc-1.96.0](../general/rust.md "Rustc-1.96.0"){.xref}

#### Required for libgstdav1d

[dav1d-1.5.3](dav1d.md "dav1d-1.5.3"){.xref}

#### Required for libgstgtk4

[GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

::::: {.installation lang="en"}
## Installation of gst-plugins-rs {#installation-of-gst-plugins-rs .sect2}

::: {.sect3 lang="en"}
### Installation of libgstdav1d {#installation-of-libgstdav1d .sect3}

Install [libgstdav1d]{.application} by running the following commands:

``` userinput
cargo build --package gst-plugin-dav1d --release
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -vm755 target/release/libgstdav1d.so /usr/lib/gstreamer-1.0
```
:::

::: {.sect3 lang="en"}
### Installation of libgstgtk4 {#installation-of-libgstgtk4 .sect3}

Install [libgstgtk4]{.application} by running the following commands:

``` userinput
cargo build --package gst-plugin-gtk4 --release
```

This package does not come with a test suite, but its basic functionality can be tested after installation.

Now, as the `root`{.systemitem} user:

``` root
install -vm755 target/release/libgstgtk4.so /usr/lib/gstreamer-1.0
```

To test the basic functionality of the package, issue: [**gst-launch-1.0 videotestsrc num-buffers=60 ! gtk4paintablesink**]{.command} in a graphical terminal emulator. It should play a test video in a GTK-4 window for 2 seconds.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgstdav1d.so and libgstgtk4.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------
  []{#libgstdav1d}[`libgstdav1d.so`{.filename}]{.term}   provides a binding between dav1d and the gstreamer multimedia framework
  []{#libgstgtk4}[`libgstgtk4.so`{.filename}]{.term}     provides a binding between GTK-4 and the gstreamer multimedia framework
  ------------------------------------------------------ -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3"){accesskey="p"}

    gst-plugins-ugly-1.28.3

-   [Next](gst10-libav.md "gst-libav-1.28.3"){accesskey="n"}

    gst-libav-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

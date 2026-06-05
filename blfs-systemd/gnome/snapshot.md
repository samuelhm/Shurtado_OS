::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](showtime.md "Showtime-49.1"){accesskey="p"}

    Showtime-49.1

-   [Next](../xfce/xfce.md "Xfce"){accesskey="n"}

    Xfce

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#snapshot}Snapshot-50.0 {#snapshot-50.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Snapshot {#introduction-to-snapshot .sect2}

The [Snapshot]{.application} package contains a program that takes pictures and videos from a Webcam.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/snapshot/50/snapshot-50.0.tar.xz](https://download.gnome.org/sources/snapshot/50/snapshot-50.0.tar.xz){.ulink}

-   Download MD5 sum: e3f37e058449601e2813e91b486c307f

-   Download size: 7.9 MB

-   Estimated disk space required: 1.0 GB (5.6 MB installed)

-   Estimated build time: 1.1 SBU (Using parallelism-4)
:::

### Snapshot Dependencies

#### Required

[libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [gst-plugins-bad-1.28.3](../multimedia/gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){.xref}, and [rustc-1.96.0](../general/rust.md "Rustc-1.96.0"){.xref}

#### Required at runtime

libgstgtk4 (from [gst-plugins-rs-1.28.3](../multimedia/gst-plugins-rs.md "gst-plugins-rs-1.28.3"){.xref}), [pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref}, [xdg-desktop-portal-gnome-50.0](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){.xref}, and [Xdg-user-dirs-0.20](../general/xdg-user-dirs.md "Xdg-user-dirs-0.20"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Snapshot {#installation-of-snapshot .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package takes a long time to build because LTO is enabled, and the LTO pass is not parallelized.
:::

Install [Snapshot]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [snapshot]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/snapshot]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------
  []{#snapshot-prog}[[**snapshot**]{.command}]{.term}   is a program used to take pictures and videos from a Webcam
  ----------------------------------------------------- -------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](showtime.md "Showtime-49.1"){accesskey="p"}

    Showtime-49.1

-   [Next](../xfce/xfce.md "Xfce"){accesskey="n"}

    Xfce

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

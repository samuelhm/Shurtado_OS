::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](seahorse.md "Seahorse-47.0.1"){accesskey="p"}

    Seahorse-47.0.1

-   [Next](snapshot.md "Snapshot-50.0"){accesskey="n"}

    Snapshot-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#showtime}Showtime-49.1 {#showtime-49.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Showtime {#introduction-to-showtime .sect2}

[Showtime]{.application} is an application used for playing audio and video files on the [GNOME]{.application} desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/showtime/49/showtime-49.1.tar.xz](https://download.gnome.org/sources/showtime/49/showtime-49.1.tar.xz){.ulink}

-   Download MD5 sum: 8646fd90b0bbfb9bda6fcb83a637c437

-   Download size: 2.8 MB

-   Estimated disk space required: 5.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Showtime Dependencies

#### Required

[blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, and [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Showtime {#installation-of-showtime .sect2}

Install [Showtime]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            ..                  &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [showtime]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/python3.14/site-packages/showtime]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- ----------------------------------------------------------------------------------------
  []{#showtime-prog}[[**showtime**]{.command}]{.term}   is a lightweight audio and video player designed for the [GNOME]{.application} desktop
  ----------------------------------------------------- ----------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](seahorse.md "Seahorse-47.0.1"){accesskey="p"}

    Seahorse-47.0.1

-   [Next](snapshot.md "Snapshot-50.0"){accesskey="n"}

    Snapshot-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

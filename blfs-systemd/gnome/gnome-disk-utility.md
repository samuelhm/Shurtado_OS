::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-connections.md "gnome-connections-50.0"){accesskey="p"}

    gnome-connections-50.0

-   [Next](gnome-logs.md "gnome-logs-45.0"){accesskey="n"}

    gnome-logs-45.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-disk-utility}gnome-disk-utility-46.1 {#gnome-disk-utility-46.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Disk Utility {#introduction-to-gnome-disk-utility .sect2}

The [GNOME Disk Utility]{.application} package provides applications used for dealing with storage devices.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-disk-utility/46/gnome-disk-utility-46.1.tar.xz](https://download.gnome.org/sources/gnome-disk-utility/46/gnome-disk-utility-46.1.tar.xz){.ulink}

-   Download MD5 sum: bfc4d0cfbf186ba5bd487f3fddbf07d2

-   Download size: 1.5 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.2 SBU
:::

### GNOME Disk Utility Dependencies

#### Required

[gnome-settings-daemon-50.1](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libdvdread-7.0.1](../multimedia/libdvdread.md "libdvdread-7.0.1"){.xref}, [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref}, [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref}, [libsecret-0.21.7](libsecret.md "libsecret-0.21.7"){.xref}, and [UDisks-2.11.1](../general/udisks2.md "UDisks-2.11.1"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Disk Utility {#installation-of-gnome-disk-utility .sect2}

Install [GNOME Disk Utility]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-disk-image-mounter and gnome-disks]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------
  []{#gnome-disk-image-mounter}[[**gnome-disk-image-mounter**]{.command}]{.term}   is used to set up disk images
  []{#gnome-disks}[[**gnome-disks**]{.command}]{.term}                             is used to inspect, format, partition and configure disks and block devices
  -------------------------------------------------------------------------------- -----------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-connections.md "gnome-connections-50.0"){accesskey="p"}

    gnome-connections-50.0

-   [Next](gnome-logs.md "gnome-logs-45.0"){accesskey="n"}

    gnome-logs-45.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

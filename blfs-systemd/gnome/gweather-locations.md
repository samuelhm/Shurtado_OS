::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgtop.md "libgtop-2.41.3"){accesskey="p"}

    libgtop-2.41.3

-   [Next](libgweather.md "libgweather-4.6.0"){accesskey="n"}

    libgweather-4.6.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gweather-locations}gweather-locations-2026.2 {#gweather-locations-2026.2 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gweather-locations {#introduction-to-gweather-locations .sect2}

This package provides a location and timezone database for the libgweather library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gweather-locations/2026/gweather-locations-2026.2.tar.xz](https://download.gnome.org/sources/gweather-locations/2026/gweather-locations-2026.2.tar.xz){.ulink}

-   Download MD5 sum: 6d600c6af383b611a17e5828adca81a9

-   Download size: 2.5 MB

-   Estimated disk space required: 65 MB

-   Estimated build time: less than 0.1 SBU
:::

### gweather-locations Dependencies

#### Required

[PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of gweather-locations {#installation-of-gweather-locations .sect2}

Install [gweather-locations]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
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
**Installed Libraries:** [Locations.bin]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/gweather-locations and /usr/share/gweather-locations]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libgtop.md "libgtop-2.41.3"){accesskey="p"}

    libgtop-2.41.3

-   [Next](libgweather.md "libgweather-4.6.0"){accesskey="n"}

    libgweather-4.6.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

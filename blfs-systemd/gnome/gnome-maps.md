::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-logs.md "gnome-logs-45.0"){accesskey="p"}

    gnome-logs-45.0

-   [Next](gnome-nettool.md "gnome-nettool-42.0"){accesskey="n"}

    gnome-nettool-42.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-maps}gnome-maps-50.1 {#gnome-maps-50.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Maps {#introduction-to-gnome-maps .sect2}

[GNOME Maps]{.application} is a map application for [GNOME]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-maps/50/gnome-maps-50.1.tar.xz](https://download.gnome.org/sources/gnome-maps/50/gnome-maps-50.1.tar.xz){.ulink}

-   Download MD5 sum: 060157a736d1966af0e1f893957d3437

-   Download size: 1.2 MB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Maps Dependencies

#### Required

[blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref}, [geocode-glib-3.26.4](geocode-glib.md "geocode-glib-3.26.4"){.xref}, [Gjs-1.88.0](gjs.md "Gjs-1.88.0"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [libportal-0.9.1](../general/libportal.md "libportal-0.9.1"){.xref}, [librest-0.10.2](librest.md "librest-0.10.2"){.xref}, and [libshumate-1.6.1](libshumate.md "libshumate-1.6.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Maps {#installation-of-gnome-maps .sect2}

Install [GNOME Maps]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

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
**Installed Programs:** [gnome-maps (symlink)]{.segbody}
:::

::: seg
**Installed Libraries:** [libgnome-maps.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/gnome-maps and /usr/share/gnome-maps]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ------------------------------------------------
  []{#gnome-maps-prog}[[**gnome-maps**]{.command}]{.term}   is a map application for [GNOME]{.application}
  --------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gnome-logs.md "gnome-logs-45.0"){accesskey="p"}

    gnome-logs-45.0

-   [Next](gnome-nettool.md "gnome-nettool-42.0"){accesskey="n"}

    gnome-nettool-42.0

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](gnome-terminal.md "gnome-terminal-3.60.0"){accesskey="p"}

    gnome-terminal-3.60.0

-   [Next](gucharmap.md "Gucharmap-17.0.2"){accesskey="n"}

    Gucharmap-17.0.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-weather}gnome-weather-48.0 {#gnome-weather-48.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Weather {#introduction-to-gnome-weather .sect2}

[GNOME Weather]{.application} is a small application that allows you to monitor the current weather conditions for your city, or anywhere in the world, and to access updated forecasts provided by various internet services.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-weather/48/gnome-weather-48.0.tar.xz](https://download.gnome.org/sources/gnome-weather/48/gnome-weather-48.0.tar.xz){.ulink}

-   Download MD5 sum: 35858b4f07ede013a835033b0b258d19

-   Download size: 252 KB

-   Estimated disk space required: 4.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Weather Dependencies

#### Required

[GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref}, [Gjs-1.88.0](gjs.md "Gjs-1.88.0"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, and [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}

#### Optional

[appstream-glib-0.8.3](../general/appstream-glib.md "appstream-glib-0.8.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Weather {#installation-of-gnome-weather .sect2}

Install [GNOME Weather]{.application} by running the following commands:

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
**Installed Programs:** [gnome-weather]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/org.gnome.Weather]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  []{#gnome-weather-prog}[[**gnome-weather**]{.command}]{.term}   is a small application that allows you to monitor the current weather conditions anywhere in the world
  --------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-terminal.md "gnome-terminal-3.60.0"){accesskey="p"}

    gnome-terminal-3.60.0

-   [Next](gucharmap.md "Gucharmap-17.0.2"){accesskey="n"}

    Gucharmap-17.0.2

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

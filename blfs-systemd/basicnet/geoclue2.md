::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](curl.md "cURL-8.20.0"){accesskey="p"}

    cURL-8.20.0

-   [Next](glib-networking.md "glib-networking-2.80.1"){accesskey="n"}

    glib-networking-2.80.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#geoclue2}GeoClue-2.8.1 {#geoclue-2.8.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GeoClue {#introduction-to-geoclue .sect2}

[GeoClue]{.application} is a modular geoinformation service built on top of the [D-Bus]{.application} messaging system. The goal of the [GeoClue]{.application} project is to make creating location-aware applications as simple as possible.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.8.1/geoclue-2.8.1.tar.bz2](https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.8.1/geoclue-2.8.1.tar.bz2){.ulink}

-   Download MD5 sum: a195d5300540209afb728d057fb1dea7

-   Download size: 112 KB

-   Estimated disk space required: 6.9 MB

-   Estimated build time: 0.1 SBU
:::

### GeoClue Dependencies

#### Required

[JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref} and [libsoup-3.6.6](libsoup3.md "libsoup-3.6.6"){.xref}

#### Recommended

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref}, and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Avahi-0.8](avahi.md "Avahi-0.8"){.xref} and [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GeoClue {#installation-of-geoclue .sect2}

Install [GeoClue]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr        \
            --buildtype=release  \
            -D gtk-doc=false     \
            -D nmea-source=false \
            ..                   &&
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

*`-D nmea-source=false`*: This switch disables the NMEA source. Remove it if you have installed the [Avahi]{.application} package and your local network has a NMEA server.

`-D 3g-source=false`{.option}: This switch disables the 3G backend. Use it if you have not installed the [ModemManager]{.application} package.

`-D modem-gps-source=false`{.option}: This switch disables the modem GPS backend. Use it if you have not installed the [ModemManager]{.application} package.

`-D cdma-source=false`{.option}: This switch disables the CDMA source backend. Use it if you have not installed the [ModemManager]{.application} package.

`-D demo-agent=false`{.option}: This switch disables the demo. Use it if you have not installed the [libnotify]{.application} package.
:::

::::: {.configuration lang="en"}
## Configuring GeoClue {#configuring-geoclue .sect2}

::: {.sect3 lang="en"}
### []{#geoclue2-config}Config Files {#config-files .sect3}

`/etc/geoclue/conf.d/90-lfs-google.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

In March of 2024, Mozilla announced the shutdown of the Mozilla Location Service. Geoclue uses this service for determining a user's location when requested by other applications. The only supported alternative by upstream is to use Google's Geolocation Service.

To use Google's Geolocation Service, an API key must be used, and a configuration file must be created. [**This API key is only intended for use with LFS. Please do not use this API key if you are building for another distro or distributing binary copies. If you need an API key, you can request one at [https://www.chromium.org/developers/how-tos/api-keys](https://www.chromium.org/developers/how-tos/api-keys){.ulink}.**]{.bold}

Create the configuration needed for using Google's Geolocation Service as the `root`{.systemitem} user:

``` root
cat > /etc/geoclue/conf.d/90-lfs-google.conf << "EOF"
# Begin /etc/geoclue/conf.d/90-lfs-google.conf

# This configuration applies for the WiFi source.
[wifi]

# Set the URL to Google's Geolocation Service.
url=https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDxKL42zsPjbke5O8_rPVpVrLrJ8aeE9rQ

# End /etc/geoclue/conf.d/90-lfs-google.conf
EOF
```

If you do not wish to request your location from a Geolocation service, you can hardcode your location in `/etc/geolocation`{.filename} using the format described in [geoclue(5)](https://man.archlinux.org/man/geoclue){.ulink}.
:::
:::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgeoclue-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/geoclue, /usr/include/libgeoclue-2.0, /usr/libexec/geoclue-2.0, and /usr/share/gtk-doc/html/{geoclue,libgeoclue}]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](curl.md "cURL-8.20.0"){accesskey="p"}

    cURL-8.20.0

-   [Next](glib-networking.md "glib-networking-2.80.1"){accesskey="n"}

    glib-networking-2.80.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-keyring.md "gnome-keyring-50.0"){accesskey="p"}

    gnome-keyring-50.0

-   [Next](tecla.md "Tecla-50.0"){accesskey="n"}

    Tecla-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-settings-daemon}gnome-settings-daemon-50.1 {#gnome-settings-daemon-50.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GNOME Settings Daemon {#introduction-to-gnome-settings-daemon .sect2}

The [GNOME Settings Daemon]{.application} is responsible for setting various parameters of a [GNOME Session]{.application} and the applications that run under it.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-settings-daemon/50/gnome-settings-daemon-50.1.tar.xz](https://download.gnome.org/sources/gnome-settings-daemon/50/gnome-settings-daemon-50.1.tar.xz){.ulink}

-   Download MD5 sum: 76c9f7b0a9ef25a3ade1afc77b32e04b

-   Download size: 1.4 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.1 SBU (using parallelism=4, add 1.7 SBU for tests)
:::

### GNOME Settings Daemon Dependencies

#### Required

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref}, [Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref}, [GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref}, [geocode-glib-3.26.4](geocode-glib.md "geocode-glib-3.26.4"){.xref}, [gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [libwacom-2.19.0](../general/libwacom.md "libwacom-2.19.0"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}

#### Recommended

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [NetworkManager-1.56.1](../basicnet/networkmanager.md "NetworkManager-1.56.1"){.xref}, [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, and [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Recommended dependencies are not strictly required for this package to build and function, but you may not get expected results at runtime if you don't install them.
:::
::::::

::: {.installation lang="en"}
## Installation of GNOME Settings Daemon {#installation-of-gnome-settings-daemon .sect2}

Install [GNOME Settings Daemon]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To check the results, execute: [**ninja test**]{.command}. Note that you must have [python-dbusmock]{.application} installed in order for the tests to complete successfully.

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
**Installed Libraries:** [libgsd.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/Xwayland-session.d, /usr/include/gnome-settings-daemon-48, /usr/lib/gnome-settings-daemon-48, and /usr/share/gnome-settings-daemon]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-keyring.md "gnome-keyring-50.0"){accesskey="p"}

    gnome-keyring-50.0

-   [Next](tecla.md "Tecla-50.0"){accesskey="n"}

    Tecla-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](tecla.md "Tecla-50.0"){accesskey="p"}

    Tecla-50.0

-   [Next](mutter.md "Mutter-50.1"){accesskey="n"}

    Mutter-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-control-center}gnome-control-center-50.2 {#gnome-control-center-50.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GNOME Control Center {#introduction-to-gnome-control-center .sect2}

The [GNOME Control Center]{.application} package contains the [GNOME]{.application} settings manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-control-center/50/gnome-control-center-50.2.tar.xz](https://download.gnome.org/sources/gnome-control-center/50/gnome-control-center-50.2.tar.xz){.ulink}

-   Download MD5 sum: ca1e3288bfd288a0b773dd7cf7b9a962

-   Download size: 6.8 MB

-   Estimated disk space required: 115 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
:::

### GNOME Control Center Dependencies

#### Required

[AccountsService-23.13.9](../general/accountsservice.md "AccountsService-23.13.9"){.xref}, [blueprint-compiler-0.20.4](../general/python-modules.md#blueprint-compiler "blueprint-compiler-0.20.4"){.xref}, [colord-gtk-0.3.1](../x/colord-gtk.md "colord-gtk-0.3.1"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [gnome-bluetooth-47.2](gnome-bluetooth.md "gnome-bluetooth-47.2"){.xref}, [gnome-online-accounts-3.58.1](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){.xref}, [gnome-settings-daemon-50.1](gnome-settings-daemon.md "gnome-settings-daemon-50.1"){.xref}, [gsound-1.0.3](gsound.md "GSound-1.0.3"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [libgtop-2.41.3](libgtop.md "libgtop-2.41.3"){.xref}, [libnma-1.10.6](../basicnet/libnma.md "libnma-1.10.6"){.xref}, [libpwquality-1.4.5](../postlfs/libpwquality.md "libpwquality-1.4.5"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref}, [Samba-4.24.0](../basicnet/samba.md "Samba-4.24.0"){.xref}, [shared-mime-info-2.4](../general/shared-mime-info.md "shared-mime-info-2.4"){.xref}, [Tecla-50.0](tecla.md "Tecla-50.0"){.xref}, and [UDisks-2.11.1](../general/udisks2.md "UDisks-2.11.1"){.xref}

#### Recommended

[bolt-0.9.11](../kde/bolt.md "bolt-0.9.11"){.xref} and [ibus-1.5.34](../general/ibus.md "ibus-1.5.34"){.xref}

#### Optional

[**Xvfb**]{.command} (from [Xorg-Server-21.1.23](../x/xorg-server.md "Xorg-Server-21.1.23"){.xref} or [Xwayland-24.1.12](../x/xwayland.md "Xwayland-24.1.12"){.xref}) and [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref} (both for tests)

#### Optional Runtime Dependencies

[cups-pk-helper-0.2.7](../general/cups-pk-helper.md "cups-pk-helper-0.2.7"){.xref} (Printers panel), [gnome-color-manager-3.36.2](gnome-color-manager.md "gnome-color-manager-3.36.2"){.xref} (Color panel), [gnome-shell-50.2](gnome-shell.md "gnome-shell-50.2"){.xref} (Applications panel), and [sound-theme-freedesktop-0.8](../multimedia/sound-theme-freedesktop.md "sound-theme-freedesktop-0.8"){.xref} (Additional Sound Effects in Sound panel)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Recommended dependencies are not strictly required for this package to build and function, but you may not get expected results at runtime if you don't install them.
:::
::::::

::: {.installation lang="en"}
## Installation of GNOME Control Center {#installation-of-gnome-control-center .sect2}

Install [GNOME Control Center]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**GTK_A11Y=none ninja test**]{.command}. Note that you must have the [python-dbusmock]{.application} module installed in order for the tests to complete successfully.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D ibus=false`{.option}: Use this switch if you have not installed the recommended [IBus]{.application} dependency.

`-D x11=true`{.option}: Use this switch to enable support for X11. Note that this is deprecated by upstream and will be removed in GNOME 50.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-control-center]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gnome-control-center, /usr/share/pixmaps/faces, and /usr/share/sounds/gnome]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#gnome-control-center-prog}[[**gnome-control-center**]{.command}]{.term}   is a graphical user interface used to configure various aspects of [GNOME]{.application}
  ----------------------------------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](tecla.md "Tecla-50.0"){accesskey="p"}

    Tecla-50.0

-   [Next](mutter.md "Mutter-50.1"){accesskey="n"}

    Mutter-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

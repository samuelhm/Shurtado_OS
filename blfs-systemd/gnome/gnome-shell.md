::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](mutter.md "Mutter-50.1"){accesskey="p"}

    Mutter-50.1

-   [Next](gnome-shell-extensions.md "gnome-shell-extensions-50.2"){accesskey="n"}

    gnome-shell-extensions-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-shell}gnome-shell-50.2 {#gnome-shell-50.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Shell {#introduction-to-gnome-shell .sect2}

The [GNOME Shell]{.application} is the core user interface of the [GNOME]{.application} Desktop environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-shell/50/gnome-shell-50.2.tar.xz](https://download.gnome.org/sources/gnome-shell/50/gnome-shell-50.2.tar.xz){.ulink}

-   Download MD5 sum: 96a19a2157b5bbcbda447888bb6f2f30

-   Download size: 2.2 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
:::

### GNOME Shell Dependencies

#### Required

[evolution-data-server-3.60.2](evolution-data-server.md "evolution-data-server-3.60.2"){.xref}, [Gcr-4.4.0.1](gcr4.md "Gcr-4.4.0.1"){.xref}, [Gjs-1.88.0](gjs.md "Gjs-1.88.0"){.xref}, [gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [ibus-1.5.34](../general/ibus.md "ibus-1.5.34"){.xref}, [Mutter-50.1](mutter.md "Mutter-50.1"){.xref}, [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}, and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Recommended

[desktop-file-utils-0.28](../general/desktop-file-utils.md "desktop-file-utils-0.28"){.xref}, [gnome-autoar-0.4.5](gnome-autoar.md "gnome-autoar-0.4.5"){.xref}, [gnome-bluetooth-47.2](gnome-bluetooth.md "gnome-bluetooth-47.2"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [NetworkManager-1.56.1](../basicnet/networkmanager.md "NetworkManager-1.56.1"){.xref}, and [power-profiles-daemon-0.30](../general/power-profiles-daemon.md "Power-profiles-daemon-0.30"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [bash-completion](https://github.com/scop/bash-completion){.ulink}

#### Required Runtime Dependencies

[adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [DConf-0.49.0](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref}, [GDM-50.1](../x/gdm.md "GDM-50.1"){.xref}, [libgweather-4.6.0](libgweather.md "libgweather-4.6.0"){.xref}, [libnma-1.10.6](../basicnet/libnma.md "libnma-1.10.6"){.xref}, and [Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref}

#### Recommended Runtime Dependencies

[gnome-menus-3.38.1](gnome-menus.md "gnome-menus-3.38.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Shell {#installation-of-gnome-shell .sect2}

Install [GNOME Shell]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D tests=false      \
            ..                  &&
ninja
```

To run the tests, ensure [Mutter]{.application} is installed after running its test suite, and issue:

``` userinput
meson configure -D tests=true &&
ninja test
```

You must be running in a Wayland session to run the tests. Some will fail if [GDM-50.1](../x/gdm.md "GDM-50.1"){.xref} is not installed. One test named `CSS styling support`{.filename} is known to fail with some multi-monitor configurations.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D extensions_tool=false`{.option}: This switch allows building this package without [gnome-autoar-0.4.5](gnome-autoar.md "gnome-autoar-0.4.5"){.xref} installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-extensions, gnome-extensions-app, gnome-shell, gnome-shell-extension-tool, and gnome-shell-test-tool]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/gnome-shell, /usr/share/gnome-shell, /usr/share/gtk-doc/html/{shell,st} (optional), and /usr/share/xdg-desktop-portal/]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------
  []{#gnome-shell-prog}[[**gnome-shell**]{.command}]{.term}   provides the core user interface functions for the [GNOME]{.application} Desktop
  ----------------------------------------------------------- ----------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mutter.md "Mutter-50.1"){accesskey="p"}

    Mutter-50.1

-   [Next](gnome-shell-extensions.md "gnome-shell-extensions-50.2"){accesskey="n"}

    gnome-shell-extensions-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

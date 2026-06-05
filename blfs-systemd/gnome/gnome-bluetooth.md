::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](nautilus.md "Nautilus-50.2.2"){accesskey="p"}

    Nautilus-50.2.2

-   [Next](gnome-keyring.md "gnome-keyring-50.0"){accesskey="n"}

    gnome-keyring-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-bluetooth}gnome-bluetooth-47.2 {#gnome-bluetooth-47.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Bluetooth {#introduction-to-gnome-bluetooth .sect2}

The [GNOME Bluetooth]{.application} package contains tools for managing and manipulating Bluetooth devices using the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-bluetooth/47/gnome-bluetooth-47.2.tar.xz](https://download.gnome.org/sources/gnome-bluetooth/47/gnome-bluetooth-47.2.tar.xz){.ulink}

-   Download MD5 sum: 8b4677d6693a6619f28d97a895f1b3be

-   Download size: 292 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4, with tests)
:::

### GNOME Bluetooth Dependencies

#### Required

[gsound-1.0.3](gsound.md "GSound-1.0.3"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref}

#### Optional at Runtime

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Bluetooth {#installation-of-gnome-bluetooth .sect2}

Install [GNOME Bluetooth]{.application} by running the following commands:

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
**Installed Programs:** [bluetooth-sendto]{.segbody}
:::

::: seg
**Installed Libraries:** [libgnome-bluetooth-3.0.so and libgnome-bluetooth-ui-3.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gnome-bluetooth-3.0 and /usr/share/gnome-bluetooth-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- -----------------------------------------------------------------------------
  []{#bluetooth-sendto}[[**bluetooth-sendto**]{.command}]{.term}               is a [GTK+]{.application} application for transferring files over Bluetooth
  []{#libgnome-bluetooth-3.0}[`libgnome-bluetooth-3.0.so`{.filename}]{.term}   contains the [GNOME Bluetooth]{.application} API functions
  ---------------------------------------------------------------------------- -----------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](nautilus.md "Nautilus-50.2.2"){accesskey="p"}

    Nautilus-50.2.2

-   [Next](gnome-keyring.md "gnome-keyring-50.0"){accesskey="n"}

    gnome-keyring-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

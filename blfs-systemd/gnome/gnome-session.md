::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-shell-extensions.md "gnome-shell-extensions-50.2"){accesskey="p"}

    gnome-shell-extensions-50.2

-   [Next](gnome-tweaks.md "gnome-tweaks-49.0"){accesskey="n"}

    gnome-tweaks-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-session}gnome-session-50.1 {#gnome-session-50.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Session {#introduction-to-gnome-session .sect2}

The [GNOME Session]{.application} package contains the [GNOME]{.application} session manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-session/50/gnome-session-50.1.tar.xz](https://download.gnome.org/sources/gnome-session/50/gnome-session-50.1.tar.xz){.ulink}

-   Download MD5 sum: 0c02fd88e93b89b8cf09f80637356ca8

-   Download size: 396 KB

-   Estimated disk space required: 7.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Session Dependencies

#### Required

[gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}, [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (runtime),]{.phrase} and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}

#### Optional

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} with [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref} and [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} (to build the documentation)
:::::

::: {.installation lang="en"}
## Installation of GNOME Session {#installation-of-gnome-session .sect2}

Install [GNOME Session]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr              \
            --buildtype=release        \
            -D man=false               \
            -D docbook=false           \
            ..                         &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If you generated the documentation, move it to a versioned directory:

``` root
mv -v /usr/share/doc/gnome-session{,-50.1}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false -D docbook=false`*: These parameters disable building documentation. Omit them if you have built the optional dependencies.

`-D x11=true`{.option}: This option enables support for X11 sessions. X11 support is deprecated and will be removed in GNOME 50.
:::

::: {.starting lang="en"}
## Starting GNOME {#starting-gnome .sect2}

The easiest way to start GNOME is to use a display manager. [GDM-50.1](../x/gdm.md "GDM-50.1"){.xref} is the recommended display manager.

It is also possible to start [GNOME]{.application} from the command line. However, you must still have [GDM-50.1](../x/gdm.md "GDM-50.1"){.xref} installed for the desktop to work. In previous releases of GNOME, gnome-shell would start without it installed, but this changed in 48.0. GDM does not need to be enabled to start gnome-shell from the command line.

To start [GNOME]{.application} without a display manager you need to determine your session ID, using [**loginctl**]{.command}. Once it is done, issue (we suppose the session ID is 1):

``` userinput
systemctl --user set-environment XDG_SESSION_TYPE=wayland XDG_SESSION_ID=1 &&
systemctl --user start gnome-session@gnome.target
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnome-session, gnome-session-inhibit, and gnome-session-quit]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/gnome-session-50.1 and /usr/share/gnome-session]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  []{#gnome-session-prog}[[**gnome-session**]{.command}]{.term}              is used to start up the [GNOME]{.application} Desktop environment
  []{#gnome-session-inhibit}[[**gnome-session-inhibit**]{.command}]{.term}   is used to inhibit certain [GNOME]{.application} Session functionality while executing the given command
  []{#gnome-session-quit}[[**gnome-session-quit**]{.command}]{.term}         is used to end the [GNOME]{.application} Session
  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gnome-shell-extensions.md "gnome-shell-extensions-50.2"){accesskey="p"}

    gnome-shell-extensions-50.2

-   [Next](gnome-tweaks.md "gnome-tweaks-49.0"){accesskey="n"}

    gnome-tweaks-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

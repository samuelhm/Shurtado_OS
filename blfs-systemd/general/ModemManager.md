::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](mc.md "MC-4.8.33"){accesskey="p"}

    MC-4.8.33

-   [Next](notification-daemon.md "notification-daemon-3.20.0"){accesskey="n"}

    notification-daemon-3.20.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ModemManager}ModemManager-1.24.2 {#modemmanager-1.24.2 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ModemManager {#introduction-to-modemmanager .sect2}

[ModemManager]{.application} provides a unified high level API for communicating with mobile broadband modems, regardless of the protocol used to communicate with the actual device.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/archive/1.24.2/ModemManager-1.24.2.tar.gz](https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/archive/1.24.2/ModemManager-1.24.2.tar.gz){.ulink}

-   Download MD5 sum: b72860c54670f362e947edba160fa98e

-   Download size: 2.0 MB

-   Estimated disk space required: 59 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; with tests)
:::

### ModemManager Dependencies

#### Required

[libgudev-238](libgudev.md "libgudev-238"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Recommended

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libmbim-1.34.0](libmbim.md "libmbim-1.34.0"){.xref}, [libqmi-1.38.0](libqmi.md "libqmi-1.38.0"){.xref}, [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}, and [Vala-0.56.19](vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref} (for one test)

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/ModemManager](https://wiki.linuxfromscratch.org/blfs/wiki/ModemManager){.ulink}
:::::

::: {.installation lang="en"}
## Installation of ModemManager {#installation-of-modemmanager .sect2}

Install [ModemManager]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=/usr            \
      --buildtype=release      \
      -D bash_completion=false \
      -D qrtr=false            &&
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

*`-D bash_completion=false`*: Use this option if the external [bash-completion](https://github.com/scop/bash-completion){.ulink} package is not installed.

*`-D qrtr=false`*: This switch disables support for the QRTR protocol which needs the external [libqrtr-glib](https://gitlab.freedesktop.org/mobile-broadband/libqrtr-glib){.ulink} package.
:::

:::: {.configuration lang="en"}
## Configuring ModemManager {#configuring-modemmanager .sect2}

::: {.sect3 lang="en"}
### []{#ModemManager-init}Systemd Units {#systemd-units .sect3}

To start the [**ModemManager**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable ModemManager
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mmcli and ModemManager]{.segbody}
:::

::: seg
**Installed Libraries:** [libmm-glib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/ModemManager, /usr/include/libmm-glib, /usr/include/ModemManager, /usr/lib/ModemManager, /usr/share/ModemManager, /usr/share/gtk-doc/html/libmm-glib (optional), and /usr/share/gtk-doc/html/ModemManager (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  []{#mmcli}[[**mmcli**]{.command}]{.term}                      is a utility used to control and monitor the [ModemManager]{.application}
  []{#ModemManager-prog}[[**ModemManager**]{.command}]{.term}   is a [D-Bus]{.application} service used to communicate with modems
  []{#libmm-glib}[`libmm-glib.so`{.filename}]{.term}            contains API functions for communicating with mobile broadband modems, regardless of the protocol used to communicate with the actual device
  ------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](mc.md "MC-4.8.33"){accesskey="p"}

    MC-4.8.33

-   [Next](notification-daemon.md "notification-daemon-3.20.0"){accesskey="n"}

    notification-daemon-3.20.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

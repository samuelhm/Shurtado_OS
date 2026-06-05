::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](unrar.md "UnRar-7.2.4"){accesskey="p"}

    UnRar-7.2.4

-   [Next](which.md "Which-2.25 and Alternatives"){accesskey="n"}

    Which-2.25 and Alternatives

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#upower}UPower-1.91.2 {#upower-1.91.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to UPower {#introduction-to-upower .sect2}

The [UPower]{.application} package provides an interface for enumerating power devices, listening to device events, and querying history and statistics. Any application or service on the system can access the org.freedesktop.UPower service via the system message bus.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/upower/upower/-/archive/v1.91.2/upower-v1.91.2.tar.bz2](https://gitlab.freedesktop.org/upower/upower/-/archive/v1.91.2/upower-v1.91.2.tar.bz2){.ulink}

-   Download MD5 sum: 4870a589b5e622f7c39bb3a978f1a7c8

-   Download size: 168 KB

-   Estimated disk space required: 6.5 MB (add 3.8 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.8 SBU for tests)
:::

### UPower Dependencies

#### Required

[libgudev-238](libgudev.md "libgudev-238"){.xref} and [libusb-1.0.30](libusb.md "libusb-1.0.30"){.xref}

#### Optional (Required if building GNOME)

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [PyGObject-3.56.3](python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, [dbusmock-0.38.1](python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref}, [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref} (for part of the test suite), and [libimobiledevice](https://libimobiledevice.org/){.ulink}
:::::

::: {.kernel lang="en"}
## []{#upower-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
```
:::

::: {.installation lang="en"}
## Installation of UPower {#installation-of-upower .sect2}

Install [UPower]{.application} by running the following commands:

``` userinput
mkdir build               &&
cd    build               &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk-doc=false    \
      -D man=false        &&
ninja
```

To test the results, issue: [**LC_ALL=C ninja test**]{.command}. The test suite should be run from a local GUI session started with dbus-launch. On 32-bit machines, one test will fail due to rounding errors: `Tests.test_battery_energy_charge_mixed`{.filename}. On some systems, two tests relating to the headphone hotplug feature are known to fail. Those can be safely ignored since the functionality still works.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D gtk-doc=false`*: Prevents building the documentation. Remove this if you have [GTK-Doc]{.application} installed and wish to build the documentation.

*`-D man=false`*: Prevents building the manual pages. Remove this if you have [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} and [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} installed and wish to build the manual pages.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [upower]{.segbody}
:::

::: seg
**Installed Libraries:** [libupower-glib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/UPower, /usr/include/libupower-glib, and /var/lib/upower]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------
  []{#upower-prog}[[**upower**]{.command}]{.term}              is the [UPower]{.application} command line tool
  []{#libupower-glib}[`libupower-glib.so`{.filename}]{.term}   contains the [UPower]{.application} API functions
  ------------------------------------------------------------ ---------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](unrar.md "UnRar-7.2.4"){accesskey="p"}

    UnRar-7.2.4

-   [Next](which.md "Which-2.25 and Alternatives"){accesskey="n"}

    Which-2.25 and Alternatives

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

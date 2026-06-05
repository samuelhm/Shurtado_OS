::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](atkmm.md "Atkmm-2.28.5"){accesskey="p"}

    Atkmm-2.28.5

-   [Next](cairo.md "Cairo-1.18.4"){accesskey="n"}

    Cairo-1.18.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#at-spi2-core}at-spi2-core-2.60.4 {#at-spi2-core-2.60.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to At-Spi2 Core {#introduction-to-at-spi2-core .sect2}

The [At-Spi2 Core]{.application} package contains a comprehensive accessibility framework for the Assistive Technologies available on the [GNOME]{.application} platform. This includes a set of interfaces which are implemented by other toolkits and applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/at-spi2-core/2.60/at-spi2-core-2.60.4.tar.xz](https://download.gnome.org/sources/at-spi2-core/2.60/at-spi2-core-2.60.4.tar.xz){.ulink}

-   Download MD5 sum: d471222e2413cced6e095a792bf3988c

-   Download size: 588 KB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### At-Spi2 Core Dependencies

#### Required

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME), [gsettings-desktop-schemas-50.1](../gnome/gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref} (Runtime), and [Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of At-Spi2 Core {#installation-of-at-spi2-core .sect2}

Install [At-Spi2 Core]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D gtk2_atk_adaptor=false &&
ninja
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

The test suite requires the glib schemas of the package to be installed already. The tests also need to run in a graphical environment. Now that the package is installed, test the results by issuing: [**dbus-run-session ninja test**]{.command}.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D docs=true`{.option}: Use this switch if you want to build the documentation. Note that you must have both [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} installed on your system.

*`-D gtk2_atk_adaptor=false`*: This switch disables building the GTK+-2 module for this package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libatk-1.0.so, libatk-bridge-2.0.so, and libatspi.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/atk-1.0, /usr/include/at-spi-2.0, /usr/include/at-spi2-atk, /usr/lib/gnome-settings-daemon-3.0, /usr/share/defaults/at-spi2, and /usr/share/gtk-doc/html/libatspi (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------------------------------------------------------
  []{#libatk-1.0}[`libatk-1.0.so`{.filename}]{.term}                 contains functions that are used by assistive technologies to interact with desktop applications
  []{#libatk-bridge-2.0}[`libatk-bridge-2.0.so`{.filename}]{.term}   contains the Accessibility Toolkit GTK+ module
  []{#libatspi}[`libatspi.so`{.filename}]{.term}                     contains the [At-Spi2]{.application} API functions
  ------------------------------------------------------------------ --------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](atkmm.md "Atkmm-2.28.5"){accesskey="p"}

    Atkmm-2.28.5

-   [Next](cairo.md "Cairo-1.18.4"){accesskey="n"}

    Cairo-1.18.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

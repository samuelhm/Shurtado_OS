::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](webkitgtk.md "WebKitGTK-2.52.0"){accesskey="p"}

    WebKitGTK-2.52.0

-   [Next](xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3"){accesskey="n"}

    xdg-desktop-portal-gtk-1.15.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-desktop-portal}xdg-desktop-portal-1.20.4 {#xdg-desktop-portal-1.20.4 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to xdg-desktop-portal {#introduction-to-xdg-desktop-portal .sect2}

[xdg-desktop-portal]{.application} is a D-Bus service that allows applications to interact with the desktop in a safe way. Several aspects of desktop interaction, like file chooser, desktop style, etc are implemented in different D-Bus APIs, known as [*portals*]{.emphasis}. Sandboxed applications benefit the most from this service since they don't need special permissions to use the portal APIs, but any application can use it. [xdg-desktop-portal]{.application} safeguards many resources and features with a user-controlled permission system. This service needs a backend implementing desktop-specific portal interfaces.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/flatpak/xdg-desktop-portal/releases/download/1.20.4/xdg-desktop-portal-1.20.4.tar.xz](https://github.com/flatpak/xdg-desktop-portal/releases/download/1.20.4/xdg-desktop-portal-1.20.4.tar.xz){.ulink}

-   Download MD5 sum: d0ed229846b14d6c4cd252245f9a7970

-   Download size: 1.2 MB

-   Estimated disk space required: 32 MB (add 3 MB for tests)

-   Estimated build time: 0.1 SBU (add 0.1 SBU for tests; with parallelism=4)
:::

### xdg-desktop-portal Dependencies

#### Required

[Fuse-3.18.2](../postlfs/fuse.md "Fuse-3.18.2"){.xref}, [gdk-pixbuf-2.44.6](gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [JSON-GLib-1.10.8](../general/json-glib.md "JSON-GLib-1.10.8"){.xref}, [pipewire-1.6.6](../multimedia/pipewire.md "Pipewire-1.6.6"){.xref}, and [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref} (at runtime). Furthermore, a backend is needed at runtime for this package to be of any use, either [xdg-desktop-portal-gtk-1.15.3](xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3"){.xref} or [xdg-desktop-portal-gnome-50.0](../gnome/xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){.xref} or [xdg-desktop-portal-lxqt-1.4.0](../lxqt/xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0"){.xref}

#### Recommended

[bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref} and [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} (for building the manual pages)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although there is an option to build the package without [bubblewrap]{.application}, upstream developers and LFS editors alike highly recommend to not use this possibility, as it will create a large security issue.
:::

#### Optional

[GeoClue-2.8.1](../basicnet/geoclue2.md "GeoClue-2.8.1"){.xref} (for the [“[location]{.quote}”]{.quote} portal), and [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} with [libportal-0.9.1](../general/libportal.md "libportal-0.9.1"){.xref}, [dbusmock-0.38.1](../general/python-modules.md#python-dbusmock "dbusmock-0.38.1"){.xref}, and [umockdev-0.19.7](../general/umockdev.md "Umockdev-0.19.7"){.xref} (for running tests)

#### Optional (for building the documentation)

[sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} with [sphinxext.opengraph](https://pypi.org/project/sphinxext-opengraph/){.ulink}, [sphinx_copybutton](https://pypi.org/project/sphinx-copybutton/){.ulink}, [furo](https://pypi.org/project/furo/){.ulink}, and [flatpak](https://github.com/flatpak/flatpak){.ulink}
::::::

::: {.installation lang="en"}
## Installation of xdg-desktop-portal {#installation-of-xdg-desktop-portal .sect2}

Install [xdg-desktop-portal]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D tests=disabled .. &&
ninja
```

If the optional dependencies are installed, you can test the results by running:

``` userinput
meson configure -D tests=enabled &&
ninja test
```

Without the external dependencies one test, integration/dynamiclauncher is known to fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D tests=disabled`*: Prevents requiring several optional dependencies that are only needed for tests.
:::

::::: {.configuration lang="en"}
## Configuring xdg-desktop-portal {#configuring-xdg-desktop-portal .sect2}

::: {.sect3 lang="en"}
### []{#xdg-desktop-portal-config}Config Files {#config-files .sect3}

The main configuration files are `~/.config/xdg-desktop-portal/portals.conf`{.filename}, `/etc/xdg-desktop-portal/portals.conf`{.filename}, and `/usr/share/xdg-desktop-portal/portals.conf`{.filename}. Several other locations can be searched for configuration files. See [portals.conf(5)](https://man.archlinux.org/man/portals.conf.5){.ulink}.
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The various configuration files are used to choose the backend depending of various conditions. See [portals.conf(5)](https://man.archlinux.org/man/portals.conf.5){.ulink} for details.
:::
:::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [several daemons in /usr/libexec]{.segbody}
:::

::: seg
**Installed Librar(y,ies):** [None]{.segbody}
:::

::: seg
**Installed Director(y,ies):** [None]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::::::

::: navfooter
-   [Prev](webkitgtk.md "WebKitGTK-2.52.0"){accesskey="p"}

    WebKitGTK-2.52.0

-   [Next](xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3"){accesskey="n"}

    xdg-desktop-portal-gtk-1.15.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

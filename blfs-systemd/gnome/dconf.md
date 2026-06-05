::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){accesskey="p"}

    xdg-desktop-portal-gnome-50.0

-   [Next](gnome-backgrounds.md "gnome-backgrounds-50.0"){accesskey="n"}

    gnome-backgrounds-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dconf}DConf-0.49.0 / DConf-Editor-49.0 {#dconf-0.49.0-dconf-editor-49.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to DConf {#introduction-to-dconf .sect2}

The [DConf]{.application} package contains a low-level configuration system. Its main purpose is to provide a backend to GSettings on platforms that don't already have configuration storage systems.

The [DConf-Editor]{.application}, as the name suggests, is a graphical editor for the [DConf]{.application} database. Installation is optional, because [**gsettings**]{.command} from [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} provides similar functionality on the commandline.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/dconf/0.49/dconf-0.49.0.tar.xz](https://download.gnome.org/sources/dconf/0.49/dconf-0.49.0.tar.xz){.ulink}

-   Download MD5 sum: 1a3ff8a464a4d9ebbaf112005bfed95a

-   Download size: 124 KB

-   Estimated disk space required: 9.7 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Additional Downloads

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/dconf-editor/49/dconf-editor-49.0.tar.xz](https://download.gnome.org/sources/dconf-editor/49/dconf-editor-49.0.tar.xz){.ulink}

-   Download MD5 sum: a1fa0f26ceffdcdb84d16c1b079a65a7

-   Download size: 640 KB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU
:::

### DConf Dependencies

#### Required

[dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for the editor), [libhandy-1.8.3](../x/libhandy1.md "libhandy-1.8.3"){.xref} (for the editor), and [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} (for the editor)

#### Recommended

[libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [bash-completion](https://github.com/scop/bash-completion){.ulink}
::::::

::: {.installation lang="en"}
## Installation of DConf {#installation-of-dconf .sect2}

Install [DConf]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            -D bash_completion=false \
            ..                       &&
ninja
```

To test the results, issue: [**dbus-run-session ninja test**]{.command}

As the `root`{.systemitem} user:

``` root
ninja install
```

Now, optionally install the editor:

``` userinput
cd ..              &&
tar -xf ../dconf-editor-49.0.tar.xz &&
cd dconf-editor-49.0                &&

mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

As the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=true`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dconf and dconf-editor]{.segbody}
:::

::: seg
**Installed Libraries:** [libdconf.so and libdconfsettings.so (GIO Module installed in `/usr/lib/gio/modules`{.filename})]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,share/gtk-doc/html}/dconf]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------
  []{#dconf-prog}[[**dconf**]{.command}]{.term}            is a simple tool for manipulating the [DConf]{.application} database
  []{#dconf-editor}[[**dconf-editor**]{.command}]{.term}   is a graphical program for editing the [DConf]{.application} database
  []{#libdconf}[`libdconf.so`{.filename}]{.term}           contains the [DConf]{.application} client API functions
  -------------------------------------------------------- -----------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){accesskey="p"}

    xdg-desktop-portal-gnome-50.0

-   [Next](gnome-backgrounds.md "gnome-backgrounds-50.0"){accesskey="n"}

    gnome-backgrounds-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

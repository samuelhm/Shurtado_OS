::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gsound.md "GSound-1.0.3"){accesskey="p"}

    GSound-1.0.3

-   [Next](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){accesskey="n"}

    DConf-0.49.0 / DConf-Editor-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-desktop-portal-gnome}xdg-desktop-portal-gnome-50.0 {#xdg-desktop-portal-gnome-50.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdg-desktop-portal-gnome {#introduction-to-xdg-desktop-portal-gnome .sect2}

[xdg-desktop-portal-gnome]{.application} is a backend for [xdg-desktop-portal]{.application} which uses GTK and various pieces of GNOME infrastructure.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.0.tar.xz](https://download.gnome.org/sources/xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.0.tar.xz){.ulink}

-   Download MD5 sum: 6ef350f31272babbb536cc745746adad

-   Download size: 196 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
:::

### xdg-desktop-portal-gnome Dependencies

#### Required

[gnome-desktop-44.5](gnome-desktop.md "gnome-desktop-44.5"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [libadwaita-1.9.1](../x/libadwaita.md "libadwaita-1.9.1"){.xref}, [xdg-desktop-portal-1.20.4](../x/xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref}, and [xdg-desktop-portal-gtk-1.15.3](../x/xdg-desktop-portal-gtk.md "xdg-desktop-portal-gtk-1.15.3"){.xref} (at runtime)

#### Recommended at Runtime

[Nautilus-50.2.2](nautilus.md "Nautilus-50.2.2"){.xref} (for the File Chooser portal)
:::::

:::: {.installation lang="en"}
## Installation of xdg-desktop-portal-gnome {#installation-of-xdg-desktop-portal-gnome .sect2}

Install [xdg-desktop-portal-gnome]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you installed the package to your system using a [“[DESTDIR]{.quote}”]{.quote} method, `/usr/share/glib-2.0/schemas/gschemas.compiled`{.filename} was not updated/created. Create (or update) the file using the following command as the `root`{.systemitem} user:

``` root
glib-compile-schemas /usr/share/glib-2.0/schemas
```
:::
::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [one daemon in /usr/libexec]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/xdg-desktop-portal (if no other [xdg-desktop-portal]{.application} backend is installed)]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](gsound.md "GSound-1.0.3"){accesskey="p"}

    GSound-1.0.3

-   [Next](dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){accesskey="n"}

    DConf-0.49.0 / DConf-Editor-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

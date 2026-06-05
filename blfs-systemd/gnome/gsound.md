::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](localsearch.md "localsearch-3.11.1"){accesskey="p"}

    localsearch-3.11.1

-   [Next](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){accesskey="n"}

    xdg-desktop-portal-gnome-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gsound}GSound-1.0.3 {#gsound-1.0.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GSound {#introduction-to-gsound .sect2}

The [gsound]{.application} package contains a small library for playing system sounds.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gsound/1.0/gsound-1.0.3.tar.xz](https://download.gnome.org/sources/gsound/1.0/gsound-1.0.3.tar.xz){.ulink}

-   Download MD5 sum: 7338c295034432a6e782fd20b3d04b68

-   Download size: 24 KB

-   Estimated disk space required: 864 KB

-   Estimated build time: less than 0.1 SBU
:::

### gsound Dependencies

#### Required

[libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for generating documentation)
:::::

::: {.installation lang="en"}
## Installation of GSound {#installation-of-gsound .sect2}

Install [gsound]{.application} by running the following commands:

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
**Installed Programs:** [gsound-play]{.segbody}
:::

::: seg
**Installed Libraries:** [libgsound.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gtk-doc/html/gsound]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------
  []{#gsound-play}[[**gsound-play**]{.command}]{.term}   plays system sounds through the libgsound interface
  []{#libgsound}[`libgsound.so`{.filename}]{.term}       contains API functions for playing system sounds
  ------------------------------------------------------ -----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](localsearch.md "localsearch-3.11.1"){accesskey="p"}

    localsearch-3.11.1

-   [Next](xdg-desktop-portal-gnome.md "xdg-desktop-portal-gnome-50.0"){accesskey="n"}

    xdg-desktop-portal-gnome-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

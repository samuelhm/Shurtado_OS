::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gjs.md "Gjs-1.88.0"){accesskey="p"}

    Gjs-1.88.0

-   [Next](gnome-desktop.md "gnome-desktop-44.5"){accesskey="n"}

    gnome-desktop-44.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-autoar}gnome-autoar-0.4.5 {#gnome-autoar-0.4.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to gnome-autoar {#introduction-to-gnome-autoar .sect2}

The [gnome-autoar]{.application} package provides a framework for automatic archive extraction, compression, and management.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-autoar/0.4/gnome-autoar-0.4.5.tar.xz](https://download.gnome.org/sources/gnome-autoar/0.4/gnome-autoar-0.4.5.tar.xz){.ulink}

-   Download MD5 sum: c8028c4df62c059418d4bdcde345cbe2

-   Download size: 52 KB

-   Estimated disk space required: 2.8 MB

-   Estimated build time: 0.1 SBU
:::

### gnome-autoar Dependencies

#### Required

[libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for building documentation)
:::::

::: {.installation lang="en"}
## Installation of gnome-autoar {#installation-of-gnome-autoar .sect2}

Install [gnome-autoar]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D vapi=true        \
            -D tests=true       \
            ..                  &&
ninja
```

To test the results, issue: [**ninja test**]{.command}

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=true`{.option}: Use this parameter if GTK-Doc is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgnome-autoar-0.so and libgnome-autoar-gtk-0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gnome-autoar-0 and /usr/share/gtk-doc/html/gnome-autoar]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- --------------------------------------------------------------
  []{#libgnome-autoar-0}[`libgnome-autoar-0.so`{.filename}]{.term}           provides API functions for automatic archive management
  []{#libgnome-autoar-gtk-0}[`libgnome-autoar-gtk-0.so`{.filename}]{.term}   provides GTK+ widgets to aid in automatic archive management
  -------------------------------------------------------------------------- --------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gjs.md "Gjs-1.88.0"){accesskey="p"}

    Gjs-1.88.0

-   [Next](gnome-desktop.md "gnome-desktop-44.5"){accesskey="n"}

    gnome-desktop-44.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

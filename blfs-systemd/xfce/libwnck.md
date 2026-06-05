::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](garcon.md "Garcon-4.20.0"){accesskey="p"}

    Garcon-4.20.0

-   [Next](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){accesskey="n"}

    xfce4-dev-tools-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libwnck}libwnck-43.3 {#libwnck-43.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libwnck {#introduction-to-libwnck .sect2}

The [libwnck]{.application} package contains the Window Navigator Construction Kit.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libwnck/43/libwnck-43.3.tar.xz](https://download.gnome.org/sources/libwnck/43/libwnck-43.3.tar.xz){.ulink}

-   Download MD5 sum: 61938ba1c41f38c9c12033aca5706598

-   Download size: 448 KB

-   Estimated disk space required: 9.8 MB

-   Estimated build time: 0.1 SBU
:::

### libwnck Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection) and [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libwnck {#installation-of-libwnck .sect2}

Install [libwnck]{.application} by running the following commands:

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

`-D gtk_doc=true`{.option}: Use this option to build the API reference manual.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [wnckprop and wnck-urgency-monitor]{.segbody}
:::

::: seg
**Installed Library:** [libwnck-3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libwnck-3.0 and /usr/share/gtk-doc/html/libwnck-3.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------------------------
  []{#wnckprop}[[**wnckprop**]{.command}]{.term}     is used to print or modify the properties of a screen/workspace/window, or to interact with it
  []{#libwnck-3}[`libwnck-3.so`{.filename}]{.term}   contains functions for writing pagers and task lists
  -------------------------------------------------- ------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](garcon.md "Garcon-4.20.0"){accesskey="p"}

    Garcon-4.20.0

-   [Next](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){accesskey="n"}

    xfce4-dev-tools-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

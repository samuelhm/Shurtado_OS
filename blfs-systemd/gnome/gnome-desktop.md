::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-autoar.md "gnome-autoar-0.4.5"){accesskey="p"}

    gnome-autoar-0.4.5

-   [Next](gnome-menus.md "gnome-menus-3.38.1"){accesskey="n"}

    gnome-menus-3.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-desktop}gnome-desktop-44.5 {#gnome-desktop-44.5 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Desktop {#introduction-to-gnome-desktop .sect2}

The [GNOME Desktop]{.application} package contains a library that provides an API shared by several applications on the [GNOME]{.application} Desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-desktop/44/gnome-desktop-44.5.tar.xz](https://download.gnome.org/sources/gnome-desktop/44/gnome-desktop-44.5.tar.xz){.ulink}

-   Download MD5 sum: d99550c41db721f4a7f302bd95eef5c2

-   Download size: 748 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.3 SBU
:::

### GNOME Desktop Dependencies

#### Required

[gsettings-desktop-schemas-50.1](gsettings-desktop-schemas.md "gsettings-desktop-schemas-50.1"){.xref}, [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libseccomp-2.6.0](../general/libseccomp.md "libseccomp-2.6.0"){.xref}, and [xkeyboard-config-2.47](../x/xkeyboard-config.md "XKeyboardConfig-2.47"){.xref}

#### Recommended

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref}, [bubblewrap-0.11.2](../general/bubblewrap.md "Bubblewrap-0.11.2"){.xref} (needed for thumbnailers in Nautilus), and [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Optional

[itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, and [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GNOME Desktop {#installation-of-gnome-desktop .sect2}

Install [GNOME Desktop]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr         \
            --buildtype=release   \
            -D desktop_docs=false \
            ..                    &&
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

*`-D desktop_docs=false`*: This allows building the package without [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref} by disabling the installation of the copies and translations of the GNU FDL, GPL, and LGPL licenses.

`-D build_gtk4=false`{.option}: Use this option if you wish to build this package without [GTK-4.22.4](../x/gtk4.md "GTK-4.22.4"){.xref} installed. Note that it will likely cause GTK-4 applications depending on this package fail to build.

`-D legacy_library=false`{.option}: Use this option if you wish to build this package without [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed. Note that it will likely cause GTK-3 applications depending on this package fail to build.

`-D gtk_doc=true`{.option}: Use this parameter if you wish to build the API documentation.

`-D installed_tests=true`{.option}: Use this parameter you wish to enable the installed tests.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgnome-bg-4.so, libgnome-desktop-3.so, libgnome-desktop-4.so, and libgnome-rr-4.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gnome-desktop-3.0, /usr/include/gnome-desktop-4.0, /usr/libexec/gnome-desktop-debug, /usr/share/gtk-doc/html/gnome-desktop3 (optional), and /usr/share/help/\*/{fdl,gpl,lgpl} (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- -------------------------------------------------------------------------
  []{#libgnome-desktop-3}[`libgnome-desktop-3.so`{.filename}]{.term}   contains functions shared by several [GNOME]{.application} applications
  -------------------------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-autoar.md "gnome-autoar-0.4.5"){accesskey="p"}

    gnome-autoar-0.4.5

-   [Next](gnome-menus.md "gnome-menus-3.38.1"){accesskey="n"}

    gnome-menus-3.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

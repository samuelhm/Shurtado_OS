::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-desktop.md "gnome-desktop-44.5"){accesskey="p"}

    gnome-desktop-44.5

-   [Next](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){accesskey="n"}

    gnome-online-accounts-3.58.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnome-menus}gnome-menus-3.38.1 {#gnome-menus-3.38.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GNOME Menus {#introduction-to-gnome-menus .sect2}

The [GNOME Menus]{.application} package contains an implementation of the draft [Desktop Menu Specification](https://www.freedesktop.org/Standards/menu-spec){.ulink} from freedesktop.org. It also contains the [GNOME]{.application} menu layout configuration files and `.directory`{.filename} files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnome-menus/3.38/gnome-menus-3.38.1.tar.xz](https://download.gnome.org/sources/gnome-menus/3.38/gnome-menus-3.38.1.tar.xz){.ulink}

-   Download MD5 sum: bd89f4013689edf35a039ceb1a1b7c39

-   Download size: 464 KB

-   Estimated disk space required: 8.3 MB

-   Estimated build time: less than 0.1 SBU
:::

### GNOME Menus Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended)
:::::

::: {.installation lang="en"}
## Installation of GNOME Menus {#installation-of-gnome-menus .sect2}

Install [GNOME Menus]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libgnome-menu-3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/menus, /usr/include/gnome-menus-3.0, and /usr/share/desktop-directories]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
  []{#libgnome-menu-3}[`libgnome-menu-3.so`{.filename}]{.term}   contains functions required to support [GNOME]{.application}'s implementation of the Desktop Menu Specification
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gnome-desktop.md "gnome-desktop-44.5"){accesskey="p"}

    gnome-desktop-44.5

-   [Next](gnome-online-accounts.md "gnome-online-accounts-3.58.1"){accesskey="n"}

    gnome-online-accounts-3.58.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

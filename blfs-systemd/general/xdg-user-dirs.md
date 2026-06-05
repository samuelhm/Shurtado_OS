::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){accesskey="p"}

    xdg-dbus-proxy-0.1.7

-   [Next](sysutils.md "System Utilities"){accesskey="n"}

    System Utilities

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-user-dirs}Xdg-user-dirs-0.20 {#xdg-user-dirs-0.20 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xdg-user-dirs {#introduction-to-xdg-user-dirs .sect2}

[Xdg-user-dirs]{.application} is a tool to help manage [“[well known]{.quote}”]{.quote} user directories like the desktop folder and the music folder. It also handles localization (i.e. translation) of the filenames.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/xdg/xdg-user-dirs/-/archive/v0.20/xdg-user-dirs-v0.20.tar.gz](https://gitlab.freedesktop.org/xdg/xdg-user-dirs/-/archive/v0.20/xdg-user-dirs-v0.20.tar.gz){.ulink}

-   Download MD5 sum: a80c6f2cc9fd3d9870fcda76d73ce3e6

-   Download size: 68 KB

-   Estimated disk space required: 3.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### Xdg-user-dirs Dependencies

#### Optional

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (all three for building the man pages)
:::::

::: {.installation lang="en"}
## Installation of Xdg-user-dirs {#installation-of-xdg-user-dirs .sect2}

Install [xdg-user-dirs]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D docs=false       \
            .. &&
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

*`-D docs=false`*: Disable the installation of the man pages. Remove this switch if you've installed the optional dependencies and you wish to install the man pages of this package.
:::

:::: {.configuration lang="en"}
## Configuring Xdg-user-dirs {#configuring-xdg-user-dirs .sect2}

::: {.sect3 lang="en"}
### []{#xdg-user-dirs-config}Config Files {#config-files .sect3}

`~/.config/user-dirs.dirs`{.filename}, `/etc/xdg/user-dirs.conf`{.filename}, and `/etc/xdg/user-dirs.defaults`{.filename}. Those default locations can be overridden by `XDG_CONFIG_HOME`{.envar} and `XDG_CONFIG_DIRS`{.envar}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xdg-user-dir and xdg-user-dirs-update]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------------------------
  []{#xdg-user-dir}[[**xdg-user-dir**]{.command}]{.term}                   looks up the current path for one of the XDG user directories
  []{#xdg-user-dirs-update}[[**xdg-user-dirs-update**]{.command}]{.term}   creates localized versions of the user directories
  ------------------------------------------------------------------------ ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){accesskey="p"}

    xdg-dbus-proxy-0.1.7

-   [Next](sysutils.md "System Utilities"){accesskey="n"}

    System Utilities

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

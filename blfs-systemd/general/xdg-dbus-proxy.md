::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](unixodbc.md "unixODBC-2.3.14"){accesskey="p"}

    unixODBC-2.3.14

-   [Next](xdg-user-dirs.md "Xdg-user-dirs-0.20"){accesskey="n"}

    Xdg-user-dirs-0.20

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdg-dbus-proxy}xdg-dbus-proxy-0.1.7 {#xdg-dbus-proxy-0.1.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdg-dbus-proxy {#introduction-to-xdg-dbus-proxy .sect2}

The [xdg-dbus-proxy]{.application} package contains a filtering proxy for D-Bus connections. This is useful for forwarding data in and out of a sandbox.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/flatpak/xdg-dbus-proxy/releases/download/0.1.7/xdg-dbus-proxy-0.1.7.tar.xz](https://github.com/flatpak/xdg-dbus-proxy/releases/download/0.1.7/xdg-dbus-proxy-0.1.7.tar.xz){.ulink}

-   Download MD5 sum: f79f2de6c6667762ff4ab11f6927d5b7

-   Download size: 44 KB

-   Estimated disk space required: 996 KB

-   Estimated build time: less than 0.1 SBU
:::

### xdg-dbus-proxy Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of xdg-dbus-proxy {#installation-of-xdg-dbus-proxy .sect2}

Install [xdg-dbus-proxy]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

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
**Installed Programs:** [xdg-dbus-proxy]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- --------------------------------------------
  []{#xdg-dbus-proxy-prog}[[**xdg-dbus-proxy**]{.command}]{.term}   is a filtering proxy for D-Bus connections
  ----------------------------------------------------------------- --------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](unixodbc.md "unixODBC-2.3.14"){accesskey="p"}

    unixODBC-2.3.14

-   [Next](xdg-user-dirs.md "Xdg-user-dirs-0.20"){accesskey="n"}

    Xdg-user-dirs-0.20

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

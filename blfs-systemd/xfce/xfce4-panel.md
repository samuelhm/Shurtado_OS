::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4windowing.md "libxfce4windowing-4.20.6"){accesskey="p"}

    libxfce4windowing-4.20.6

-   [Next](thunar.md "thunar-4.20.8"){accesskey="n"}

    thunar-4.20.8

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-panel}xfce4-panel-4.20.7 {#xfce4-panel-4.20.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Panel {#introduction-to-xfce4-panel .sect2}

The [Xfce4 Panel]{.application} package contains the [Xfce4]{.application} Panel.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfce4-panel/4.20/xfce4-panel-4.20.7.tar.bz2](https://archive.xfce.org/src/xfce/xfce4-panel/4.20/xfce4-panel-4.20.7.tar.bz2){.ulink}

-   Download MD5 sum: b24103b17c0acb902ad32137e40e5198

-   Download size: 2.3 MB

-   Estimated disk space required: 60 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Xfce4 Panel Dependencies

#### Required

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [Exo-4.20.0](exo.md "Exo-4.20.0"){.xref}, [Garcon-4.20.0](garcon.md "Garcon-4.20.0"){.xref}, [libwnck-43.3](libwnck.md "libwnck-43.3"){.xref}, and [libxfce4windowing-4.20.6](libxfce4windowing.md "libxfce4windowing-4.20.6"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [libdbusmenu](https://launchpad.net/libdbusmenu){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/xfce4-panel](https://wiki.linuxfromscratch.org/blfs/wiki/xfce4-panel){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Panel {#installation-of-xfce4-panel .sect2}

Install [Xfce4 Panel]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
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

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xfce4-panel, xfce4-popup-applicationsmenu, xfce4-popup-directorymenu, and xfce4-popup-windowmenu]{.segbody}
:::

::: seg
**Installed Library:** [libxfce4panel-2.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/xfce4/panel, /usr/include/xfce4/libxfce4panel-1.0, /usr/lib/xfce4/panel, /usr/share/gtk-doc/html/libxfce4panel-1.0 and /usr/share/xfce4/panel]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfce4-panel-prog}[[**xfce4-panel**]{.command}]{.term}                                is the [Xfce]{.application} panel
  []{#xfce4-popup-applicationsmenu}[[**xfce4-popup-applicationsmenu**]{.command}]{.term}   is a shell script that uses [D-Bus]{.application} and [Xfce Panel]{.application} to display a popup menu of the installed applications
  []{#xfce4-popup-directorymenu}[[**xfce4-popup-directorymenu**]{.command}]{.term}         is a shell script that uses [D-Bus]{.application} and [Xfce Panel]{.application} to display a popup menu of your home folder and its subdirectories
  []{#xfce4-popup-windowmenu}[[**xfce4-popup-windowmenu**]{.command}]{.term}               is a shell script that uses [DBus]{.application} to display the [Xfwm4]{.application} a popup menu
  []{#libxfce4panel-2.0}[`libxfce4panel-2.0.so`{.filename}]{.term}                         contains the [Xfce Panel]{.application} API functions
  ---------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libxfce4windowing.md "libxfce4windowing-4.20.6"){accesskey="p"}

    libxfce4windowing-4.20.6

-   [Next](thunar.md "thunar-4.20.8"){accesskey="n"}

    thunar-4.20.8

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

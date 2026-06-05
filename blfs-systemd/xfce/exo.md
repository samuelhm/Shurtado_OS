::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4ui.md "libxfce4ui-4.20.2"){accesskey="p"}

    libxfce4ui-4.20.2

-   [Next](garcon.md "Garcon-4.20.0"){accesskey="n"}

    Garcon-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#exo}Exo-4.20.0 {#exo-4.20.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Exo {#introduction-to-exo .sect2}

[Exo]{.application} is a support library used in the [Xfce]{.application} desktop. It also has some helper applications that are used throughout [Xfce]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/exo/4.20/exo-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/exo/4.20/exo-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: f059ec3d8686d4b322c42d19ebec0366

-   Download size: 1.1 MB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### Exo Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}, and [libxfce4util-4.20.1](libxfce4util.md "libxfce4util-4.20.1"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Exo {#installation-of-exo .sect2}

Install [Exo]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [exo-desktop-item-edit and exo-open]{.segbody}
:::

::: seg
**Installed Libraries:** [libexo-2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/exo-2 and /usr/share/gtk-doc/html/exo-2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#exo-desktop-item-edit}[[**exo-desktop-item-edit**]{.command}]{.term}   is a command line utility to create or edit icons on the desktop
  []{#exo-open}[[**exo-open**]{.command}]{.term}                             is a command line frontend to the [Xfce]{.application} Preferred Applications framework. It can either be used to open a list of urls with the default URL handler or launch the preferred application for a certain category
  []{#libexo-2}[`libexo-2.so`{.filename}]{.term}                             contains additional widgets, a framework for editable toolbars, light-weight session management support and functions to automatically synchronise object properties (based on GObject Binding Properties)
  -------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libxfce4ui.md "libxfce4ui-4.20.2"){accesskey="p"}

    libxfce4ui-4.20.2

-   [Next](garcon.md "Garcon-4.20.0"){accesskey="n"}

    Garcon-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

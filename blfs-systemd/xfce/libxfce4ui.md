::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfconf.md "Xfconf-4.20.0"){accesskey="p"}

    Xfconf-4.20.0

-   [Next](exo.md "Exo-4.20.0"){accesskey="n"}

    Exo-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxfce4ui}libxfce4ui-4.20.2 {#libxfce4ui-4.20.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxfce4ui {#introduction-to-libxfce4ui .sect2}

The [libxfce4ui]{.application} package contains [GTK+ 3]{.application} widgets that are used by other [Xfce]{.application} applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/libxfce4ui/4.20/libxfce4ui-4.20.2.tar.bz2](https://archive.xfce.org/src/xfce/libxfce4ui/4.20/libxfce4ui-4.20.2.tar.bz2){.ulink}

-   Download MD5 sum: ce54074a9ed7964b4a3274e8ac74d949

-   Download size: 1.1 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
:::

### libxfce4ui Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [Xfconf-4.20.0](xfconf.md "Xfconf-4.20.0"){.xref}

#### Recommended

[startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libgtop-2.41.3](../gnome/libgtop.md "libgtop-2.41.3"){.xref}, [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}, and [Glade](https://glade.gnome.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libxfce4ui {#installation-of-libxfce4ui .sect2}

Install [libxfce4ui]{.application} by running the following commands:

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libxfce4kbd-private-{2,3}.so and libxfce4ui-{1,2}.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/xfce4, /usr/include/xfce4/libxfce4kbd-private-2, /usr/include/xfce4/libxfce4ui-{1,2}, and /usr/share/gtk-doc/html/libxfce4ui]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------
  []{#libxfce4kbd-private-2}[`libxfce4kbd-private-2.so`{.filename}]{.term}   is a private [Xfce]{.application} library for sharing code between [Xfwm4]{.application} and [Xfce4 Settings]{.application}
  []{#libxfce4ui-1}[`libxfce4ui-1.so`{.filename}]{.term}                     contains widgets that are used by other [Xfce]{.application} applications
  -------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xfconf.md "Xfconf-4.20.0"){accesskey="p"}

    Xfconf-4.20.0

-   [Next](exo.md "Exo-4.20.0"){accesskey="n"}

    Exo-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](exo.md "Exo-4.20.0"){accesskey="p"}

    Exo-4.20.0

-   [Next](libwnck.md "libwnck-43.3"){accesskey="n"}

    libwnck-43.3

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#garcon}Garcon-4.20.0 {#garcon-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Garcon {#introduction-to-garcon .sect2}

The [Garcon]{.application} package contains a freedesktop.org compliant menu implementation based on [GLib]{.application} and [GIO]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/garcon/4.20/garcon-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/garcon/4.20/garcon-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: fe17e9cb15a62013e0086183a446e89e

-   Download size: 648 KB

-   Estimated disk space required: 8.6 MB

-   Estimated build time: 0.1 SBU
:::

### Garcon Dependencies

#### Required

[libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Garcon {#installation-of-garcon .sect2}

Install [Garcon]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libgarcon-1.so and libgarcon-gtk3-1.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/garcon-1, /usr/include/garcon-gtk3-1, and /usr/share/gtk-doc/html/garcon]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
  []{#libgarcon-1}[`libgarcon-1.so`{.filename}]{.term}   contains functions that provide a freedesktop.org compliant menu implementation based on [GLib]{.application} and [GIO]{.application}
  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](exo.md "Exo-4.20.0"){accesskey="p"}

    Exo-4.20.0

-   [Next](libwnck.md "libwnck-43.3"){accesskey="n"}

    libwnck-43.3

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

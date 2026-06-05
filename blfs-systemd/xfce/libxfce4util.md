::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce-core.md "Xfce Desktop"){accesskey="p"}

    Xfce Desktop

-   [Next](xfconf.md "Xfconf-4.20.0"){accesskey="n"}

    Xfconf-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxfce4util}libxfce4util-4.20.1 {#libxfce4util-4.20.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxfce4util {#introduction-to-libxfce4util .sect2}

The [libxfce4util]{.application} package is a basic utility library for the [Xfce]{.application} desktop environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/libxfce4util/4.20/libxfce4util-4.20.1.tar.bz2](https://archive.xfce.org/src/xfce/libxfce4util/4.20/libxfce4util-4.20.1.tar.bz2){.ulink}

-   Download MD5 sum: 8e30b7735333f74d80c379e15d9da145

-   Download size: 624 KB

-   Estimated disk space required: 6.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### libxfce4util Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libxfce4util {#installation-of-libxfce4util .sect2}

Install [libxfce4util]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
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
**Installed Program:** [xfce4-kiosk-query]{.segbody}
:::

::: seg
**Installed Library:** [libxfce4util.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xfce4 and /usr/share/gtk-doc/html/libxfce4util]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfce4-kiosk-query}[[**xfce4-kiosk-query**]{.command}]{.term}   Queries the given capabilities of \<module\> for the current user and reports whether the user has the capabilities or not. This tool is mainly meant for system administrators to test their Kiosk setup
  []{#libxfce4util-lib}[`libxfce4util.so`{.filename}]{.term}         contains basic utility functions for the [Xfce]{.application} desktop environment
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfce-core.md "Xfce Desktop"){accesskey="p"}

    Xfce Desktop

-   [Next](xfconf.md "Xfconf-4.20.0"){accesskey="n"}

    Xfconf-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

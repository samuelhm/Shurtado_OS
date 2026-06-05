::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){accesskey="p"}

    xfce4-dev-tools-4.20.0

-   [Next](xfce4-panel.md "xfce4-panel-4.20.7"){accesskey="n"}

    xfce4-panel-4.20.7

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxfce4windowing}libxfce4windowing-4.20.6 {#libxfce4windowing-4.20.6 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxfce4windowing {#introduction-to-libxfce4windowing .sect2}

The [libxfce4windowing]{.application} package contains a windowing concept abstraction library for X11 and Wayland.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/libxfce4windowing/4.20/libxfce4windowing-4.20.6.tar.bz2](https://archive.xfce.org/src/xfce/libxfce4windowing/4.20/libxfce4windowing-4.20.6.tar.bz2){.ulink}

-   Download MD5 sum: ce85b88e82157570fb65f5a8352ae813

-   Download size: 584 KB

-   Estimated disk space required: 16 MB

-   Estimated build time: 0.1 SBU
:::

### libxfce4windowing Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libdisplay-info-0.3.0](../general/libdisplay-info.md "libdisplay-info-0.3.0"){.xref}, [libwnck-43.3](libwnck.md "libwnck-43.3"){.xref} and [xfce4-dev-tools-4.20.0](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libxfce4windowing {#installation-of-libxfce4windowing .sect2}

Install [libxfce4windowing]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-x11      \
            --disable-debug   &&
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

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libxfce4windowingui-0 and libxfce4windowing-0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xfce4/libxfce4windowing, /usr/include/xfce4/libxfce4windowingui, /usr/share/gtk-doc/html/libxfce4windowing, and /usr/share/gtk-doc/html/libxfce4windowingui]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){accesskey="p"}

    xfce4-dev-tools-4.20.0

-   [Next](xfce4-panel.md "xfce4-panel-4.20.7"){accesskey="n"}

    xfce4-panel-4.20.7

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

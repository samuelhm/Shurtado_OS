::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-panel.md "xfce4-panel-4.20.7"){accesskey="p"}

    xfce4-panel-4.20.7

-   [Next](thunar-volman.md "thunar-volman-4.20.0"){accesskey="n"}

    thunar-volman-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#thunar}thunar-4.20.8 {#thunar-4.20.8 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to thunar {#introduction-to-thunar .sect2}

[Thunar]{.application} is the [Xfce]{.application} file manager, a [GTK+ 3]{.application} GUI to organise the files on your computer.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/thunar/4.20/thunar-4.20.8.tar.bz2](https://archive.xfce.org/src/xfce/thunar/4.20/thunar-4.20.8.tar.bz2){.ulink}

-   Download MD5 sum: 6c6b958d96de74b5f0369e8b1ff999c1

-   Download size: 4.4 MB

-   Estimated disk space required: 84 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Thunar Dependencies

#### Required

[Exo-4.20.0](exo.md "Exo-4.20.0"){.xref}

#### Required (Runtime)

[hicolor-icon-theme-0.18](../x/hicolor-icon-theme.md "hicolor-icon-theme-0.18"){.xref}

#### Recommended

[libgudev-238](../general/libgudev.md "libgudev-238"){.xref} and [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} (for documentation), [Gvfs-1.60.0](../gnome/gvfs.md "Gvfs-1.60.0"){.xref} (for remote browsing and automounting), [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref} and [tumbler-4.20.1](tumbler.md "tumbler-4.20.1"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of Thunar {#installation-of-thunar .sect2}

Install [Thunar]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/thunar-4.20.8 &&
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
**Installed Programs:** [Thunar (symlink to thunar), thunar, and thunar-settings]{.segbody}
:::

::: seg
**Installed Library:** [libthunarx-3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/Thunar, /usr/include/thunarx-3, /usr/lib/Thunar, /usr/lib/thunarx-3, /usr/share/Thunar, /usr/share/doc/thunar-4.20.8, and /usr/share/gtk-doc/html/thunarx]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  []{#thunar-prog}[[**thunar**]{.command}]{.term}                is the [Xfce]{.application} file manager
  []{#thunar-settings}[[**thunar-settings**]{.command}]{.term}   is a shell script that launches a dialog box to allow you to alter the behavior of [Thunar]{.application}
  []{#libthunarx-3}[`libthunarx-3.so`{.filename}]{.term}         contains the [Thunar]{.application} extension library which permits adding new features to the [Thunar]{.application} file manager
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfce4-panel.md "xfce4-panel-4.20.7"){accesskey="p"}

    xfce4-panel-4.20.7

-   [Next](thunar-volman.md "thunar-volman-4.20.0"){accesskey="n"}

    thunar-volman-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

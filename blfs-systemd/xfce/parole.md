::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce-apps.md "Xfce Applications"){accesskey="p"}

    Xfce Applications

-   [Next](xfce4-terminal.md "xfce4-terminal-1.2.0"){accesskey="n"}

    xfce4-terminal-1.2.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#parole}Parole-4.20.0 {#parole-4.20.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Parole {#introduction-to-parole .sect2}

[Parole]{.application} is a DVD/CD/music player for [Xfce]{.application} that uses [GStreamer]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although this version of parole works with most files, it is unable to play DVDs, reporting an error in the gstreamer backend.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/parole/4.20/parole-4.20.0.tar.xz](https://archive.xfce.org/src/apps/parole/4.20/parole-4.20.0.tar.xz){.ulink}

-   Download MD5 sum: 388dee33b1d06ee89f007b4cb08dedaf

-   Download size: 470 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU
:::

### Parole Dependencies

#### Required

[dbus-glib-0.114](../general/dbus-glib.md "dbus-glib-0.114"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [gst-plugins-good-1.28.3](../multimedia/gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref}, and [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Recommended

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref} and [taglib-2.3](../multimedia/taglib.md "Taglib-2.3"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Parole {#installation-of-parole .sect2}

Install [Parole]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.using lang="en"}
## Using Parole {#using-parole .sect2}

If you have installed Gstreamer Plugins Ugly with support for libdvdnav and libdvdread and would like to use Parole to play a DVD, click Media\> Open location and enter dvd:// into the box.

Similarly, to play a CD, click Media\> Open location and enter cdda:// into the box.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [parole]{.segbody}
:::

::: seg
**Installed Libraries:** [Two libraries under /usr/lib/parole-0/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/parole, /usr/lib/parole-0 and /usr/share/parole]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ------------------------------------------------------------------------------
  []{#parole-prog}[[**parole**]{.command}]{.term}   is a [GTK+ 3]{.application} media player that uses [GStreamer]{.application}
  ------------------------------------------------- ------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](xfce-apps.md "Xfce Applications"){accesskey="p"}

    Xfce Applications

-   [Next](xfce4-terminal.md "xfce4-terminal-1.2.0"){accesskey="n"}

    xfce4-terminal-1.2.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

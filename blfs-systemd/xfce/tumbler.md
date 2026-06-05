::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](thunar-volman.md "thunar-volman-4.20.0"){accesskey="p"}

    thunar-volman-4.20.0

-   [Next](xfce4-appfinder.md "xfce4-appfinder-4.20.0"){accesskey="n"}

    xfce4-appfinder-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tumbler}tumbler-4.20.1 {#tumbler-4.20.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to tumbler {#introduction-to-tumbler .sect2}

The [Tumbler]{.application} package contains a [D-Bus]{.application} thumbnailing service based on the thumbnail management [D-Bus]{.application} specification. This is useful for generating thumbnail images of files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/tumbler/4.20/tumbler-4.20.1.tar.bz2](https://archive.xfce.org/src/xfce/tumbler/4.20/tumbler-4.20.1.tar.bz2){.ulink}

-   Download MD5 sum: 7d315af732b1232d663b03149d7c82a4

-   Download size: 696 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
:::

### Tumbler Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libgsf-1.14.58](../general/libgsf.md "libgsf-1.14.58"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, [FFmpegThumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer){.ulink}, [libgepub](https://download.gnome.org/sources/libgepub/){.ulink}, and [libopenraw](https://libopenraw.freedesktop.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Tumbler {#installation-of-tumbler .sect2}

Install [Tumbler]{.application} by running the following commands:

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
**Installed Programs:** [tumblerd]{.segbody}
:::

::: seg
**Installed Library:** [libtumbler-1.so and several under /usr/lib/tumbler-1/plugins/]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/xdg/tumbler, /usr/include/tumbler-1, /usr/lib/tumbler-1 and /usr/share/gtk-doc/html/tumbler]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- --------------------------------------------------------------------------------------------
  []{#tumblerd}[[**tumblerd**]{.command}]{.term}           is a D-Bus service for applications such as Thunar and Ristretto to use thumbnail images
  []{#libtumbler-1}[`libtumbler-1.so`{.filename}]{.term}   contains functions that the [Tumbler]{.application} daemon uses to create thumbnail images
  -------------------------------------------------------- --------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](thunar-volman.md "thunar-volman-4.20.0"){accesskey="p"}

    thunar-volman-4.20.0

-   [Next](xfce4-appfinder.md "xfce4-appfinder-4.20.0"){accesskey="n"}

    xfce4-appfinder-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

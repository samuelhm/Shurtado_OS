::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgpg-error.md "libgpg-error-1.61"){accesskey="p"}

    libgpg-error-1.61

-   [Next](libgudev.md "libgudev-238"){accesskey="n"}

    libgudev-238

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgsf}libgsf-1.14.58 {#libgsf-1.14.58 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgsf {#introduction-to-libgsf .sect2}

The [libgsf]{.application} package contains a library used for providing an extensible input/output abstraction layer for structured file formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.58.tar.xz](https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.58.tar.xz){.ulink}

-   Download MD5 sum: 60a36d77615596178b857ed7b9bd6838

-   Download size: 704 KB

-   Estimated disk space required: 13 MB

-   Estimated build time: 0.1 SBU
:::

### libgsf Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Recommended

[gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref} (To build [**gsf-office-thumbnailer**]{.command})

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libgsf {#installation-of-libgsf .sect2}

Install [libgsf]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gsf, gsf-office-thumbnailer, and gsf-vba-dump]{.segbody}
:::

::: seg
**Installed Library:** [libgsf-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libgsf-1, /usr/share/gtk-doc/html/gsf and /usr/share/thumbnailers]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gsf}[[**gsf**]{.command}]{.term}                                         is a simple archive utility, somewhat similar to [tar(1)](https://man.archlinux.org/man/tar.1){.ulink}
  []{#gsf-office-thumbnailer}[[**gsf-office-thumbnailer**]{.command}]{.term}   is used internally by [GNOME]{.application} applications such as [Nautilus]{.application} to generate thumbnails of several types of office application files
  []{#gsf-vba-dump}[[**gsf-vba-dump**]{.command}]{.term}                       is used to extract Visual Basic for Applications macros from files
  []{#libgsf-1}[`libgsf-1.so`{.filename}]{.term}                               contains the [libgsf]{.application} API functions
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgpg-error.md "libgpg-error-1.61"){accesskey="p"}

    libgpg-error-1.61

-   [Next](libgudev.md "libgudev-238"){accesskey="n"}

    libgudev-238

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 34. [GNOME Applications]{.phrase}

-   [Prev](baobab.md "Baobab-50.0"){accesskey="p"}

    Baobab-50.0

-   [Next](evince.md "Evince-48.4"){accesskey="n"}

    Evince-48.4

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#brasero}Brasero-3.12.3 {#brasero-3.12.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Brasero {#introduction-to-brasero .sect2}

[Brasero]{.application} is an application used to burn CDs and DVDs on the [GNOME]{.application} Desktop. It is designed to be as simple as possible and has some unique features that enable users to create their discs easily and quickly.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/brasero/3.12/brasero-3.12.3.tar.xz](https://download.gnome.org/sources/brasero/3.12/brasero-3.12.3.tar.xz){.ulink}

-   Download MD5 sum: ae48248dd36f89282d573eb7a0a1391f

-   Download size: 3.0 MB

-   Estimated disk space required: 105 MB

-   Estimated build time: 1.0 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/brasero-3.12.3-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/brasero-3.12.3-upstream_fixes-1.patch){.ulink}
:::

### Brasero Dependencies

#### Required

[gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, and [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}

#### Recommended

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [libburn-1.5.8](../multimedia/libburn.md "libburn-1.5.8"){.xref}, [libisoburn-1.5.8.pl02](../multimedia/libisoburn.md "libisoburn-1.5.8.pl02"){.xref}, and [libisofs-1.5.8.pl02](../multimedia/libisofs.md "libisofs-1.5.8.pl02"){.xref}, [Nautilus-50.2.2](nautilus.md "Nautilus-50.2.2"){.xref}, [tinysparql-3.11.1](tinysparql.md "tinysparql-3.11.1"){.xref}, and [totem-pl-parser-3.26.7](totem-pl-parser.md "totem-pl-parser-3.26.7"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}

#### Recommended (Runtime)

[dvd+rw-tools-7.1](../multimedia/dvd-rw-tools.md "dvd+rw-tools-7.1"){.xref} and [Gvfs-1.60.0](gvfs.md "Gvfs-1.60.0"){.xref}

#### Optional (Runtime)

[Cdrdao-1.2.6](../multimedia/cdrdao.md "Cdrdao-1.2.6"){.xref}, [libdvdcss-1.5.0](../multimedia/libdvdcss.md "libdvdcss-1.5.0"){.xref}, [Cdrtools-3.02a09](../multimedia/cdrtools.md "Cdrtools-3.02a09"){.xref}, and [VCDImager](https://ftpmirror.gnu.org/gnu/vcdimager/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of Brasero {#installation-of-brasero .sect2}

First, fix a build issue that occurs with GCC-14:

``` userinput
patch -Np1 -i ../brasero-3.12.3-upstream_fixes-1.patch
```

Install [Brasero]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                \
            --enable-compile-warnings=no \
            --enable-cxx-warnings=no     \
            --disable-nautilus           &&
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

*`--enable-*-warnings=no`*: These switches fix build problems under GCC-6.x compilers.

*`--disable-nautilus`*: This switch disables building the Nautilus extension since it is incompatible with the gtk4 version of Nautilus.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [brasero]{.segbody}
:::

::: seg
**Installed Libraries:** [libbrasero-{burn,media,utils}3.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/brasero3, /usr/lib/brasero3, /usr/share/brasero, /usr/share/gtk-doc/html/libbrasero-{burn,media}, and /usr/share/help/\*/brasero]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------
  []{#brasero-prog}[[**brasero**]{.command}]{.term}                  is a simple and easy to use CD/DVD burning application for the [GNOME]{.application} Desktop
  []{#libbrasero-burn3}[`libbrasero-burn3.so`{.filename}]{.term}     contains the Burning API functions
  []{#libbrasero-media3}[`libbrasero-media3.so`{.filename}]{.term}   contains the Media API functions
  []{#libbrasero-utils3}[`libbrasero-utils3.so`{.filename}]{.term}   contains the [Brasero]{.application} API functions
  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](baobab.md "Baobab-50.0"){accesskey="p"}

    Baobab-50.0

-   [Next](evince.md "Evince-48.4"){accesskey="n"}

    Evince-48.4

-   [Up](applications.md "Chapter 34. GNOME Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

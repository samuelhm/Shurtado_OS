::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgee.md "libgee-0.20.8"){accesskey="p"}

    libgee-0.20.8

-   [Next](gweather-locations.md "gweather-locations-2026.2"){accesskey="n"}

    gweather-locations-2026.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgtop}libgtop-2.41.3 {#libgtop-2.41.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgtop {#introduction-to-libgtop .sect2}

The [libgtop]{.application} package contains a library for accessing system performance data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgtop/2.41/libgtop-2.41.3.tar.xz](https://download.gnome.org/sources/libgtop/2.41/libgtop-2.41.3.tar.xz){.ulink}

-   Download MD5 sum: 465db9f4f695c298d9c48dcf7f32a9c0

-   Download size: 740 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU
:::

### libgtop Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended) and [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libgtop {#installation-of-libgtop .sect2}

Install [libgtop]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-gtk-doc`{.option}: Use this parameter if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [libgtop_daemon2 and libgtop_server2]{.segbody}
:::

::: seg
**Installed Library:** [libgtop-2.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libgtop-2.0 and /usr/share/gtk-doc/html/libgtop]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------
  []{#libgtop-2}[`libgtop-2.0.so`{.filename}]{.term}   contains functions that allow access to system performance data
  ---------------------------------------------------- -----------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libgee.md "libgee-0.20.8"){accesskey="p"}

    libgee-0.20.8

-   [Next](gweather-locations.md "gweather-locations-2026.2"){accesskey="n"}

    gweather-locations-2026.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](clucene.md "CLucene-2.3.3.4"){accesskey="p"}

    CLucene-2.3.3.4

-   [Next](double-conversion.md "Double-conversion-3.4.0"){accesskey="n"}

    Double-conversion-3.4.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dbus-glib}dbus-glib-0.114 {#dbus-glib-0.114 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to D-Bus GLib {#introduction-to-d-bus-glib .sect2}

The [D-Bus GLib]{.application} package contains [GLib]{.application} interfaces to the [D-Bus]{.application} API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.114.tar.gz](https://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.114.tar.gz){.ulink}

-   Download MD5 sum: 188792077e880a8c0359288d7819dab3

-   Download size: 724 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### D-Bus GLib Dependencies

#### Required

[dbus-1.16.2](dbus.md "dbus-1.16.2"){.xref} and [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref}

#### Optional

[GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of D-Bus GLib {#installation-of-d-bus-glib .sect2}

Install [D-Bus GLib]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

To test the results, issue: [**make check**]{.command}. Note that more comprehensive tests can be run by following the same method used in [D-Bus]{.application} instructions, which requires building the package twice.

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
**Installed Program:** [dbus-binding-tool]{.segbody}
:::

::: seg
**Installed Library:** [libdbus-glib-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/gtk-doc/html/dbus-glib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------- ------------------------------------------------------------------------------------
  []{#glib-dbus-binding-tool}[[**dbus-binding-tool**]{.command}]{.term}   is a tool used to interface with the D-Bus API
  []{#libdbus-glib-1}[`libdbus-glib-1.so`{.filename}]{.term}              contains [GLib]{.application} interface functions to the [D-Bus]{.application} API
  ----------------------------------------------------------------------- ------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](clucene.md "CLucene-2.3.3.4"){accesskey="p"}

    CLucene-2.3.3.4

-   [Next](double-conversion.md "Double-conversion-3.4.0"){accesskey="n"}

    Double-conversion-3.4.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

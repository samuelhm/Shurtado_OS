::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libnotify.md "libnotify-0.8.8"){accesskey="p"}

    libnotify-0.8.8

-   [Next](pango.md "Pango-1.57.1"){accesskey="n"}

    Pango-1.57.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxklavier}libxklavier-5.4 {#libxklavier-5.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxklavier {#introduction-to-libxklavier .sect2}

The [libxklavier]{.application} package contains a utility library for [X]{.application} keyboard.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://people.freedesktop.org/\~svu/libxklavier-5.4.tar.bz2](https://people.freedesktop.org/~svu/libxklavier-5.4.tar.bz2){.ulink}

-   Download MD5 sum: 13af74dcb6011ecedf1e3ed122bd31fa

-   Download size: 384 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### libxklavier Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended), [ISO Codes-4.20.1](../general/iso-codes.md "ISO Codes-4.20.1"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} and [Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libxklavier {#installation-of-libxklavier .sect2}

Install [libxklavier]{.application} by running the following commands:

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

`--enable-gtk-doc`{.option}: This parameter is normally used if [GTK-Doc]{.application} is installed and you wish to rebuild and install the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libxklavier.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libxklavier and /usr/share/gtk-doc/html/libxklavier]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------
  []{#libxklavier-lib}[`libxklavier.so`{.filename}]{.term}   contains XKB utility functions
  ---------------------------------------------------------- --------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libnotify.md "libnotify-0.8.8"){accesskey="p"}

    libnotify-0.8.8

-   [Next](pango.md "Pango-1.57.1"){accesskey="n"}

    Pango-1.57.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

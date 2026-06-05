::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](qtxdg-tools.md "qtxdg-tools-4.4.0"){accesskey="p"}

    qtxdg-tools-4.4.0

-   [Next](menu-cache.md "menu-cache-1.1.1"){accesskey="n"}

    menu-cache-1.1.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libfm-extra}libfm-extra-1.3.2 {#libfm-extra-1.3.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libfm-extra {#introduction-to-libfm-extra .sect2}

The [libfm-extra]{.application} package contains a library and other files required by the [**menu-cache-gen**]{.command} program in /usr/bin/libexec installed by [menu-cache-1.1.1](menu-cache.md "menu-cache-1.1.1"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/pcmanfm/libfm-1.3.2.tar.xz](https://downloads.sourceforge.net/pcmanfm/libfm-1.3.2.tar.xz){.ulink}

-   Download MD5 sum: c87a0ff41ae77825079b2f785ec0741e

-   Download size: 924 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
:::

### libfm-extra Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} and [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libfm-extra {#installation-of-libfm-extra .sect2}

Install [libfm-extra]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-extra-only \
            --with-gtk=no     \
            --disable-static  &&
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

*`--with-extra-only`*: This switch disables all components except for the libfm-extra library.

*`--with-gtk=no`*: This switch disables support for [GTK+]{.application} because it is not necessary for this package.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libfm-extra.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libfm (symlink) and /usr/include/libfm-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------
  []{#libfm-extra-lib}[`libfm-extra.so`{.filename}]{.term}   contains the [libfm-extra]{.application} API functions
  ---------------------------------------------------------- --------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](qtxdg-tools.md "qtxdg-tools-4.4.0"){accesskey="p"}

    qtxdg-tools-4.4.0

-   [Next](menu-cache.md "menu-cache-1.1.1"){accesskey="n"}

    menu-cache-1.1.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

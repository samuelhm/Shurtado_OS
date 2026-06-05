::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libfm-extra.md "libfm-extra-1.3.2"){accesskey="p"}

    libfm-extra-1.3.2

-   [Next](libfm-qt.md "libfm-qt-2.4.0"){accesskey="n"}

    libfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#menu-cache}menu-cache-1.1.1 {#menu-cache-1.1.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Menu Cache {#introduction-to-menu-cache .sect2}

The [Menu Cache]{.application} package contains a library for creating and utilizing caches to speed up the manipulation for freedesktop.org defined application menus.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxde/menu-cache/archive/1.1.1/menu-cache-1.1.1.tar.gz](https://github.com/lxde/menu-cache/archive/1.1.1/menu-cache-1.1.1.tar.gz){.ulink}

-   Download MD5 sum: a15e0de38188622a6b9e63433a6d616f

-   Download size: 68 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### Menu Cache Dependencies

#### Required

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [libfm-extra-1.3.2](libfm-extra.md "libfm-extra-1.3.2"){.xref}

#### Optional

[xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Menu Cache {#installation-of-menu-cache .sect2}

``` userinput
sh autogen.sh                              &&
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

`--enable-gtk-doc`{.option}: Use this option if [GTK-Doc]{.application} is installed and you wish to build and install the API documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libmenu-cache.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,libexec,share/gtk-doc/html}/menu-cache]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------
  []{#libmenu-cache}[`libmenu-cache.so`{.filename}]{.term}   contains the [menu-cache]{.application} API functions
  ---------------------------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libfm-extra.md "libfm-extra-1.3.2"){accesskey="p"}

    libfm-extra-1.3.2

-   [Next](libfm-qt.md "libfm-qt-2.4.0"){accesskey="n"}

    libfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

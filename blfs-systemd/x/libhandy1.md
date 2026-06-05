::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libei.md "libei-1.6.0"){accesskey="p"}

    libei-1.6.0

-   [Next](libdrm.md "Libdrm-2.4.134"){accesskey="n"}

    Libdrm-2.4.134

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libhandy1}libhandy-1.8.3 {#libhandy-1.8.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libhandy {#introduction-to-libhandy .sect2}

The [libhandy]{.application} package provides additional GTK UI widgets for use in developing user interfaces.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libhandy/1.8/libhandy-1.8.3.tar.xz](https://download.gnome.org/sources/libhandy/1.8/libhandy-1.8.3.tar.xz){.ulink}

-   Download MD5 sum: af586a91ff6d4093a6e7e283dfab5f7f

-   Download size: 1.8 MB

-   Estimated disk space required: 24 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libhandy Dependencies

#### Required

[GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [Glade](https://glade.gnome.org/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libhandy {#installation-of-libhandy .sect2}

Install [libhandy]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run from a graphical session.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D gtk_doc=true`{.option}: Use this option if you have [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} installed and wish to install the documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [handy-1-demo]{.segbody}
:::

::: seg
**Installed Libraries:** [libhandy-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libhandy-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------
  []{#handy-1-demo}[[**handy-1-demo**]{.command}]{.term}   provides an example of how to use the [libhandy]{.application} library
  []{#libhandy-1}[`libhandy-1.so`{.filename}]{.term}       provides additional GTK widgets for use in creating user interfaces
  -------------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libei.md "libei-1.6.0"){accesskey="p"}

    libei-1.6.0

-   [Next](libdrm.md "Libdrm-2.4.134"){accesskey="n"}

    Libdrm-2.4.134

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

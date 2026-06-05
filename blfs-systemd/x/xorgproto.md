::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](util-macros.md "util-macros-1.20.2"){accesskey="p"}

    util-macros-1.20.2

-   [Next](libXau.md "libXau-1.0.12"){accesskey="n"}

    libXau-1.0.12

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorgproto}xorgproto-2025.1 {#xorgproto-2025.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to xorgproto {#introduction-to-xorgproto .sect2}

The [xorgproto]{.application} package provides the header files required to build the X Window system, and to allow other applications to build against the installed X Window system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2025.1.tar.xz](https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2025.1.tar.xz){.ulink}

-   Download MD5 sum: 15534fa6fb13a6a70afe7561c1424f3c

-   Download size: 752 KB

-   Estimated disk space required: 8.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### xorgproto Dependencies

#### Required

[util-macros-1.20.2](util-macros.md "util-macros-1.20.2"){.xref}

#### Optional

[fop-2.11](../pst/fop.md "fop-2.11"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} and [asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} (to build additional documentation)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There is a reciprocal dependency with [fop-2.11](../pst/fop.md "fop-2.11"){.xref}. If you wish to build the documentation, you'll need to re-install the Protocol Headers after the installation is complete and [fop-2.11](../pst/fop.md "fop-2.11"){.xref} has been installed.
:::

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/Xorg7ProtocolHeaders](https://wiki.linuxfromscratch.org/blfs/wiki/Xorg7ProtocolHeaders){.ulink}
::::::

::: {.installation lang="en"}
## Installation of xorgproto {#installation-of-xorgproto .sect2}

Install [xorgproto]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
mv -v $XORG_PREFIX/share/doc/xorgproto{,-2025.1}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D legacy=true`{.option}: Installs legacy headers needed by old programs (such as [LessTif](https://lesstif.sourceforge.net/){.ulink}).
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [`$XORG_PREFIX`{.envar}/include/GL, `$XORG_PREFIX`{.envar}/include/X11, and `$XORG_PREFIX`{.envar}/share/doc/xorgproto-2025.1]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](util-macros.md "util-macros-1.20.2"){accesskey="p"}

    util-macros-1.20.2

-   [Next](libXau.md "libXau-1.0.12"){accesskey="n"}

    libXau-1.0.12

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

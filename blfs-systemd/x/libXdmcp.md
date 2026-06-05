::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libXau.md "libXau-1.0.12"){accesskey="p"}

    libXau-1.0.12

-   [Next](xcb-proto.md "xcb-proto-1.17.0"){accesskey="n"}

    xcb-proto-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libXdmcp}libXdmcp-1.1.5 {#libxdmcp-1.1.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libXdmcp {#introduction-to-libxdmcp .sect2}

The [libXdmcp]{.application} package contains a library implementing the X Display Manager Control Protocol. This is useful for allowing clients to interact with the X Display Manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz](https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz){.ulink}

-   Download MD5 sum: ce0af51de211e4c99a111e64ae1df290

-   Download size: 292 KB

-   Estimated disk space required: 3.0 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
:::

### libXdmcp Dependencies

#### Required

[xorgproto-2025.1](xorgproto.md "xorgproto-2025.1"){.xref}

#### Optional

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, [fop-2.11](../pst/fop.md "fop-2.11"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, and [Xorg-SGML-doctools](https://gitlab.freedesktop.org/xorg/doc/xorg-sgml-doctools){.ulink} (for documentation)
:::::

::: {.installation lang="en"}
## Installation of libXdmcp {#installation-of-libxdmcp .sect2}

Install [libXdmcp]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG --docdir='${datadir}'/doc/libXdmcp-1.1.5 &&
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libXdmcp.so]{.segbody}
:::

::: seg
**Installed Directory:** [`$XORG_PREFIX`{.envar}/share/doc/libXdmcp-1.1.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ---------------------------------------------------
  []{#libXdmcp-x7}[`libXdmcp.so`{.filename}]{.term}   is the X Display Manager Control Protocol library
  --------------------------------------------------- ---------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libXau.md "libXau-1.0.12"){accesskey="p"}

    libXau-1.0.12

-   [Next](xcb-proto.md "xcb-proto-1.17.0"){accesskey="n"}

    xcb-proto-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

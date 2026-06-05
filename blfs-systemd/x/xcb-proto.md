::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libXdmcp.md "libXdmcp-1.1.5"){accesskey="p"}

    libXdmcp-1.1.5

-   [Next](libxcb.md "libxcb-1.17.0"){accesskey="n"}

    libxcb-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xcb-proto}xcb-proto-1.17.0 {#xcb-proto-1.17.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xcb-proto {#introduction-to-xcb-proto .sect2}

The [xcb-proto]{.application} package provides the XML-XCB protocol descriptions that [libxcb]{.application} uses to generate the majority of its code and API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz](https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz){.ulink}

-   Download MD5 sum: c415553d2ee1a8cea43c3234a079b53f

-   Download size: 152 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
:::

### xcb-proto Dependencies

#### Recommended

[Xorg build environment](xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref} (needed for the instructions below)

#### Optional

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref} (required to run the tests)
:::::

::: {.installation lang="en"}
## Installation of xcb-proto {#installation-of-xcb-proto .sect2}

Install [xcb-proto]{.application} by running the following commands:

``` userinput
PYTHON=python3 ./configure $XORG_CONFIG
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you are upgrading from version 1.15.1 or lower, the old pkgconfig file needs to be removed. Issue, as the `root`{.systemitem} user:

``` userinput
rm -f $XORG_PREFIX/lib/pkgconfig/xcb-proto.pc
```
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
**Installed Directory:** [`$XORG_PREFIX`{.envar}/share/xcb and `$XORG_PREFIX`{.envar}/lib/python3.14/site-packages/xcbgen]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libXdmcp.md "libXdmcp-1.1.5"){accesskey="p"}

    libXdmcp-1.1.5

-   [Next](libxcb.md "libxcb-1.17.0"){accesskey="n"}

    libxcb-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

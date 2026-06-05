::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-proto.md "xcb-proto-1.17.0"){accesskey="p"}

    xcb-proto-1.17.0

-   [Next](x7lib.md "Xorg Libraries"){accesskey="n"}

    Xorg Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxcb}libxcb-1.17.0 {#libxcb-1.17.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libxcb {#introduction-to-libxcb .sect2}

The [libxcb]{.application} package provides an interface to the X Window System protocol, which replaces the current Xlib interface. Xlib can also use XCB as a transport layer, allowing software to make requests and receive responses with both.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz](https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz){.ulink}

-   Download MD5 sum: 96565523e9f9b701fcb35d31f1d4086e

-   Download size: 448 KB

-   Estimated disk space required: 30 MB (with tests, add 62 MB for doxygen docs)

-   Estimated build time: 0.2 SBU (with tests, add 1.4 SBU for doxygen docs)
:::

### libxcb Dependencies

#### Required

[libXau-1.0.12](libXau.md "libXau-1.0.12"){.xref} and [xcb-proto-1.17.0](xcb-proto.md "xcb-proto-1.17.0"){.xref}

#### Recommended

[libXdmcp-1.1.5](libXdmcp.md "libXdmcp-1.1.5"){.xref} (required for [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref})

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to generate API documentation) and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libxcb {#installation-of-libxcb .sect2}

Install [libxcb]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG      \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.17.0 &&
LC_ALL=en_US.UTF-8 make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If the package was built as a non-`root`{.systemitem} user, the installed documentation is now owned by this user. As the `root`{.systemitem} user, fix the ownership:

``` root
chown -Rv root:root $XORG_PREFIX/share/doc/libxcb-1.17.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`LC_ALL=en_US.UTF-8`{.envar}: Some Python 3 script in the building system of this package may fail with certain system locale settings. This environment variable forces a locale setting known to work.

*`--without-doxygen`*: Do not use doxygen to generate API documentation (default: auto). Without it, if [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} is installed, the API documentation will be generated and installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libxcb.so, libxcb-composite.so, libxcb-damage.so, libxcb-dbe.so, libxcb-dpms.so, libxcb-dri2.so, libxcb-dri3.so, libxcb-glx.so, libxcb-present.so, libxcb-randr.so, libxcb-record.so, libxcb-render.so, libxcb-res.so, libxcb-screensaver.so, libxcb-shape.so, libxcb-shm.so, libxcb-sync.so, libxcb-xf86dri.so, libxcb-xfixes.so, libxcb-xinerama.so, libxcb-xinput.so, libxcb-xkb.so, libxcb-xtest.so, libxcb-xvmc.so, and libxcb-xv.so]{.segbody}
:::

::: seg
**Installed Directories:** [`$XORG_PREFIX`{.envar}/include/xcb and `$XORG_PREFIX`{.envar}/share/doc/libxcb-1.17.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------
  []{#libxcb-lib}[`libxcb.so`{.filename}]{.term}   is an interface to the X Window System protocol
  ------------------------------------------------ -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xcb-proto.md "xcb-proto-1.17.0"){accesskey="p"}

    xcb-proto-1.17.0

-   [Next](x7lib.md "Xorg Libraries"){accesskey="n"}

    Xorg Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

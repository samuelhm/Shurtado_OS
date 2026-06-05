::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](which.md "Which-2.25 and Alternatives"){accesskey="p"}

    Which-2.25 and Alternatives

-   [Next](zip.md "Zip-3.0"){accesskey="n"}

    Zip-3.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xdotool}xdotool-4.20260303.1 {#xdotool-4.20260303.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xdotool {#introduction-to-xdotool .sect2}

The [xdotool]{.application} package provides the capabilities to simulate keyboard input and mouse activity, move and resize windows, etc. It does this using X11’s XTEST extension and other Xlib functions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/jordansissel/xdotool/archive/v4.20260303.1/xdotool-4.20260303.1.tar.gz](https://github.com/jordansissel/xdotool/archive/v4.20260303.1/xdotool-4.20260303.1.tar.gz){.ulink}

-   Download MD5 sum: fc6864ebb381f8b50c37e2d46dbd37b1

-   Download size: 116 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU (add 0.5 SBU for tests)
:::

### xdotool Dependencies

#### Required

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Optional (required for tests)

[gnome-session-50.1](../gnome/gnome-session.md "gnome-session-50.1"){.xref}, [openbox-3.6.1](../x/openbox.md "openbox-3.6.1"){.xref}, [Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}, [Xorg Applications](../x/x7app.md "Xorg Applications"){.xref}, and [Xorg-Server-21.1.23](../x/xorg-server.md "Xorg-Server-21.1.23"){.xref} (for the [**Xvfb**]{.command} program),
:::::

::: {.installation lang="en"}
## Installation of xdotool {#installation-of-xdotool .sect2}

Install [xdotool]{.application} by running the following commands:

``` userinput
make WITHOUT_RPATH_FIX=1
```

To run the tests, do:

``` userinput
cd t
make all-headless
cd ..
```

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr INSTALLMAN=/usr/share/man install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xdotool]{.segbody}
:::

::: seg
**Installed Libraries:** [libxdo.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ---------------------------------------
  []{#xdotool-prog}[[**xdotool**]{.command}]{.term}   is a command-line X11 automation tool
  []{#libxdo}[`libxdo.so`{.filename}]{.term}          contains X11 automation functions
  --------------------------------------------------- ---------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](which.md "Which-2.25 and Alternatives"){accesskey="p"}

    Which-2.25 and Alternatives

-   [Next](zip.md "Zip-3.0"){accesskey="n"}

    Zip-3.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

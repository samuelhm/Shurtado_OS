::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](opentimelineio.md "OpenTimelineIO-0.18.1"){accesskey="p"}

    OpenTimelineIO-0.18.1

-   [Next](protobuf.md "Protobuf-35.0"){accesskey="n"}

    Protobuf-35.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#popt}Popt-1.19 {#popt-1.19 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Popt {#introduction-to-popt .sect2}

The [popt]{.application} package contains the [popt]{.application} libraries which are used by some programs to parse command-line options.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.osuosl.org/pub/rpm/popt/releases/popt-1.x/popt-1.19.tar.gz](https://ftp.osuosl.org/pub/rpm/popt/releases/popt-1.x/popt-1.19.tar.gz){.ulink}

-   Download MD5 sum: eaa2135fddb6eb03f2c87ee1823e5a78

-   Download size: 584 KB

-   Estimated disk space required: 6.9 MB (includes installing documentation and tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### popt Dependencies

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for generating documentation)
:::::

::: {.installation lang="en"}
## Installation of Popt {#installation-of-popt .sect2}

Install [popt]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you have [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} installed and wish to build the API documentation, issue:

``` userinput
sed -i 's@\./@src/@' Doxyfile &&
doxygen
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the API documentation, install it using the following commands issued by the `root`{.systemitem} user:

``` root
install -v -m755 -d /usr/share/doc/popt-1.19 &&
install -v -m644 doxygen/html/* /usr/share/doc/popt-1.19
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

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
**Installed Library:** [libpopt.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/popt-1.19]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ---------------------------------------
  []{#libpopt}[`libpopt.so`{.filename}]{.term}   is used to parse command-line options
  ---------------------------------------------- ---------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](opentimelineio.md "OpenTimelineIO-0.18.1"){accesskey="p"}

    OpenTimelineIO-0.18.1

-   [Next](protobuf.md "Protobuf-35.0"){accesskey="n"}

    Protobuf-35.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

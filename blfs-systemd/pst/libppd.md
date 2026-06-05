::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](libcupsfilters.md "libcupsfilters-2.1.1"){accesskey="p"}

    libcupsfilters-2.1.1

-   [Next](scanning.md "Scanning"){accesskey="n"}

    Scanning

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libppd}libppd-2.1.1 {#libppd-2.1.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libppd {#introduction-to-libppd .sect2}

The [libppd]{.application} library contains functions for handling legacy printers using PPD description files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/OpenPrinting/libppd/releases/download/2.1.1/libppd-2.1.1.tar.xz](https://github.com/OpenPrinting/libppd/releases/download/2.1.1/libppd-2.1.1.tar.xz){.ulink}

-   Download MD5 sum: 65accc86f9956a1160937b14e0f516a6

-   Download size: 576 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests)
:::

### libppd Dependencies

#### Required

[libcupsfilters-2.1.1](libcupsfilters.md "libcupsfilters-2.1.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libppd {#installation-of-libppd .sect2}

Install [libppd]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                \
            --disable-static             \
            --with-cups-rundir=/run/cups \
            --enable-ppdc-utils          \
            --docdir=/usr/share/doc/libppd-2.1.1 &&
make
```

To test the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-cups-rundir=/run/cups`*: Defines the directory containing transient printing data. The default `/var/run/cups`{.filename} is obsolete.

*`--enable-ppdc-utils`*: Allows building utilities to manipulate [*.ppd*]{.emphasis} files.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ppdc, ppdhtml, ppdi, ppdmerge, and ppdpo]{.segbody}
:::

::: seg
**Installed Libraries:** [libppd.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ppd, /usr/share/ppdc, and /usr/share/doc/libppd-2.1.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  []{#libppd-ppdc}[[**ppdc**]{.command}]{.term}           compiles PPDC source files into one or more PPD files
  []{#libppd-ppdhtml}[[**ppdhtml**]{.command}]{.term}     reads a driver information file and produces a HTML summary page that lists all of the drivers in a file and the supported options
  []{#libppd-ppdi}[[**ppdi**]{.command}]{.term}           imports one or more PPD files into a PPD compiler source file
  []{#libppd-ppdmerge}[[**ppdmerge**]{.command}]{.term}   merges two or more PPD files into a single, multi-language PPD file
  []{#libppd-ppdpo}[[**ppdpo**]{.command}]{.term}         extracts UI strings from PPDC source files and updates either a GNU gettext or Mac OS X strings format message catalog source file for translation
  []{#libppd-lib}[`libppd.so`{.filename}]{.term}          contains API functions for manipulating [*.ppd*]{.emphasis} files
  ------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libcupsfilters.md "libcupsfilters-2.1.1"){accesskey="p"}

    libcupsfilters-2.1.1

-   [Next](scanning.md "Scanning"){accesskey="n"}

    Scanning

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

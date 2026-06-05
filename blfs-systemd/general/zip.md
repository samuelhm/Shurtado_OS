::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](xdotool.md "xdotool-4.20260303.1"){accesskey="p"}

    xdotool-4.20260303.1

-   [Next](hdparm.md "Hdparm-9.65"){accesskey="n"}

    Hdparm-9.65

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#zip}Zip-3.0 {#zip-3.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Zip {#introduction-to-zip .sect2}

The [Zip]{.application} package contains [Zip]{.application} utilities. These are useful for compressing files into `ZIP`{.filename} archives.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/infozip/zip30.tar.gz](https://downloads.sourceforge.net/infozip/zip30.tar.gz){.ulink}

-   Download MD5 sum: 7b74551e63f8ee6aab6fbc86676c0d37

-   Download size: 1.1 MB

-   Estimated disk space required: 6.4 MB

-   Estimated build time: 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Zip {#installation-of-zip .sect2}

Install [Zip]{.application} by running the following commands:

``` userinput
make -f unix/Makefile generic CC="gcc -std=gnu89"
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`CC="gcc -std=gnu89"`*: This parameter overrides the `CC`{.varname} variable that is set to [**cc**]{.command} in the `unix/Makefile`{.filename} file. On LFS [**cc**]{.command} is a symlink to [**gcc**]{.command}, and it uses `-std=gnu17`{.option} (ISO 9899:2017 with GNU extensions) as the default but Zip is a [“[legacy]{.quote}”]{.quote} package where some grammar constructs are invalid in ISO 9899:1999 and newer standards.

*`prefix=/usr`*: This parameter overrides the `prefix`{.varname} variable that is set to `/usr/local`{.filename} in the `unix/Makefile`{.filename} file.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [zip, zipcloak, zipnote, and zipsplit]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------
  []{#zip-prog}[[**zip**]{.command}]{.term}        compresses files into a `ZIP`{.filename} archive
  []{#zipcloak}[[**zipcloak**]{.command}]{.term}   is a utility to encrypt and decrypt a `ZIP`{.filename} archive
  []{#zipnote}[[**zipnote**]{.command}]{.term}     reads or writes comments stored in a `ZIP`{.filename} file
  []{#zipsplit}[[**zipsplit**]{.command}]{.term}   is a utility to split `ZIP`{.filename} files into smaller files
  ------------------------------------------------ -----------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xdotool.md "xdotool-4.20260303.1"){accesskey="p"}

    xdotool-4.20260303.1

-   [Next](hdparm.md "Hdparm-9.65"){accesskey="n"}

    Hdparm-9.65

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](zip.md "Zip-3.0"){accesskey="p"}

    Zip-3.0

-   [Next](lm-sensors.md "lm-sensors-3-6-2"){accesskey="n"}

    lm-sensors-3-6-2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#hdparm}Hdparm-9.65 {#hdparm-9.65 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Hdparm {#introduction-to-hdparm .sect2}

The [Hdparm]{.application} package contains a utility that is useful for obtaining information about, and controlling ATA/IDE controllers and hard drives. It allows to increase performance and sometimes to increase stability.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

As well as being useful, incorrect usage of [Hdparm]{.application} can destroy your information and in rare cases, drives. Use with caution and make sure you know what you are doing. If in doubt, it is recommended that you leave the default kernel parameters alone.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/hdparm/hdparm-9.65.tar.gz](https://downloads.sourceforge.net/hdparm/hdparm-9.65.tar.gz){.ulink}

-   Download MD5 sum: 6d6d039d61ec995b1ec72ddce0b1853b

-   Download size: 140 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
:::
::::::

::: {.installation lang="en"}
## Installation of Hdparm {#installation-of-hdparm .sect2}

Build [Hdparm]{.application} by running the following command:

``` userinput
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make binprefix=/usr install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [hdparm]{.segbody}
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

  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
  []{#hdparm-prog}[[**hdparm**]{.command}]{.term}   provides a command-line interface to various hard disk ioctls supported by the stock Linux ATA/IDE device driver subsystem
  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](zip.md "Zip-3.0"){accesskey="p"}

    Zip-3.0

-   [Next](lm-sensors.md "lm-sensors-3-6-2"){accesskey="n"}

    lm-sensors-3-6-2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

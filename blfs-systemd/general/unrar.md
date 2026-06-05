::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](udisks2.md "UDisks-2.11.1"){accesskey="p"}

    UDisks-2.11.1

-   [Next](upower.md "UPower-1.91.2"){accesskey="n"}

    UPower-1.91.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#unrar}UnRar-7.2.4 {#unrar-7.2.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to UnRar {#introduction-to-unrar .sect2}

The [UnRar]{.application} package contains a `RAR`{.filename} extraction utility used for extracting files from `RAR`{.filename} archives. `RAR`{.filename} archives are usually created with [WinRAR]{.application}, primarily in a Windows environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.rarlab.com/rar/unrarsrc-7.2.4.tar.gz](https://www.rarlab.com/rar/unrarsrc-7.2.4.tar.gz){.ulink}

-   Download MD5 sum: 4c2c8cae2a8f1dabd8bf150848253248

-   Download size: 264 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: 0.3 SBU
:::
:::::

:::: {.installation lang="en"}
## Installation of UnRar {#installation-of-unrar .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package extracts the tarball to the unversioned directory `unrar`{.filename} and not the expected directory `unrar-7.2.4`{.filename}.
:::

Install [UnRar]{.application} by running the following commands:

``` userinput
make -f makefile
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -v -m755 unrar /usr/bin
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [unrar]{.segbody}
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

  ----------------------------------------------- -----------------------------------------
  []{#unrar-prog}[[**unrar**]{.command}]{.term}   uncompresses a `RAR`{.filename} archive
  ----------------------------------------------- -----------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](udisks2.md "UDisks-2.11.1"){accesskey="p"}

    UDisks-2.11.1

-   [Next](upower.md "UPower-1.91.2"){accesskey="n"}

    UPower-1.91.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

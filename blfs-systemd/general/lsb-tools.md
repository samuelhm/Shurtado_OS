::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](hwdata.md "hwdata-0.408"){accesskey="p"}

    hwdata-0.408

-   [Next](logrotate.md "Logrotate-3.22.0"){accesskey="n"}

    Logrotate-3.22.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lsb-tools}LSB-Tools-0.12 {#lsb-tools-0.12 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LSB-Tools {#introduction-to-lsb-tools .sect2}

The [LSB-Tools]{.application} package includes tools for Linux Standards Base (LSB) conformance.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/LSB-Tools/releases/download/v0.12/LSB-Tools-0.12.tar.gz](https://github.com/lfs-book/LSB-Tools/releases/download/v0.12/LSB-Tools-0.12.tar.gz){.ulink}

-   Download MD5 sum: 1e6ef8cdfddb55035a6c36757e6313f9

-   Download size: 20 KB

-   Estimated disk space required: 412 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of LSB-Tools {#installation-of-lsb-tools .sect2}

Install [LSB-Tools]{.application} by running the following commands:

``` userinput
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

Remove a file that should not be installed as the `root`{.systemitem} user:

``` root
rm /usr/sbin/lsbinstall
```

Remove two scripts that serve no purpose on a systemd system:

``` root
rm /usr/sbin/{install,remove}_initd
```
:::

::: {.sect2 lang="en"}
## Configuration Information {#configuration-information .sect2}

The configuration for this package was done in [LFS](../../../../lfs/view/systemd/chapter11/theend.md){.ulink}. The file `/etc/lsb-release`{.filename} should already exist. Be sure that the DISTRIB_CODENAME entry has been set properly.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lsb_release]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [[/usr/lib/lsb and]{.phrase} /usr/lib/python3.14/site-packages/lsbtools]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------
  []{#lsb_release}[[**lsb_release**]{.command}]{.term}   is a script to give LSB data
  ------------------------------------------------------ ------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](hwdata.md "hwdata-0.408"){accesskey="p"}

    hwdata-0.408

-   [Next](logrotate.md "Logrotate-3.22.0"){accesskey="n"}

    Logrotate-3.22.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

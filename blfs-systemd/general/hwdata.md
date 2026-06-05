::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](gpm.md "GPM-1.20.7"){accesskey="p"}

    GPM-1.20.7

-   [Next](lsb-tools.md "LSB-Tools-0.12"){accesskey="n"}

    LSB-Tools-0.12

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#hwdata}hwdata-0.408 {#hwdata-0.408 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to hwdata {#introduction-to-hwdata .sect2}

The [hwdata]{.application} package contains current PCI and vendor id data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/vcrhonek/hwdata/archive/v0.408/hwdata-0.408.tar.gz](https://github.com/vcrhonek/hwdata/archive/v0.408/hwdata-0.408.tar.gz){.ulink}

-   Download MD5 sum: 4101c2cfdc29c8c105d376158ede477f

-   Download size: 2.5 MB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of hwdata {#installation-of-hwdata .sect2}

Install [hwdata]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-blacklist
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/hwdata]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](gpm.md "GPM-1.20.7"){accesskey="p"}

    GPM-1.20.7

-   [Next](lsb-tools.md "LSB-Tools-0.12"){accesskey="n"}

    LSB-Tools-0.12

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

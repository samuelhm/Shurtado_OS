::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libmbim.md "libmbim-1.34.0"){accesskey="p"}

    libmbim-1.34.0

-   [Next](libpaper.md "libpaper-2.2.8"){accesskey="n"}

    libpaper-2.2.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libnvme}libnvme-1.16.1 {#libnvme-1.16.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libnvme {#introduction-to-libnvme .sect2}

The [libnvme]{.application} package is a library which provides type definitions for NVMe specification structures, enumerations, and bit fields, helper functions to construct, dispatch, and decode commands and payloads, and utilities to connect, scan, and manage NVMe devices on a Linux system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/linux-nvme/libnvme/archive/v1.16.1/libnvme-1.16.1.tar.gz](https://github.com/linux-nvme/libnvme/archive/v1.16.1/libnvme-1.16.1.tar.gz){.ulink}

-   Download MD5 sum: 64207c770523f2817a6482d5103cf809

-   Download size: 820 KB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.1 SBU (including tests)
:::

### libnvme Dependencies

#### Optional

[JSON-C-0.18](json-c.md "JSON-C-0.18"){.xref}, [keyutils-1.6.3](keyutils.md "keyutils-1.6.3"){.xref}, and [SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref} (to generate the Python bindings)
:::::

::: {.installation lang="en"}
## Installation of libnvme {#installation-of-libnvme .sect2}

Install [libnvme]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D libdbus=auto .. &&
ninja
```

To run the tests, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libnvme.so and libnvme-mi.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/nvme and optionally /usr/lib/python3.14/site-packages/libnvme]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  []{#libnvme-lib}[`libnvme.so`{.filename}]{.term}   contains functions used to handle operations relating to NVMe devices.
  -------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libmbim.md "libmbim-1.34.0"){accesskey="p"}

    libmbim-1.34.0

-   [Next](libpaper.md "libpaper-2.2.8"){accesskey="n"}

    libpaper-2.2.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

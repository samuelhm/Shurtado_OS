::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](lm-sensors.md "lm-sensors-3-6-2"){accesskey="p"}

    lm-sensors-3-6-2

-   [Next](sg3_utils.md "sg3_utils-1.48"){accesskey="n"}

    sg3_utils-1.48

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pciutils}pciutils-3.15.0 {#pciutils-3.15.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to PCI Utils {#introduction-to-pci-utils .sect2}

The [PCI Utils]{.application} package contains a set of programs for listing PCI devices, inspecting their status and setting their configuration registers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://mj.ucw.cz/download/linux/pci/pciutils-3.15.0.tar.gz](https://mj.ucw.cz/download/linux/pci/pciutils-3.15.0.tar.gz){.ulink}

-   Download MD5 sum: 20b8e936cce9784444961088c8801f68

-   Download size: 724 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### pciutils Dependencies

#### Recommended

[hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of PCI Utils {#installation-of-pci-utils .sect2}

Prevent the installation of the `pci.ids`{.filename} file to avoid a conflict with the [hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} package:

``` userinput
sed -r '/INSTALL/{/PCI_IDS|update-pciids /d; s/update-pciids.8//}' \
    -i Makefile
```

Install [PCI Utils]{.application} by running the following commands:

``` userinput
make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes                 \
     install install-lib        &&

chmod -v 755 /usr/lib/libpci.so
```

Next, install the [hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} package for the `pci.ids`{.filename} file.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`SHARED=yes`*: This parameter enables building of the shared library instead of the static one.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lspci, pcilmr, and setpci]{.segbody}
:::

::: seg
**Installed Library:** [libpci.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/pci]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- -------------------------------------------------------------------------------------------------------------
  []{#lspci}[[**lspci**]{.command}]{.term}     is a utility for displaying information about all PCI buses in the system and all devices connected to them
  []{#pcilmr}[[**pcilmr**]{.command}]{.term}   is a utility for managing PCIe links
  []{#setpci}[[**setpci**]{.command}]{.term}   is a utility for querying and configuring PCI devices
  []{#libpci}[`libpci.so`{.filename}]{.term}   is a library that allows applications to access the PCI subsystem
  -------------------------------------------- -------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lm-sensors.md "lm-sensors-3-6-2"){accesskey="p"}

    lm-sensors-3-6-2

-   [Next](sg3_utils.md "sg3_utils-1.48"){accesskey="n"}

    sg3_utils-1.48

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

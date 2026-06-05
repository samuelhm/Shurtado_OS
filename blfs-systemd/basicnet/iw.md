::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){accesskey="p"}

    Configuring the Linux Kernel for Wireless

-   [Next](wireless_tools.md "Wireless Tools-29"){accesskey="n"}

    Wireless Tools-29

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#iw}iw-6.17 {#iw-6.17 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to iw {#introduction-to-iw .sect2}

[iw]{.application} is a new nl80211 based CLI configuration utility for wireless devices. It supports all new drivers that have been added to the kernel recently. The old tool [iwconfig]{.application}, which uses Wireless Extensions interface, is deprecated and it's strongly recommended to switch to [iw]{.application} and nl80211.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/software/network/iw/iw-6.17.tar.xz](https://www.kernel.org/pub/software/network/iw/iw-6.17.tar.xz){.ulink}

-   Download MD5 sum: 7323e43843f30068ffb6079e15e8e11a

-   Download size: 160 KB

-   Estimated disk space required: 4.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### iw Dependencies

#### Required

[libnl-3.12.0](libnl.md "libnl-3.12.0"){.xref}

#### Required (Runtime)

[Configuring the Linux Kernel for Wireless](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){.xref}
:::::

::: {.kernel lang="en"}
## []{#iw-kernel}Kernel Configuration {#kernel-configuration .sect2}

To use [iw]{.application}, the kernel must have the appropriate drivers and other support available. Read [Configuring the Linux Kernel for Wireless](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){.xref} for details.
:::

::: {.installation lang="en"}
## Installation of iw {#installation-of-iw .sect2}

To install [iw]{.application}, use the following commands:

``` userinput
sed -i "/INSTALL.*gz/s/.gz//" Makefile &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ...**]{.command}: Install uncompressed manual pages in accordance with other man pages.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [iw]{.segbody}
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

  ----------------------------------------- --------------------------------------------------------------
  []{#iw-prog}[[**iw**]{.command}]{.term}   shows / manipulates wireless devices and their configuration
  ----------------------------------------- --------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){accesskey="p"}

    Configuring the Linux Kernel for Wireless

-   [Next](wireless_tools.md "Wireless Tools-29"){accesskey="n"}

    Wireless Tools-29

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

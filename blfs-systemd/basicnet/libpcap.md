::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnsl.md "libnsl-2.0.1"){accesskey="p"}

    libnsl-2.0.1

-   [Next](libpsl.md "libpsl-0.21.5"){accesskey="n"}

    libpsl-0.21.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libpcap}libpcap-1.10.6 {#libpcap-1.10.6 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libpcap {#introduction-to-libpcap .sect2}

[libpcap]{.application} provides functions for user-level packet capture, used in low-level network monitoring.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.tcpdump.org/release/libpcap-1.10.6.tar.gz](https://www.tcpdump.org/release/libpcap-1.10.6.tar.gz){.ulink}

-   Download MD5 sum: f49b1c1877dcbb3b7f5147429aa047f9

-   Download size: 968 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
:::

### libpcap Dependencies

#### Optional

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [libnl-3.12.0](libnl.md "libnl-3.12.0"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, Software distribution for the [DAG](https://www.endace.com/){.ulink}, and [Septel](https://www.intel.com/){.ulink} range of passive network monitoring cards.
:::::

::: {.installation lang="en"}
## Installation of libpcap {#installation-of-libpcap .sect2}

Install [libpcap]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

If you want to disable installing the static library, use this sed:

``` userinput
sed -i '/INSTALL_DATA.*libpcap.a\|RANLIB.*libpcap.a/ s/^/#/' Makefile
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [pcap-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libpcap.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/pcap]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------
  []{#pcap-config}[[**pcap-config**]{.command}]{.term}   provides configuration information for [libpcap]{.application}
  []{#libpcap-lib}[`libpcap.{a,so}`{.filename}]{.term}   are libraries used for user-level packet capture
  ------------------------------------------------------ ----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libnsl.md "libnsl-2.0.1"){accesskey="p"}

    libnsl-2.0.1

-   [Next](libpsl.md "libpsl-0.21.5"){accesskey="n"}

    libpsl-0.21.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

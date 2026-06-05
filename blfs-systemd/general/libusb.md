::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](liburcu.md "liburcu-0.15.6"){accesskey="p"}

    liburcu-0.15.6

-   [Next](libuv.md "libuv-1.52.1"){accesskey="n"}

    libuv-1.52.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libusb}libusb-1.0.30 {#libusb-1.0.30 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libusb {#introduction-to-libusb .sect2}

The [libusb]{.application} package contains a library used by some applications for USB device access.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libusb/libusb/releases/download/v1.0.30/libusb-1.0.30.tar.bz2](https://github.com/libusb/libusb/releases/download/v1.0.30/libusb-1.0.30.tar.bz2){.ulink}

-   Download MD5 sum: b0b0bacc2c6919515db8e863f0517db8

-   Download size: 644 KB

-   Estimated disk space required: 7.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### libusb Dependencies

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for generating documentation) and [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref} (for the test suite)
:::::

::: {.kernel lang="en"}
## Configuring Libusb {#configuring-libusb .sect2}

[]{#libusb-kernel} To access raw USB devices (those not treated as a disk by the mass-storage driver), appropriate support must be available in the kernel. Check your kernel configuration:

``` screen
Device Drivers --->
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M>   Support for Host-side USB                                      [USB]
    [*]     PCI based USB host interface                               [USB_PCI]
    # These are most common USB controller drivers for PC-like systems.
    # For modern systems often [USB_XHCI_HCD] is the only one needed
    # even if the system has USB 2.0 ports:
    < /*/M> xHCI HCD (USB 3.0) support                            [USB_XHCI_HCD]
    < /*/M> EHCI HCD (USB 2.0) support                            [USB_EHCI_HCD]
    < /*/M> OHCI HCD (USB 1.1) support                            [USB_OHCI_HCD]
```

For more details on setting up USB devices, see [the section called “USB Device Issues”](../postlfs/devices.md#usb-device-issues "USB Device Issues"){.xref}.
:::

::: {.installation lang="en"}
## Installation of libusb {#installation-of-libusb .sect2}

Install [libusb]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If [Doxygen]{.application} is installed and you wish to build the API documentation, issue the following commands:

``` userinput
pushd doc                &&
  doxygen -u doxygen.cfg &&
  make docs              &&
popd
```

If you wish to run the tests, ensure that you have the [umockdev-0.19.7](umockdev.md "Umockdev-0.19.7"){.xref} package installed and then add the `--enable-tests-build`{.option} switch to configure. After doing this, issue [**make check**]{.command} to run the tests.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the API documentation, install it using the following commands as the `root`{.systemitem} user:

``` root
install -v -d -m755 /usr/share/doc/libusb-1.0.30/apidocs &&
install -v -m644    doc/api-1.0/* \
                    /usr/share/doc/libusb-1.0.30/apidocs
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
**Installed Library:** [libusb-1.0.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libusb-1.0 and /usr/share/doc/libusb-1.0.30]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------
  []{#libusb-lib}[`libusb-1.0.so`{.filename}]{.term}   contains API functions used for accessing USB hardware
  ---------------------------------------------------- --------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](liburcu.md "liburcu-0.15.6"){accesskey="p"}

    liburcu-0.15.6

-   [Next](libuv.md "libuv-1.52.1"){accesskey="n"}

    libuv-1.52.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

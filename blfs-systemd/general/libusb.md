<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](liburcu.md "liburcu-0.15.6")

    liburcu-0.15.6

-   [Next](libuv.md "libuv-1.52.1")

    libuv-1.52.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libusb-1.0.30 {#libusb-1.0.30}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libusb {#introduction-to-libusb}

The <span class="application">libusb</span> package contains a library used by some applications for USB device access.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libusb/libusb/releases/download/v1.0.30/libusb-1.0.30.tar.bz2">https://github.com/libusb/libusb/releases/download/v1.0.30/libusb-1.0.30.tar.bz2</a>

-   Download MD5 sum: b0b0bacc2c6919515db8e863f0517db8

-   Download size: 644 KB

-   Estimated disk space required: 7.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libusb Dependencies

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for generating documentation) and <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for the test suite)
</div>

<div class="kernel" lang="en">
## Configuring Libusb {#configuring-libusb}

<a id="libusb-kernel"></a> To access raw USB devices (those not treated as a disk by the mass-storage driver), appropriate support must be available in the kernel. Check your kernel configuration:

```console
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

For more details on setting up USB devices, see <a class="xref" href="../postlfs/devices.md#usb-device-issues" title="USB Device Issues">the section called “USB Device Issues”</a>.
</div>

<div class="installation" lang="en">
## Installation of libusb {#installation-of-libusb}

Install <span class="application">libusb</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If <span class="application">Doxygen</span> is installed and you wish to build the API documentation, issue the following commands:

```bash
pushd doc                &&
  doxygen -u doxygen.cfg &&
  make docs              &&
popd
```

If you wish to run the tests, ensure that you have the <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> package installed and then add the <code class="option">--enable-tests-build</code> switch to configure. After doing this, issue <span class="command"><strong>make check</strong></span> to run the tests.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the API documentation, install it using the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -d -m755 /usr/share/doc/libusb-1.0.30/apidocs &&
install -v -m644    doc/api-1.0/* \
                    /usr/share/doc/libusb-1.0.30/apidocs
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libusb-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libusb-1.0 and /usr/share/doc/libusb-1.0.30</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------
  <a id="libusb-lib"></a><span class="term"><code class="filename">libusb-1.0.so</code></span>   contains API functions used for accessing USB hardware
  ---------------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](liburcu.md "liburcu-0.15.6")

    liburcu-0.15.6

-   [Next](libuv.md "libuv-1.52.1")

    libuv-1.52.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

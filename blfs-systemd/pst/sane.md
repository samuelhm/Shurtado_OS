::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 47. Scanning

-   [Prev](scanning.md "Scanning"){accesskey="p"}

    Scanning

-   [Next](simple-scan.md "Simple-scan-50.0"){accesskey="n"}

    Simple-scan-50.0

-   [Up](scanning.md "Chapter 47. Scanning"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sane}SANE-1.4.0 {#sane-1.4.0 .sect1}

::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to SANE {#introduction-to-sane .sect2}

[SANE]{.application} is short for Scanner Access Now Easy. Scanner access, however, is far from easy, since every vendor has their own protocols. The only known protocol that should bring some unity into this chaos is the TWAIN interface, but this is too imprecise to allow a stable scanning framework. Therefore, [SANE]{.application} comes with its own protocol, and the vendor drivers can't be used.

[SANE]{.application} is split into back ends and front ends. The back ends are drivers for the supported scanners and cameras. The front ends are user interfaces to access the backends.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Back Ends Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.4.0.tar.gz](https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.4.0.tar.gz){.ulink}

-   Download MD5 sum: fddb8b164ff1b1ffb576c9ba4173610d

-   Download size: 7.2 MB

-   Estimated disk space required: 214 MB (Add 58 MB for tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 0.1 SBU for tests)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The upstream location for this file is at [https://gitlab.com/sane-project](https://gitlab.com/sane-project){.ulink} but the file URL uses an embedded md5sum. For convenience, the package has been copied to the location above.
:::

### SANE Dependencies

#### Optional

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [Cups-2.4.19](cups.md "Cups-2.4.19"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [v4l-utils-1.32.0](../multimedia/v4l-utils.md "v4l-utils-1.32.0"){.xref}, [Net-SNMP](http://www.net-snmp.org/){.ulink}, [libieee1284](http://cyberelk.net/tim/libieee1284/){.ulink}, [libgphoto2](http://www.gphoto.org/){.ulink}, and [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](tl-installer.md "install-tl-unx"){.xref})
::::::

::: {.kernel lang="en"}
## []{#sane-kernel}Kernel Configuration, Drivers and Additional Packages {#kernel-configuration-drivers-and-additional-packages .sect2}

To access your scanner, you will probably need the related kernel drivers and/or additional support packages. A SCSI scanner will need SCSI drivers, a parallel port scanner needs parallel port support (you should use enhanced EPP modes) and perhaps [libieee1284](http://cyberelk.net/tim/libieee1284/){.ulink}, and a USB scanner will need the [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref} package. For HP devices, you may need [hplip](https://sourceforge.net/projects/hplip/files/hplip/){.ulink}. Ensure you have the necessary drivers properly configured to access the devices.
:::

::::: {.installation lang="en"}
## Installation of SANE {#installation-of-sane .sect2}

:::: {.sect3 lang="en"}
### Installation of SANE Backends {#installation-of-sane-backends .sect3}

The [SANE]{.application} daemon should run with its own group. Create this group by issuing the following command as the `root`{.systemitem} user:

``` root
groupadd -g 70 scanner
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[**configure**]{.command} assumes that the user building [SANE]{.application} Backends is a member of the `scanner`{.systemitem} group for testing the existence of this group. As a result, the user building the package needs to be added to the `scanner`{.systemitem} group. Add the user to the `scanner`{.systemitem} group by issuing the following command as the `root`{.systemitem} user:

``` root
usermod -G scanner -a username
```

After adding the `scanner`{.systemitem} group as above, you will need to log out and back in to activate it.
:::

For a USB scanner, if you are linking to [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, include the configure switch --enable-libusb_1_0. Install [SANE]{.application} Backends by running the following commands:

``` userinput
sg scanner -c "                                 \
PYTHON=python3 ./configure --prefix=/usr        \
                           --sysconfdir=/etc    \
                           --localstatedir=/var \
                           --with-lockdir=/run/lock \
                           --docdir=/usr/share/doc/sane-backends-1.4.0" &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install                                         &&
install -m 644 -v tools/udev/libsane.rules           \
                  /etc/udev/rules.d/65-scanner.rules &&
mkdir -p          /run/lock/sane &&
chgrp -v scanner  /run/lock/sane
```

With the scanner on, run [**scanimage -L**]{.command} and the name and location of the device should appear. Of course, you need the device drivers configured, in order to run this test.
::::
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sg scanner -c "..."**]{.command}: runs the command between double quotes with principal group `scanner`{.systemitem}. This may be needed if the user has been newly added to group scanner, and has not logged out and in.

*`PYTHON=python3`*: This switch forces the build system to use Python 3 instead of Python 2.

*`--sysconfdir=/etc`*: This switch installs the configuration files in `/etc/sane.d`{.filename} instead of `/usr/etc/sane.d`{.filename}.
:::

:::::::::::::::::: {.configuration lang="en"}
## Configuring SANE {#configuring-sane .sect2}

::: {.sect3 lang="en"}
### []{#sane-config}Config Files {#config-files .sect3}

`/etc/sane.d/*.conf`{.filename}
:::

:::::::::::::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

::::::: sect4
::::: titlepage


##### []{#idm140011135264544}Backend Configuration {#backend-configuration .title}


:::::

The backend configuration files are located in `/etc/sane.d`{.filename}. Information for configuring the various backends can be found by using the man(5) page for the desired backend. Run [**man sane-*`<backend>`***]{.command}, substituting the desired backend.

Add any users that will use a scanner to the `scanner`{.systemitem} group.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you plan on using the scanner client [Simple-scan-50.0](simple-scan.md "Simple-scan-50.0"){.xref} to access a networked scanner such as an "All-in-One" printer/scanner, there may be no configuration necessary. Try that first.
:::

If you want to access a network scanner, include two lines in `net.conf`{.filename}, as the `root`{.systemitem} user (make sure to replace \<server_ip\> by the actual value):

``` root
cat >> /etc/sane.d/net.conf << "EOF"
connect_timeout = 60
<server_ip>
EOF
```

On the server side, include the client ip in the access list of `/etc/sane.d/saned.conf`{.filename}, restart the [**saned**]{.command} daemon, and make sure the firewall, if any, is open to the client.
:::::::

:::::: sect4
::::: titlepage


##### []{#idm140011135251216}General Information {#general-information .title}


:::::

For general information about configuring and using [SANE]{.application}, see [**man sane**]{.command}. For information about USB scanning devices, run [**man sane-usb**]{.command}. For information about SCSI devices, run [**man sane-scsi**]{.command}.
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011135246848}Configuration and setup of the 'saned' daemon {#configuration-and-setup-of-the-saned-daemon .title}


:::::

The [**saned**]{.command} daemon is not meant to be used for untrusted clients. You should provide [Firewalling](../postlfs/firewall.md "Setting Up a Network Firewall"){.xref} protection to ensure only trusted clients access the daemon. Due to the complex security requirements to ensure only trusted clients access the daemon, BLFS does not provide instructions to configure the [**saned**]{.command} daemon. Some good (but outdated) information for setting up and securing the [**saned**]{.command} daemon can be found at [https://penguin-breeder.org/sane/saned/](https://penguin-breeder.org/sane/saned/){.ulink}.
::::::
::::::::::::::::
::::::::::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gamma4scanimage, sane-config, saned, sane-find-scanner, scanimage, and umax_pp]{.segbody}
:::

::: seg
**Installed Libraries:** [libsane.so and numerous scanner backend modules]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/sane.d, /usr/{include,lib,share}/sane, and /usr/share/doc/sane-1.4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gamma4scanimage}[[**gamma4scanimage**]{.command}]{.term}       creates a gamma table in the format expected by [**scanimage**]{.command}
  []{#sane-config-prog}[[**sane-config**]{.command}]{.term}          is a tool used to determine the compiler and linker flags that should be used to compile and link [SANE]{.application}
  []{#saned}[[**saned**]{.command}]{.term}                           is the [SANE]{.application} daemon that allows remote clients to access image acquisition devices available on the local host
  []{#sane-find-scanner}[[**sane-find-scanner**]{.command}]{.term}   is a command-line tool to find SCSI and USB scanners and determine their device files. Its primary purpose is to make sure that scanners can be detected by [SANE]{.application} backends
  []{#scanimage}[[**scanimage**]{.command}]{.term}                   is a command line interface for scanning from image acquisition devices such as flatbed scanners or cameras. It is also used to list the available backend devices
  []{#umax_pp}[[**umax_pp**]{.command}]{.term}                       is a tool used to read information from UMAX parallel port scanners. It can also be used for performing diagnostics on these scanners
  []{#libsane}[`libsane.so`{.filename}]{.term}                       is the application programming interface that is used to communicate between frontends and backends
  []{#libsane-module}[`libsane-*.so`{.filename}]{.term}              modules are backend scanning library plugins used to interface with scanning devices. See [http://www.sane-project.org/sane-supported-devices.html](http://www.sane-project.org/sane-supported-devices.md){.ulink} for a list of supported backends
  ------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](scanning.md "Scanning"){accesskey="p"}

    Scanning

-   [Next](simple-scan.md "Simple-scan-50.0"){accesskey="n"}

    Simple-scan-50.0

-   [Up](scanning.md "Chapter 47. Scanning"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](printing.md "Printing"){accesskey="p"}

    Printing

-   [Next](cups-browsed.md "cups-browsed-2.1.1"){accesskey="n"}

    cups-browsed-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cups}Cups-2.4.19 {#cups-2.4.19 .sect1}

::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Cups {#introduction-to-cups .sect2}

The Common Unix Printing System (CUPS) is a print spooler and associated utilities. It is based on the "Internet Printing Protocol" and provides printing services to most PostScript and raster printers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/OpenPrinting/cups/releases/download/v2.4.19/cups-2.4.19-source.tar.gz](https://github.com/OpenPrinting/cups/releases/download/v2.4.19/cups-2.4.19-source.tar.gz){.ulink}

-   Download MD5 sum: 06b7a3921812988cdb3198ff74ae381d

-   Download size: 7.6 MB

-   Estimated disk space required: 134 MB (with tests)

-   Estimated build time: 0.4 SBU (Add 1.4 SBU for tests)
:::

### Cups Dependencies

#### Required

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}

#### Recommended

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [dbus-1.16.2](../general/dbus.md "dbus-1.16.2"){.xref}, [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, and [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref}

#### Optional

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [libpaper-2.2.8](../general/libpaper.md "libpaper-2.2.8"){.xref}, [PHP-8.5.6](../general/php.md "PHP-8.5.6"){.xref}, and [Python2](https://www.python.org/downloads/release/python-2718/){.ulink}

#### Required (Postinstall)

[cups-filters-2.0.1](cups-filters.md "cups-filters-2.0.1"){.xref}

#### Optional (Postinstall)

[Gutenprint-5.3.5](gutenprint.md "Gutenprint-5.3.5"){.xref} and [hplip](https://developers.hp.com/hp-linux-imaging-and-printing){.ulink} (HP printers)
:::::

:::: {.kernel lang="en"}
## []{#cups-kernel}Kernel Configuration {#kernel-configuration .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There used to be a conflict between the [Cups]{.application} [libusb]{.application} backend and the usblp kernel driver. This is no longer the case and cups will work with both of these enabled.
:::

If you want to use the kernel usblp driver (for example, if you wish to use [escputil]{.application} from [Gutenprint-5.3.5](gutenprint.md "Gutenprint-5.3.5"){.xref}) enable the following options in your kernel configuration and recompile the kernel:

``` screen
Device Drivers --->
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M> USB Printer support                                      [USB_PRINTER]
```

If you have a parallel printer, enable the following options in your kernel configuration and recompile the kernel:

``` screen
Device Drivers --->
  <*/M> Parallel port support --->                                     [PARPORT]
    <*/M> PC-style hardware                                         [PARPORT_PC]
  Character devices --->
    <*/M> Parallel printer support                                     [PRINTER]
```
::::

:::: {.installation lang="en"}
## Installation of Cups {#installation-of-cups .sect2}

You will need to add an `lp`{.systemitem} user, as [Cups]{.application} will create some files owned by this user. (The `lp`{.systemitem} user is the default used by [Cups]{.application}, but may be changed to a different user by passing a parameter to the [**configure**]{.command} script.) Use the following command as the `root`{.systemitem} user:

``` root
useradd -c "Print Service User" -d /var/spool/cups -g lp -s /bin/false -u 9 lp
```

You will also need a dedicated group that will contain users allowed to do [Cups]{.application} administrative tasks. Add the group by running the following command as the `root`{.systemitem} user:

``` root
groupadd -g 19 lpadmin
```

If you want to add a user to the [Cups]{.application} administrative group, run the following command as the `root`{.systemitem} user:

``` root
usermod -a -G lpadmin <username>
```

If you didn't install [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref}, use the following [**sed**]{.command} to change the default browser that will be used to access the [Cups]{.application} web interface:

``` userinput
sed -i 's#@CUPS_HTMLVIEW@#firefox#' desktop/cups.desktop.in
```

Replace [**firefox**]{.command} with the web browser of your choice.

Fix a runtime issue caused by corruption of a previous pointer when using IPP:

``` userinput
sed -i '/& ipp->prev)/s/prev/& \&\& ipp->prev->next == *attr/' cups/ipp.c
```

Build [Cups]{.application} by running the following commands:

``` userinput
./configure --libdir=/usr/lib            \
            --with-rundir=/run/cups      \
            --with-system-groups=lpadmin \
            --with-docdir=/usr/share/cups/doc-2.4.19 &&
make
```

To test the results, issue: [**LC_ALL=C make -k check**]{.command}. An already active graphical session with bus address is necessary to run the tests. Make sure that there is no other instance of [Cups]{.application} running, otherwise at least 4 tests will fail with "address in use".

Now, as the `root`{.systemitem} user:

``` root
make install &&
ln -svnf ../cups/doc-2.4.19 /usr/share/doc/cups-2.4.19
```

Create a basic [Cups]{.application} client configuration file by running the following command as the `root`{.systemitem} user:

``` root
echo "ServerName /run/cups/cups.sock" > /etc/cups/client.conf
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the `/usr/share/icons/hicolor`{.filename} hierarchy and you can improve system performance and memory usage by updating `/usr/share/icons/hicolor/index.theme`{.filename}. To perform the update you must have [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} installed and issue the following command as the `root`{.systemitem} user:

``` userinput
gtk-update-icon-cache -qtf /usr/share/icons/hicolor
```
:::
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-rundir=/run/cups`*: This switch prevents the package from referring to the deprecated `/var/run`{.filename} directory.

*`--with-system-groups=lpadmin`*: This switch ensures that only `lpadmin`{.systemitem} will be used as the [Cups]{.application} administrative group.

`--disable-libusb`{.option}: Use this switch if you have installed [libusb-1.0.30](../general/libusb.md "libusb-1.0.30"){.xref}, but wish to use the kernel usblp driver.

`--enable-libpaper`{.option}: Use this switch if you have installed [libpaper]{.application} and wish to use it with [Cups]{.application}.
:::

::::::: {.configuration lang="en"}
## Configuring Cups {#configuring-cups .sect2}

::: {.sect3 lang="en"}
### []{#cups-config}Config Files {#config-files .sect3}

`/etc/cups/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Normally, printers are set up via a web browser. The [Cups]{.application} server will normally connect via the url http://localhost:631. From there printers, print jobs, and the server configuration can be set up and managed. Remote system administration can also be set up. Configuration can also be done from the command line via the [**lpadmin**]{.command}, [**lpoptions**]{.command}, and [**lpstat**]{.command} commands.

Configuration of [Cups]{.application} is dependent on the type of printer and can be complex. Generally, PostScript printers are easier. For detailed instructions on configuration and use of [Cups]{.application}, see [https://www.cups.org/documentation.html](https://www.cups.org/documentation.md){.ulink}.

For non-PostScript printers to print with [Cups]{.application}, you need to install [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref} to convert PostScript to raster images and a driver (e.g. from [Gutenprint-5.3.5](gutenprint.md "Gutenprint-5.3.5"){.xref}) to convert the resulting raster images to a form that the printer understands. [Foomatic](https://wiki.linuxfoundation.org/openprinting/database/foomatic){.ulink} drivers use [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref} to convert PostScript to a printable form directly, but this is considered suboptimal by [Cups]{.application} developers.
:::

::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

If [CUPS]{.application} has been built with [Linux PAM]{.application} support, you need to create a [PAM]{.application} configuration file to get it working correctly with BLFS.

Issue the following command as the `root`{.systemitem} user to create the configuration file for [Linux PAM]{.application}:

``` root
cat > /etc/pam.d/cups << "EOF"
# Begin /etc/pam.d/cups

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/cups
EOF
```
:::

::: {.sect3 lang="en"}
### []{#cups-init} Systemd Unit {#systemd-unit .sect3}

To start the [**cupsd**]{.command} daemon when something tries to access it, enable the previously installed systemd units by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable cups
```
:::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cancel, cupsaccept, cups-config, cupsctl, cupsd, cupsdisable, cupsenable, cupsfilter, cupsreject, cupstestppd, ippeveprinter, ippfind, ipptool, lp, lpadmin, lpc, lpinfo, lpmove, lpoptions, lpq, lpr, lprm, lpstat, ppdc, ppdhtml, ppdi, ppdmerge, and ppdpo]{.segbody}
:::

::: seg
**Installed Libraries:** [libcupsimage.so and libcups.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/cups, /usr/{include,lib,share}/cups, /usr/share/doc/cups-2.4.19, /run/cups, and /var/{cache,log,spool}/cups]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cancel-cups}[[**cancel**]{.command}]{.term}             cancels existing print jobs from the print queues
  []{#cupsaccept}[[**cupsaccept**]{.command}]{.term}          accepts jobs sent to a destination
  []{#cups-config-prog}[[**cups-config**]{.command}]{.term}   is a [Cups]{.application} program configuration utility
  []{#cupsctl}[[**cupsctl**]{.command}]{.term}                updates or queries the cupsd.conf file for a server
  []{#cupsd}[[**cupsd**]{.command}]{.term}                    is the scheduler for the Common Unix Printing System
  []{#cupsdisable}[[**cupsdisable**]{.command}]{.term}        stops printers and classes
  []{#cupsenable}[[**cupsenable**]{.command}]{.term}          starts printers and classes
  []{#cupsfilter}[[**cupsfilter**]{.command}]{.term}          is a front-end to the [Cups]{.application} filter subsystem which allows you to convert a file to a specific format
  []{#cupsreject}[[**cupsreject**]{.command}]{.term}          rejects jobs sent to a destination
  []{#cupstestppd}[[**cupstestppd**]{.command}]{.term}        tests the conformance of PPD files
  []{#ippeveprinter}[[**ippeveprinter**]{.command}]{.term}    is an IPP Everywhere printer for CUPS
  []{#ippfind}[[**ippfind**]{.command}]{.term}                finds Internet Printing Protocol printers
  []{#ipptool}[[**ipptool**]{.command}]{.term}                sends IPP requests to the specified URI and tests and/or displays the results
  []{#lp-cups}[[**lp**]{.command}]{.term}                     submits files for printing or alters a pending job
  []{#lpadmin}[[**lpadmin**]{.command}]{.term}                configures printer and class queues provided by [Cups]{.application}
  []{#lpc-cups}[[**lpc**]{.command}]{.term}                   provides limited control over printer and class queues provided by [Cups]{.application}
  []{#lpinfo}[[**lpinfo**]{.command}]{.term}                  lists the available devices or drivers known to the [Cups]{.application} server
  []{#lpmove}[[**lpmove**]{.command}]{.term}                  moves the specified job to a new destination
  []{#lpoptions}[[**lpoptions**]{.command}]{.term}            displays or sets printer options and defaults
  []{#lpq-cups}[[**lpq**]{.command}]{.term}                   shows the current print queue status on the named printer
  []{#lpr-cups}[[**lpr**]{.command}]{.term}                   submits files for printing
  []{#lprm-cups}[[**lprm**]{.command}]{.term}                 cancels print jobs that have been queued for printing
  []{#lpstat-cups}[[**lpstat**]{.command}]{.term}             displays status information about the current classes, jobs, and printers
  []{#ppdc}[[**ppdc**]{.command}]{.term}                      compiles PPDC source files into one or more PPD files
  []{#ppdhtml}[[**ppdhtml**]{.command}]{.term}                reads a driver information file and produces a HTML summary page that lists all of the drivers in a file and the supported options
  []{#ppdi}[[**ppdi**]{.command}]{.term}                      imports one or more PPD files into a PPD compiler source file
  []{#ppdmerge}[[**ppdmerge**]{.command}]{.term}              merges two or more PPD files into a single, multi-language PPD file
  []{#ppdpo}[[**ppdpo**]{.command}]{.term}                    extracts UI strings from PPDC source files and updates either a GNU gettext or Mac OS X strings format message catalog source file for translation
  []{#libcups}[`libcups.so`{.filename}]{.term}                contains the [Cups]{.application} API functions
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](printing.md "Printing"){accesskey="p"}

    Printing

-   [Next](cups-browsed.md "cups-browsed-2.1.1"){accesskey="n"}

    cups-browsed-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

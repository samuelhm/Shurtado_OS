::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups.md "Cups-2.4.19"){accesskey="p"}

    Cups-2.4.19

-   [Next](cups-filters.md "cups-filters-2.0.1"){accesskey="n"}

    cups-filters-2.0.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cups-browsed}cups-browsed-2.1.1 {#cups-browsed-2.1.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to cups-browsed {#introduction-to-cups-browsed .sect2}

The [cups-browsed]{.application} daemon is used to browse the network for remote CUPS queues and IPP network printers and automatically create local queues pointing to them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/OpenPrinting/cups-browsed/releases/download/2.1.1/cups-browsed-2.1.1.tar.xz](https://github.com/OpenPrinting/cups-browsed/releases/download/2.1.1/cups-browsed-2.1.1.tar.xz){.ulink}

-   Download MD5 sum: 293948973ebfc7ef4d5d8242d5733181

-   Download size: 412 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
:::

### cups-browsed Dependencies

#### Required

[Avahi-0.8](../basicnet/avahi.md "Avahi-0.8"){.xref}, [libcupsfilters-2.1.1](libcupsfilters.md "libcupsfilters-2.1.1"){.xref} and [libppd-2.1.1](libppd.md "libppd-2.1.1"){.xref}

#### Optional

[OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}
:::::

::: {.installation lang="en"}
## Installation of cups-browsed {#installation-of-cups-browsed .sect2}

Install [cups-browsed]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                \
            --with-cups-rundir=/run/cups \
            --without-rcdir              \
            --disable-static             \
            --docdir=/usr/share/doc/cups-browsed-2.1.1 &&
make
```

This package does not come with a functional test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Install the systemd unit by running the following command as the `root`{.systemitem} user:

``` root
install -v -m644 daemon/cups-browsed.service /lib/systemd/system/cups-browsed.service
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-cups-rundir=/run/cups`*: Defines the directory containing transient printing data. The default `/var/run/cups`{.filename} is obsolete.

*`--without-rcdir`*: This switch disables installation of the bundled bootscript which is not compatible with BLFS.
:::

:::: {.configuration lang="en"}
## Configuring cups-browsed {#configuring-cups-browsed .sect2}

::: {.sect3 lang="en"}
### []{#cups-browsed-init}Systemd Unit {#systemd-unit .sect3}

To start the [**cups-browsed**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable cups-browsed
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cups-browsed]{.segbody}
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

  ------------------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#cups-browsed-prog}[[**cups-browsed**]{.command}]{.term}   is a daemon for browsing the Bonjour and CUPS broadcasts of shared, remote CUPS printers
  ------------------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](cups.md "Cups-2.4.19"){accesskey="p"}

    Cups-2.4.19

-   [Next](cups-filters.md "cups-filters-2.0.1"){accesskey="n"}

    cups-filters-2.0.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

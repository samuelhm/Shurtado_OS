::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](ncftp.md "NcFTP-3.3.0"){accesskey="p"}

    NcFTP-3.3.0

-   [Next](nfs-utils.md "NFS-Utils-2.9.1"){accesskey="n"}

    NFS-Utils-2.9.1

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#net-tools}Net-tools-2.10 {#net-tools-2.10 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Net-tools {#introduction-to-net-tools .sect2}

The [Net-tools]{.application} package is a collection of programs for controlling the network subsystem of the Linux kernel.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz](https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz){.ulink}

-   Download MD5 sum: 78aae762c95e2d731faf88d482e4cde5

-   Download size: 228 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

:::: {.installation lang="en"}
## Installation of Net-tools {#installation-of-net-tools .sect2}

[]{#net-tools-automate-example} The instructions below automate the configuration process by piping [**yes**]{.command} to the [**make**]{.command} command. If you wish to run the interactive configuration process (by changing the instruction to just [**make**]{.command}), but you are not sure how to answer all the questions, then just accept the defaults. This will be just fine in the majority of cases. What you're asked here is a bunch of questions about which network protocols you've enabled in your kernel. The default answers will enable the tools from this package to work with the most common protocols: TCP, PPP, and several others. You still need to actually enable these protocols in the kernel—what you do here is merely tell the package to include support for those protocols in its programs, but it's up to the kernel to make the protocols available.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package has several unneeded protocols and hardware device specific functions that are obsolete. To only build the minimum needed for your system, skip the [**yes**]{.command} command and answer each question interactively. The minimum needed options are 'UNIX protocol family' and 'INET (TCP/IP) protocol family'.
:::

For this package, we use the DESTDIR method of installation in order to easily remove files from the build that overwrite those that we want to keep or are not appropriate for our system.

Install [Net-tools]{.application} by running the following commands:

``` userinput
export BINDIR='/usr/bin' SBINDIR='/usr/bin' &&
yes "" | make -j1                           &&
make DESTDIR=$PWD/install -j1 install       &&
rm    install/usr/bin/{nis,yp}domainname    &&
rm    install/usr/bin/{hostname,dnsdomainname,domainname,ifconfig} &&
rm -r install/usr/share/man/man1            &&
rm    install/usr/share/man/man8/ifconfig.8 &&
unset BINDIR SBINDIR
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
chown -R root:root install &&
cp -a install/* /
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**export BINDIR='/usr/bin' SBINDIR='/usr/bin'**]{.command}: Ensure the executables are installed in the correct location.

[**yes "" \| make**]{.command} : Piping [**yes**]{.command} to [**make config**]{.command} skips the interactive configuration and accepts the defaults.

[**rm ...**]{.command}: Remove unneeded programs and man pages.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [arp, ipmaddr, iptunnel, mii-tool, nameif, netstat, plipconfig, rarp, route, and slattach]{.segbody}
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

  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  []{#arp}[[**arp**]{.command}]{.term}                 is used to manipulate the kernel's ARP cache, usually to add or delete an entry, or to dump the entire cache
  []{#ipmaddr}[[**ipmaddr**]{.command}]{.term}         adds, deletes and shows an interface's multicast addresses
  []{#iptunnel}[[**iptunnel**]{.command}]{.term}       adds, changes, deletes and shows an interface's tunnels
  []{#mii-tool}[[**mii-tool**]{.command}]{.term}       checks or sets the status of a network interface's Media Independent Interface (MII) unit
  []{#nameif}[[**nameif**]{.command}]{.term}           names network interfaces based on MAC addresses
  []{#netstat}[[**netstat**]{.command}]{.term}         is used to report network connections, routing tables, and interface statistics
  []{#plipconfig}[[**plipconfig**]{.command}]{.term}   is used to fine tune the PLIP device parameters, to improve its performance
  []{#rarp}[[**rarp**]{.command}]{.term}               is used to manipulate the kernel's RARP table
  []{#route}[[**route**]{.command}]{.term}             is used to manipulate the IP routing table
  []{#slattach}[[**slattach**]{.command}]{.term}       attaches a network interface to a serial line. This allows you to use normal terminal lines for point-to-point links to others computers
  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](ncftp.md "NcFTP-3.3.0"){accesskey="p"}

    NcFTP-3.3.0

-   [Next](nfs-utils.md "NFS-Utils-2.9.1"){accesskey="n"}

    NFS-Utils-2.9.1

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

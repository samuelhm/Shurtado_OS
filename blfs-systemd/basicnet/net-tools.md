<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](ncftp.md "NcFTP-3.3.0")

    NcFTP-3.3.0

-   [Next](nfs-utils.md "NFS-Utils-2.9.1")

    NFS-Utils-2.9.1

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Net-tools-2.10 {#net-tools-2.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Net-tools {#introduction-to-net-tools}

The <span class="application">Net-tools</span> package is a collection of programs for controlling the network subsystem of the Linux kernel.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz">https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz</a>

-   Download MD5 sum: 78aae762c95e2d731faf88d482e4cde5

-   Download size: 228 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Net-tools {#installation-of-net-tools}

<a id="net-tools-automate-example"></a> The instructions below automate the configuration process by piping <span class="command"><strong>yes</strong></span> to the <span class="command"><strong>make</strong></span> command. If you wish to run the interactive configuration process (by changing the instruction to just <span class="command"><strong>make</strong></span>), but you are not sure how to answer all the questions, then just accept the defaults. This will be just fine in the majority of cases. What you're asked here is a bunch of questions about which network protocols you've enabled in your kernel. The default answers will enable the tools from this package to work with the most common protocols: TCP, PPP, and several others. You still need to actually enable these protocols in the kernel—what you do here is merely tell the package to include support for those protocols in its programs, but it's up to the kernel to make the protocols available.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package has several unneeded protocols and hardware device specific functions that are obsolete. To only build the minimum needed for your system, skip the <span class="command"><strong>yes</strong></span> command and answer each question interactively. The minimum needed options are 'UNIX protocol family' and 'INET (TCP/IP) protocol family'.
</div>

For this package, we use the DESTDIR method of installation in order to easily remove files from the build that overwrite those that we want to keep or are not appropriate for our system.

Install <span class="application">Net-tools</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
chown -R root:root install &&
cp -a install/* /
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>export BINDIR='/usr/bin' SBINDIR='/usr/bin'</strong></span>: Ensure the executables are installed in the correct location.

<span class="command"><strong>yes "" \| make</strong></span> : Piping <span class="command"><strong>yes</strong></span> to <span class="command"><strong>make config</strong></span> skips the interactive configuration and accepts the defaults.

<span class="command"><strong>rm ...</strong></span>: Remove unneeded programs and man pages.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">arp, ipmaddr, iptunnel, mii-tool, nameif, netstat, plipconfig, rarp, route, and slattach</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
  <a id="arp"></a><span class="command"><span class="term"><strong>arp</strong></span></span>                 is used to manipulate the kernel's ARP cache, usually to add or delete an entry, or to dump the entire cache
  <a id="ipmaddr"></a><span class="command"><span class="term"><strong>ipmaddr</strong></span></span>         adds, deletes and shows an interface's multicast addresses
  <a id="iptunnel"></a><span class="command"><span class="term"><strong>iptunnel</strong></span></span>       adds, changes, deletes and shows an interface's tunnels
  <a id="mii-tool"></a><span class="command"><span class="term"><strong>mii-tool</strong></span></span>       checks or sets the status of a network interface's Media Independent Interface (MII) unit
  <a id="nameif"></a><span class="command"><span class="term"><strong>nameif</strong></span></span>           names network interfaces based on MAC addresses
  <a id="netstat"></a><span class="command"><span class="term"><strong>netstat</strong></span></span>         is used to report network connections, routing tables, and interface statistics
  <a id="plipconfig"></a><span class="command"><span class="term"><strong>plipconfig</strong></span></span>   is used to fine tune the PLIP device parameters, to improve its performance
  <a id="rarp"></a><span class="command"><span class="term"><strong>rarp</strong></span></span>               is used to manipulate the kernel's RARP table
  <a id="route"></a><span class="command"><span class="term"><strong>route</strong></span></span>             is used to manipulate the IP routing table
  <a id="slattach"></a><span class="command"><span class="term"><strong>slattach</strong></span></span>       attaches a network interface to a serial line. This allows you to use normal terminal lines for point-to-point links to others computers
  ---------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ncftp.md "NcFTP-3.3.0")

    NcFTP-3.3.0

-   [Next](nfs-utils.md "NFS-Utils-2.9.1")

    NFS-Utils-2.9.1

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

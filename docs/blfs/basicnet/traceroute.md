<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](nmap.md "Nmap-7.99")

    Nmap-7.99

-   [Next](whois.md "Whois-5.6.6")

    Whois-5.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Traceroute-2.1.6 {#traceroute-2.1.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Traceroute {#introduction-to-traceroute}

The <span class="application">Traceroute</span> package contains a program which is used to display the network route that packets take to reach a specified host. This is a standard network troubleshooting tool. If you find yourself unable to connect to another system, traceroute can help pinpoint the problem.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package overwrites the version of <span class="command"><strong>traceroute</strong></span> that was installed in the inetutils package in LFS. This version is more powerful and allows many more options than the standard version.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/traceroute/traceroute-2.1.6.tar.gz">https://downloads.sourceforge.net/traceroute/traceroute-2.1.6.tar.gz</a>

-   Download MD5 sum: 94b41044978f4f57c373adc5a32c42d7

-   Download size: 76 KB

-   Estimated disk space required: 624 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Traceroute {#installation-of-traceroute}

Install <span class="application">Traceroute</span> by running the following commands:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install                                 &&
ln -sv -f traceroute /usr/bin/traceroute6                &&
ln -sv -f traceroute.8 /usr/share/man/man8/traceroute6.8 &&
rm -fv /usr/share/man/man1/traceroute.1
```

The traceroute.1 file that was installed in LFS by inetutils is no longer relevant. This package overwrites that version of traceroute and installs the man page in man chapter 8.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">traceroute and traceroute6 (symlink)</span>
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

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="traceroute-prog"></a><span class="command"><span class="term"><strong>traceroute</strong></span></span>     does basically what it says: it traces the route your packets take from the host you are working on to another host on a network, showing all the intermediate hops (gateways) along the way
  <a id="traceroute6-prog"></a><span class="command"><span class="term"><strong>traceroute6</strong></span></span>   is equivalent to <span class="command"><strong>traceroute -6</strong></span>
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nmap.md "Nmap-7.99")

    Nmap-7.99

-   [Next](whois.md "Whois-5.6.6")

    Whois-5.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](traceroute.md "Traceroute-2.1.6")

    Traceroute-2.1.6

-   [Next](wireshark.md "Wireshark-4.6.6")

    Wireshark-4.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Whois-5.6.6 {#whois-5.6.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Whois {#introduction-to-whois}

<span class="application">Whois</span> is a client-side application which queries the whois directory service for information pertaining to a particular domain name. This package will install two programs by default: <span class="command"><strong>whois</strong></span> and <span class="command"><strong>mkpasswd</strong></span>. The <span class="command"><strong>mkpasswd</strong></span> command is also installed by the expect package in LFS.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rfc1036/whois/archive/v5.6.6/whois-5.6.6.tar.gz">https://github.com/rfc1036/whois/archive/v5.6.6/whois-5.6.6.tar.gz</a>

-   Download MD5 sum: a2a62d1184603d4f32e9934c7642b0ad

-   Download size: 108 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Whois Dependencies

#### Optional

<a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a> or <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>
</div>

<div class="installation" lang="en">
## Installation of Whois {#installation-of-whois}

Build the application with:

```bash
make
```

You can install the <span class="command"><strong>whois</strong></span> program, the <span class="command"><strong>mkpasswd</strong></span> program, and the locale files independently. Control your choice of what is installed with the following commands issued as the <code class="systemitem">root</code> user:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Installing this version of <span class="command"><strong>mkpasswd</strong></span> will overwrite the same command installed in LFS.
</div>

```bash
make prefix=/usr install-whois
make prefix=/usr install-mkpasswd
make prefix=/usr install-pos
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">whois and mkpasswd</span>
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

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------
  <a id="whois-prog"></a><span class="command"><span class="term"><strong>whois</strong></span></span>          is a client-side application which queries the whois directory service for information pertaining to a particular domain name
  <a id="mkpasswd-whois"></a><span class="command"><span class="term"><strong>mkpasswd</strong></span></span>   generates a new password, and optionally applies it to a user
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](traceroute.md "Traceroute-2.1.6")

    Traceroute-2.1.6

-   [Next](wireshark.md "Wireshark-4.6.6")

    Wireshark-4.6.6

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-maps.md "gnome-maps-50.1")

    gnome-maps-50.1

-   [Next](gnome-power-manager.md "gnome-power-manager-50.0")

    gnome-power-manager-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-nettool-42.0 {#gnome-nettool-42.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Nettool {#introduction-to-gnome-nettool}

The <span class="application">GNOME Nettool</span> package is a network information tool which provides GUI interface for some of the most common command line network tools.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-nettool/42/gnome-nettool-42.0.tar.xz">https://download.gnome.org/sources/gnome-nettool/42/gnome-nettool-42.0.tar.xz</a>

-   Download MD5 sum: ba99489e9e3a1af03e9f2719acac7beb

-   Download size: 413 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/gnome-nettool-42.0-ping_and_netstat_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/gnome-nettool-42.0-ping_and_netstat_fixes-1.patch</a>
</div>

### GNOME Nettool Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, and <a class="xref" href="libgtop.md" title="libgtop-2.41.3">libgtop-2.41.3</a>

#### Runtime Dependencies

<a class="xref" href="../basicnet/bind-utils.md" title="BIND Utilities-9.20.20">BIND Utilities-9.20.20</a>, <a class="xref" href="../basicnet/nmap.md" title="Nmap-7.99">Nmap-7.99</a>, <a class="xref" href="../basicnet/net-tools.md" title="Net-tools-2.10">Net-tools-2.10</a>, <a class="xref" href="../basicnet/traceroute.md" title="Traceroute-2.1.6">Traceroute-2.1.6</a>, and <a class="xref" href="../basicnet/whois.md" title="Whois-5.6.6">Whois-5.6.6</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Nettool {#installation-of-gnome-nettool}

First, adapt <span class="application">GNOME Nettool</span> to changes in the <span class="application">ping</span>, <span class="application">ping6</span>, and <span class="application">netstat</span> utilities:

```bash
patch -Np1 -i ../gnome-nettool-42.0-ping_and_netstat_fixes-1.patch
```

Then add a fix for newer versions of meson:

```bash
sed -i '/merge_file/s/(.*/(/' data/meson.build
```

Install <span class="application">GNOME Nettool</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gnome-nettool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gnome-nettool and /usr/share/help/\*/gnome-nettool</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------- -------------------------------
  <a id="gnome-nettool-prog"></a><span class="command"><span class="term"><strong>gnome-nettool</strong></span></span>   is a network information tool
  --------------------------------------------------------------- -------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-maps.md "gnome-maps-50.1")

    gnome-maps-50.1

-   [Next](gnome-power-manager.md "gnome-power-manager-50.0")

    gnome-power-manager-50.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

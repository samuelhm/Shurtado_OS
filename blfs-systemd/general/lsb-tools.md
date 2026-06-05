<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](hwdata.md "hwdata-0.408")

    hwdata-0.408

-   [Next](logrotate.md "Logrotate-3.22.0")

    Logrotate-3.22.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LSB-Tools-0.12 {#lsb-tools-0.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LSB-Tools {#introduction-to-lsb-tools}

The <span class="application">LSB-Tools</span> package includes tools for Linux Standards Base (LSB) conformance.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/LSB-Tools/releases/download/v0.12/LSB-Tools-0.12.tar.gz">https://github.com/lfs-book/LSB-Tools/releases/download/v0.12/LSB-Tools-0.12.tar.gz</a>

-   Download MD5 sum: 1e6ef8cdfddb55035a6c36757e6313f9

-   Download size: 20 KB

-   Estimated disk space required: 412 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of LSB-Tools {#installation-of-lsb-tools}

Install <span class="application">LSB-Tools</span> by running the following commands:

```bash
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Remove a file that should not be installed as the <code class="systemitem">root</code> user:

```bash
rm /usr/sbin/lsbinstall
```

Remove two scripts that serve no purpose on a systemd system:

```bash
rm /usr/sbin/{install,remove}_initd
```
</div>

<div class="sect2" lang="en">
## Configuration Information {#configuration-information}

The configuration for this package was done in <a class="ulink" href="../../../../lfs/view/systemd/chapter11/theend.md">LFS</a>. The file <code class="filename">/etc/lsb-release</code> should already exist. Be sure that the DISTRIB_CODENAME entry has been set properly.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lsb_release</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="phrase"><span class="segbody">/usr/lib/lsb and</span> /usr/lib/python3.14/site-packages/lsbtools</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------
  <a id="lsb_release"></a><span class="command"><span class="term"><strong>lsb_release</strong></span></span>   is a script to give LSB data
  ------------------------------------------------------ ------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](hwdata.md "hwdata-0.408")

    hwdata-0.408

-   [Next](logrotate.md "Logrotate-3.22.0")

    Logrotate-3.22.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

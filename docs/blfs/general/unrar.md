<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](udisks2.md "UDisks-2.11.1")

    UDisks-2.11.1

-   [Next](upower.md "UPower-1.91.2")

    UPower-1.91.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# UnRar-7.2.4 {#unrar-7.2.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to UnRar {#introduction-to-unrar}

The <span class="application">UnRar</span> package contains a <code class="filename">RAR</code> extraction utility used for extracting files from <code class="filename">RAR</code> archives. <code class="filename">RAR</code> archives are usually created with <span class="application">WinRAR</span>, primarily in a Windows environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.rarlab.com/rar/unrarsrc-7.2.4.tar.gz">https://www.rarlab.com/rar/unrarsrc-7.2.4.tar.gz</a>

-   Download MD5 sum: 4c2c8cae2a8f1dabd8bf150848253248

-   Download size: 264 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: 0.3 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of UnRar {#installation-of-unrar}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package extracts the tarball to the unversioned directory <code class="filename">unrar</code> and not the expected directory <code class="filename">unrar-7.2.4</code>.
</div>

Install <span class="application">UnRar</span> by running the following commands:

```bash
make -f makefile
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -m755 unrar /usr/bin
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">unrar</span>
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

  ----------------------------------------------- -----------------------------------------
  <a id="unrar-prog"></a><span class="command"><span class="term"><strong>unrar</strong></span></span>   uncompresses a <code class="filename">RAR</code> archive
  ----------------------------------------------- -----------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](udisks2.md "UDisks-2.11.1")

    UDisks-2.11.1

-   [Next](upower.md "UPower-1.91.2")

    UPower-1.91.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

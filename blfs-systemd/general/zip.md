<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](xdotool.md "xdotool-4.20260303.1")

    xdotool-4.20260303.1

-   [Next](hdparm.md "Hdparm-9.65")

    Hdparm-9.65

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Zip-3.0 {#zip-3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Zip {#introduction-to-zip}

The <span class="application">Zip</span> package contains <span class="application">Zip</span> utilities. These are useful for compressing files into <code class="filename">ZIP</code> archives.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/infozip/zip30.tar.gz">https://downloads.sourceforge.net/infozip/zip30.tar.gz</a>

-   Download MD5 sum: 7b74551e63f8ee6aab6fbc86676c0d37

-   Download size: 1.1 MB

-   Estimated disk space required: 6.4 MB

-   Estimated build time: 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Zip {#installation-of-zip}

Install <span class="application">Zip</span> by running the following commands:

```bash
make -f unix/Makefile generic CC="gcc -std=gnu89"
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`CC="gcc -std=gnu89"`*: This parameter overrides the <code class="varname">CC</code> variable that is set to <span class="command"><strong>cc</strong></span> in the <code class="filename">unix/Makefile</code> file. On LFS <span class="command"><strong>cc</strong></span> is a symlink to <span class="command"><strong>gcc</strong></span>, and it uses <code class="option">-std=gnu17</code> (ISO 9899:2017 with GNU extensions) as the default but Zip is a <span class="quote">“<span class="quote">legacy</span>”</span> package where some grammar constructs are invalid in ISO 9899:1999 and newer standards.

*`prefix=/usr`*: This parameter overrides the <code class="varname">prefix</code> variable that is set to <code class="filename">/usr/local</code> in the <code class="filename">unix/Makefile</code> file.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">zip, zipcloak, zipnote, and zipsplit</span>
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

  ------------------------------------------------ -----------------------------------------------------------------
  <a id="zip-prog"></a><span class="command"><span class="term"><strong>zip</strong></span></span>        compresses files into a <code class="filename">ZIP</code> archive
  <a id="zipcloak"></a><span class="command"><span class="term"><strong>zipcloak</strong></span></span>   is a utility to encrypt and decrypt a <code class="filename">ZIP</code> archive
  <a id="zipnote"></a><span class="command"><span class="term"><strong>zipnote</strong></span></span>     reads or writes comments stored in a <code class="filename">ZIP</code> file
  <a id="zipsplit"></a><span class="command"><span class="term"><strong>zipsplit</strong></span></span>   is a utility to split <code class="filename">ZIP</code> files into smaller files
  ------------------------------------------------ -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdotool.md "xdotool-4.20260303.1")

    xdotool-4.20260303.1

-   [Next](hdparm.md "Hdparm-9.65")

    Hdparm-9.65

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](desktop-file-utils.md "desktop-file-utils-0.28")

    desktop-file-utils-0.28

-   [Next](editorconfig-core-c.md "editorconfig-core-c-0.12.11")

    editorconfig-core-c-0.12.11

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dos2unix-7.5.6 {#dos2unix-7.5.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dos2unix {#introduction-to-dos2unix}

The <span class="application">dos2unix</span> package contains an any-to-any text format converter.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/dos2unix/dos2unix-7.5.6.tar.gz">https://downloads.sourceforge.net/dos2unix/dos2unix-7.5.6.tar.gz</a>

-   Download MD5 sum: 0cda65d5e461b1d8162bf1194a669531

-   Download size: 976 KB

-   Estimated disk space required: 8.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>
</div>

<div class="installation" lang="en">
## Installation of dos2unix {#installation-of-dos2unix}

Build <span class="application">dos2unix</span> by running the following commands:

```bash
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">dos2unix, mac2unix, unix2dos, and unix2mac</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/dos2unix-7.5.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------
  <a id="dos2unix-prog"></a><span class="command"><span class="term"><strong>dos2unix</strong></span></span>   converts plain text files in DOS format to Unix format
  <a id="mac2unix"></a><span class="command"><span class="term"><strong>mac2unix</strong></span></span>        converts plain text files in Mac format to Unix format
  <a id="unix2dos"></a><span class="command"><span class="term"><strong>unix2dos</strong></span></span>        converts plain text files in Unix format to DOS format
  <a id="unix2mac"></a><span class="command"><span class="term"><strong>unix2mac</strong></span></span>        converts plain text files in Unix format to Mac format
  ----------------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](desktop-file-utils.md "desktop-file-utils-0.28")

    desktop-file-utils-0.28

-   [Next](editorconfig-core-c.md "editorconfig-core-c-0.12.11")

    editorconfig-core-c-0.12.11

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

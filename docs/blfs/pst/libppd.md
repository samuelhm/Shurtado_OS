<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](libcupsfilters.md "libcupsfilters-2.1.1")

    libcupsfilters-2.1.1

-   [Next](scanning.md "Scanning")

    Scanning

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libppd-2.1.1 {#libppd-2.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libppd {#introduction-to-libppd}

The <span class="application">libppd</span> library contains functions for handling legacy printers using PPD description files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/OpenPrinting/libppd/releases/download/2.1.1/libppd-2.1.1.tar.xz">https://github.com/OpenPrinting/libppd/releases/download/2.1.1/libppd-2.1.1.tar.xz</a>

-   Download MD5 sum: 65accc86f9956a1160937b14e0f516a6

-   Download size: 576 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests)
</div>

### libppd Dependencies

#### Required

<a class="xref" href="libcupsfilters.md" title="libcupsfilters-2.1.1">libcupsfilters-2.1.1</a>
</div>

<div class="installation" lang="en">
## Installation of libppd {#installation-of-libppd}

Install <span class="application">libppd</span> by running the following commands:

```bash
./configure --prefix=/usr                \
            --disable-static             \
            --with-cups-rundir=/run/cups \
            --enable-ppdc-utils          \
            --docdir=/usr/share/doc/libppd-2.1.1 &&
make
```

To test the results, issue <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-cups-rundir=/run/cups`*: Defines the directory containing transient printing data. The default <code class="filename">/var/run/cups</code> is obsolete.

*`--enable-ppdc-utils`*: Allows building utilities to manipulate <span class="emphasis"><em>.ppd</em></span> files.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ppdc, ppdhtml, ppdi, ppdmerge, and ppdpo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libppd.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ppd, /usr/share/ppdc, and /usr/share/doc/libppd-2.1.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="libppd-ppdc"></a><span class="command"><span class="term"><strong>ppdc</strong></span></span>           compiles PPDC source files into one or more PPD files
  <a id="libppd-ppdhtml"></a><span class="command"><span class="term"><strong>ppdhtml</strong></span></span>     reads a driver information file and produces a HTML summary page that lists all of the drivers in a file and the supported options
  <a id="libppd-ppdi"></a><span class="command"><span class="term"><strong>ppdi</strong></span></span>           imports one or more PPD files into a PPD compiler source file
  <a id="libppd-ppdmerge"></a><span class="command"><span class="term"><strong>ppdmerge</strong></span></span>   merges two or more PPD files into a single, multi-language PPD file
  <a id="libppd-ppdpo"></a><span class="command"><span class="term"><strong>ppdpo</strong></span></span>         extracts UI strings from PPDC source files and updates either a GNU gettext or Mac OS X strings format message catalog source file for translation
  <a id="libppd-lib"></a><span class="term"><code class="filename">libppd.so</code></span>          contains API functions for manipulating <span class="emphasis"><em>.ppd</em></span> files
  ------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcupsfilters.md "libcupsfilters-2.1.1")

    libcupsfilters-2.1.1

-   [Next](scanning.md "Scanning")

    Scanning

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

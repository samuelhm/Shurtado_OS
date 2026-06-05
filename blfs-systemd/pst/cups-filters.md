<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups-browsed.md "cups-browsed-2.1.1")

    cups-browsed-2.1.1

-   [Next](gs.md "ghostscript-10.07.1")

    ghostscript-10.07.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cups-filters-2.0.1 {#cups-filters-2.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to CUPS Filters {#introduction-to-cups-filters}

The <span class="application">CUPS Filters</span> package is only needed to adapt <a class="xref" href="libcupsfilters.md" title="libcupsfilters-2.1.1">libcupsfilters-2.1.1</a> and <a class="xref" href="libppd.md" title="libppd-2.1.1">libppd-2.1.1</a> filter functions for cups-2.x. It should not be needed for cups-3.x.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/OpenPrinting/cups-filters/releases/download/2.0.1/cups-filters-2.0.1.tar.xz">https://github.com/OpenPrinting/cups-filters/releases/download/2.0.1/cups-filters-2.0.1.tar.xz</a>

-   Download MD5 sum: b40d0f135af414666e1c3917983a1bb3

-   Download size: 440 KB

-   Estimated disk space required: 9.0 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/cups-filters-2.0.1-security_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/cups-filters-2.0.1-security_fix-1.patch</a>
</div>

### CUPS Filters Dependencies

#### Required

<a class="xref" href="libcupsfilters.md" title="libcupsfilters-2.1.1">libcupsfilters-2.1.1</a> and <a class="xref" href="libppd.md" title="libppd-2.1.1">libppd-2.1.1</a>

#### Optional (runtime)

<a class="xref" href="cups-browsed.md" title="cups-browsed-2.1.1">cups-browsed-2.1.1</a> (if you need Network Discovery capabilities)
</div>

<div class="installation" lang="en">
## Installation of CUPS Filters {#installation-of-cups-filters}

First, fix a problem when building with gcc-15:

```bash
sed -i '/proc_func)()/s/()/(FILE*, FILE*, void*)/' filter/foomatic-rip/process.h
```

Next, fix a security vulnerability:

```bash
patch -Np1 -i ../cups-filters-2.0.1-security_fix-1.patch
```

Install <span class="application">CUPS Filters</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/cups-filters-2.0.1 &&
make
```

This package does not come with a functional test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">driverless, driverless-fax, and foomatic-rip</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cups/{backend,driver,filter}, /usr/share/doc/cups-filters-2.0.1, and /usr/share/ppd/cupsfilters</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------
  <a id="driverless"></a><span class="command"><span class="term"><strong>driverless</strong></span></span>           is a PPD generator utility for driverless printing
  <a id="driverless-fax"></a><span class="command"><span class="term"><strong>driverless-fax</strong></span></span>   is a wrapper to <span class="command"><strong>driverless</strong></span> for FAX type devices
  <a id="foomatic-rip"></a><span class="command"><span class="term"><strong>foomatic-rip</strong></span></span>       is a universal print filter/RIP wrapper which can be used as CUPS filter or stand-alone for spooler-less, direct printing
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cups-browsed.md "cups-browsed-2.1.1")

    cups-browsed-2.1.1

-   [Next](gs.md "ghostscript-10.07.1")

    ghostscript-10.07.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

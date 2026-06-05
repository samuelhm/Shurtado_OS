<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdrtools.md "Cdrtools-3.02a09")

    Cdrtools-3.02a09

-   [Next](libburn.md "libburn-1.5.8")

    libburn-1.5.8

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dvd+rw-tools-7.1 {#dvdrw-tools-7.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dvd+rw-tools {#introduction-to-dvdrw-tools}

The <span class="application">dvd+rw-tools</span> package contains several utilities to master the DVD media, both +RW/+R and -R\[W\]. The principle tool is <span class="command"><strong>growisofs</strong></span> which provides a way to both lay down <span class="strong"><strong>and</strong></span> grow an ISO9660 file system on (as well as to burn an arbitrary pre-mastered image to) all supported DVD media. This is useful for creating a new DVD or adding to an existing image on a partially burned DVD.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/dvd+rw-tools/dvd+rw-tools-7.1.tar.gz">https://anduin.linuxfromscratch.org/BLFS/dvd+rw-tools/dvd+rw-tools-7.1.tar.gz</a>

-   Download MD5 sum: 8acb3c885c87f6838704a0025e435871

-   Download size: 138 KB

-   Estimated disk space required: 1.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/dvd+rw-tools-7.1-consolidated_fixes-2.patch">https://www.linuxfromscratch.org/patches/blfs/svn/dvd+rw-tools-7.1-consolidated_fixes-2.patch</a>
</div>

### dvd+rw-tools Dependencies

#### Required

<a class="xref" href="cdrtools.md" title="Cdrtools-3.02a09">Cdrtools-3.02a09</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of dvd+rw-tools {#installation-of-dvdrw-tools}

First, apply a patch that fixes several bugs and fixes compiling with newer versions of glibc and the kernel headers:

```bash
patch -Np1 -i ../dvd+rw-tools-7.1-consolidated_fixes-2.patch
```

Install <span class="application">dvd+rw-tools</span> by running the following commands:

```bash
make all rpl8 btcflash
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install &&
install -v -m644 -D index.md \
    /usr/share/doc/dvd+rw-tools-7.1/index.md
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make all rpl8 btcflash</strong></span>: This command uses additional targets so that all the utilities are built.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">btcflash, dvd+rw-booktype, dvd+rw-format, dvd+rw-mediainfo, dvd-ram-control, growisofs, and rpl8</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/dvd+rw-tools-7.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  <a id="growisofs"></a><span class="command"><span class="term"><strong>growisofs</strong></span></span>   is a combined <span class="command"><strong>mkisofs</strong></span> frontend/DVD recording program
  -------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cdrtools.md "Cdrtools-3.02a09")

    Cdrtools-3.02a09

-   [Next](libburn.md "libburn-1.5.8")

    libburn-1.5.8

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

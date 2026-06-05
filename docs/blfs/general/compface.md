<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](bogofilter.md "Bogofilter-1.2.5")

    Bogofilter-1.2.5

-   [Next](desktop-file-utils.md "desktop-file-utils-0.28")

    desktop-file-utils-0.28

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Compface-1.5.2 {#compface-1.5.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Compface {#introduction-to-compface}

<span class="application">Compface</span> provides utilities and a library to convert from/to X-Face format, a 48x48 bitmap format used to carry thumbnails of email authors in a mail header.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz">https://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz</a>

-   Download MD5 sum: 62f4f79c0861ad292ba3cf77b4c48319

-   Download size: 47 KB

-   Estimated disk space required: 520 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Compface {#installation-of-compface}

First, fix the configure script so that it's C99 compatible:

```bash
autoreconf
```

Next, fix a build failure that occurs with GCC 14:

```bash
sed -e '/compface.h/a #include <unistd.h>' \
    -i cmain.c                             \
    -i uncmain.c
```

Install <span class="application">Compface</span> by running the following commands:

```bash
./configure --prefix=/usr --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -m755 -v xbm2xface.pl /usr/bin
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">compface, uncompface and xbm2xface.pl</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libcompface.a</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -----------------------------------------------------------------------------------------------
  <a id="compface-prog"></a><span class="command"><span class="term"><strong>compface</strong></span></span>   is a filter for generating highly compressed representations of 48x48x1 face image files
  <a id="uncompface"></a><span class="command"><span class="term"><strong>uncompface</strong></span></span>    is an inverse filter which performs an inverse transformation with no loss of data
  <a id="xbm2xface"></a><span class="command"><span class="term"><strong>xbm2xface.pl</strong></span></span>   is a script to generate xfaces
  <a id="libcompface"></a><span class="term"><code class="filename">libcompface.a</code></span>   allows the compression and decompression algorithms to be used in other programs such as MTAs
  ----------------------------------------------------- -----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bogofilter.md "Bogofilter-1.2.5")

    Bogofilter-1.2.5

-   [Next](desktop-file-utils.md "desktop-file-utils-0.28")

    desktop-file-utils-0.28

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

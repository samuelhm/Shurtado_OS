<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcddb.md "libcddb-1.3.2")

    libcddb-1.3.2

-   [Next](libde265.md "libde265-1.1.0")

    libde265-1.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcdio-2.1.0 {#libcdio-2.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcdio {#introduction-to-libcdio}

The <span class="application">libcdio</span> is a library for CD-ROM and CD image access. The associated <span class="application">libcdio-cdparanoia</span> library reads audio from the CD-ROM directly as data, with no analog step between, and writes the data to a file or pipe as .wav, .aifc or as raw 16 bit linear PCM.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/libcdio/libcdio-2.1.0.tar.bz2">https://ftpmirror.gnu.org/libcdio/libcdio-2.1.0.tar.bz2</a>

-   Download MD5 sum: aa7629e8f73662a762f64c444b901055

-   Download size: 1.7 MB

-   Estimated disk space required: 53 MB (both packages, including checks)

-   Estimated build time: 0.2 SBU (using parallelism=4; both packages, including checks)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required file: <a class="ulink" href="https://ftpmirror.gnu.org/libcdio/libcdio-paranoia-10.2+2.0.2.tar.bz2">https://ftpmirror.gnu.org/libcdio/libcdio-paranoia-10.2+2.0.2.tar.bz2</a>
</div>

### libcdio Dependencies

#### Optional

<a class="xref" href="libcddb.md" title="libcddb-1.3.2">libcddb-1.3.2</a>
</div>

<div class="installation" lang="en">
## Installation of libcdio {#installation-of-libcdio}

If you are building on an i686 system, fix a build issue caused by large file support:

```bash
case $(uname -m) in
   i?86)
      sed '/CDIO_LSEEK/s/lseek64/lseek/'  -i lib/driver/_cdio_generic.c &&
      sed '/CDIO_FSEEK/s/fseeko64/fseek/' -i lib/driver/_cdio_stdio.c   ;;
esac
```

Install <span class="application">libcdio</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make check -k</strong></span>. One test named <code class="filename">realpath</code> is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Now install libcdio-paranoia:

```bash
tar -xf ../libcdio-paranoia-10.2+2.0.2.tar.bz2 &&
cd libcdio-paranoia-10.2+2.0.2 &&

./configure --prefix=/usr --disable-static &&
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
**Installed Programs:** <span class="segbody">cdda-player, cd-drive, cd-info, cd-paranoia, cd-read, iso-info, iso-read, and mmc-tool</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libcdio.so, libcdio++.so, libcdio_cdda, libcdio_paranoia, libiso9660, libiso9660++, and libudf.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/cdio and /usr/include/cdio++</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------
  <a id="cd-drive"></a><span class="command"><span class="term"><strong>cd-drive</strong></span></span>         shows CD-ROM drive characteristics
  <a id="cd-info"></a><span class="command"><span class="term"><strong>cd-info</strong></span></span>           shows information about a CD or CD-image
  <a id="cd-paranoia"></a><span class="command"><span class="term"><strong>cd-paranoia</strong></span></span>   is an audio CD reading utility which includes extra data verification features
  <a id="cd-read"></a><span class="command"><span class="term"><strong>cd-read</strong></span></span>           reads Information from a CD or CD-image
  <a id="cdda-player"></a><span class="command"><span class="term"><strong>cdda-player</strong></span></span>   is a simple curses CD player
  <a id="iso-info"></a><span class="command"><span class="term"><strong>iso-info</strong></span></span>         shows Information about an ISO 9660 image
  <a id="iso-read"></a><span class="command"><span class="term"><strong>iso-read</strong></span></span>         reads portions of an ISO 9660 image
  <a id="mmc-tool"></a><span class="command"><span class="term"><strong>mmc-tool</strong></span></span>         issues libcdio multimedia commands
  <a id="libcdio.so"></a><span class="term"><code class="filename">libcdio.so</code></span>        contains the primary cdio API functions
  ------------------------------------------------------ --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcddb.md "libcddb-1.3.2")

    libcddb-1.3.2

-   [Next](libde265.md "libde265-1.1.0")

    libde265-1.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

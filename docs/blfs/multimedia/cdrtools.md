<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdrdao.md "Cdrdao-1.2.6")

    Cdrdao-1.2.6

-   [Next](dvd-rw-tools.md "dvd+rw-tools-7.1")

    dvd+rw-tools-7.1

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cdrtools-3.02a09 {#cdrtools-3.02a09}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cdrtools {#introduction-to-cdrtools}

The <span class="application">Cdrtools</span> package contains CD recording utilities. These are useful for reading, creating or writing (burning) CDs, DVDs, and Blu-ray discs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/cdrtools/cdrtools-3.02a09.tar.bz2">https://downloads.sourceforge.net/cdrtools/cdrtools-3.02a09.tar.bz2</a>

-   Download MD5 sum: 1e224a6adbbe4ad40047b9fddbb0e60c

-   Download size: 2.1 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.7 SBU
</div>

### Cdrtools Dependencies

#### Required

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/Cdrtools">https://wiki.linuxfromscratch.org/blfs/wiki/Cdrtools</a>
</div>

<div class="installation" lang="en">
## Installation of Cdrtools {#installation-of-cdrtools}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
</div>

Install <span class="application">Cdrtools</span> by running the following commands:

```bash
sed -i 's|/opt/schily|/usr|g'           DEFAULTS/Defaults.linux &&
sed -i 's|DEFINSGRP=.*|DEFINSGRP=root|' DEFAULTS/Defaults.linux &&
sed -i 's|INSDIR=\s*sbin|INSDIR=bin|'   rscsi/Makefile          &&

export GMAKE_NOWARN=true &&
export CFLAGS="$CFLAGS -std=gnu89 -fno-strict-aliasing" &&

make -j1 INS_BASE=/usr  \
         DEFINSUSR=root \
         DEFINSGRP=root \
         VERSION_OS="LinuxFromScratch"
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
GMAKE_NOWARN=true &&

make INS_BASE=/usr    \
     DEFINSUSR=root   \
     DEFINSGRP=root   \
     MANSUFF_LIB=3cdr \
     install          &&

install -v -m755 -d /usr/share/doc/cdrtools-3.02a09 &&
install -v -m644 README.* READMEs/* ABOUT doc/*.ps \
                    /usr/share/doc/cdrtools-3.02a09
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>export GMAKE_NOWARN=true</strong></span>: This variable avoids a warning when using GNU make.

*`INS_BASE=/usr`*: This parameter moves the install directory from <code class="filename">/opt/schily</code> to <code class="filename">/usr</code>.

*`DEFINSUSR=root DEFINSGRP=root`*: These parameters install all programs with root:root ownership instead of the default bin:bin.

*`MANSUFF_LIB=3cdr`*: This parameter prevents <span class="application">Cdrtools</span> from overwriting important pages which are already installed by LFS. The installed man pages of section 3 will have a suffix <code class="literal">3cdr</code> and can be shown using <span class="command"><strong>man 3cdr \<manpage\></strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">btcflash, cdda2mp3, cdda2ogg, cdda2wav, cdrecord, devdump, isodebug, isodump, isoinfo, isovfy, mkhybrid, mkisofs, readcd, rscsi, scgcheck, scgskeleton</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcdrdeflt.a, libdeflt.a, libedc_ecc.a, libedc_ecc_dec.a, libfile.a, libfind.a, libhfs.a, libmdigest.a, libparanoia.a, librscg.a, libscg.a, libscgcmd.a, libschily.a, libsiconv.a</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/{profiled,siconv}, /usr/include/{scg,schily}, /usr/share/doc/cdda2wav,cdrecord,libparanoia,mkisofs,rscsi}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------------------------------------
  <a id="btcflash"></a><span class="command"><span class="term"><strong>btcflash</strong></span></span>   flashes the firmware on BTC DRW1008 DVD+/-RW recorders. Please exercise care with this program
  <a id="cdda2wav"></a><span class="command"><span class="term"><strong>cdda2wav</strong></span></span>   converts Compact Disc audio into WAV sound files
  <a id="cdrecord"></a><span class="command"><span class="term"><strong>cdrecord</strong></span></span>   records audio or data onto Compact Discs
  <a id="devdump"></a><span class="command"><span class="term"><strong>devdump</strong></span></span>     is a diagnostic program used to dump an ISO-9660 device or file in hex
  <a id="isodebug"></a><span class="command"><span class="term"><strong>isodebug</strong></span></span>   is used to display the command-line parameters used to create an ISO-9660 image
  <a id="isodump"></a><span class="command"><span class="term"><strong>isodump</strong></span></span>     is a diagnostic program used to dump a device or file based on ISO-9660
  <a id="isoinfo"></a><span class="command"><span class="term"><strong>isoinfo</strong></span></span>     is used to analyze or list an ISO-9660 image
  <a id="isovfy"></a><span class="command"><span class="term"><strong>isovfy</strong></span></span>       is used to verify an ISO-9660 image
  <a id="mkhybrid"></a><span class="command"><span class="term"><strong>mkhybrid</strong></span></span>   is a symbolic link to <span class="command"><strong>mkisofs</strong></span> used to create ISO-9660/HFS hybrid filesystem images
  <a id="mkisofs"></a><span class="command"><span class="term"><strong>mkisofs</strong></span></span>     is used to create ISO-9660/JOLIET/HFS filesystem images, optionally with Rock Ridge attributes
  <a id="readcd"></a><span class="command"><span class="term"><strong>readcd</strong></span></span>       reads or writes Compact Discs
  <a id="rscsi"></a><span class="command"><span class="term"><strong>rscsi</strong></span></span>         is a remote SCSI manager
  <a id="scgcheck"></a><span class="command"><span class="term"><strong>scgcheck</strong></span></span>   is used to check and verify the Application Binary Interface of <code class="filename">libscg</code>
  <a id="libscg"></a><span class="term"><code class="filename">libscg.a</code></span>        is a highly portable SCSI transport library
  ------------------------------------------------ ----------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cdrdao.md "Cdrdao-1.2.6")

    Cdrdao-1.2.6

-   [Next](dvd-rw-tools.md "dvd+rw-tools-7.1")

    dvd+rw-tools-7.1

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

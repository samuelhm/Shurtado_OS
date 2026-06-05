<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](audacious.md "Audacious-4.6")

    Audacious-4.6

-   [Next](kwave.md "kwave-26.04.1")

    kwave-26.04.1

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# CDParanoia-III-10.2 {#cdparanoia-iii-10.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to CDParanoia {#introduction-to-cdparanoia}

The <span class="application">CDParanoia</span> package contains a CD audio extraction tool. This is useful for extracting <code class="filename">.wav</code> files from audio CDs. A CDDA capable CDROM drive is needed. Practically all drives supported by Linux can be used.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz">https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz</a>

-   Download MD5 sum: b304bbe8ab63373924a744eac9ebc652

-   Download size: 179 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/cdparanoia-III-10.2-gcc_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/cdparanoia-III-10.2-gcc_fixes-1.patch</a>
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/cdparanoia">https://wiki.linuxfromscratch.org/blfs/wiki/cdparanoia</a>
</div>

<div class="installation" lang="en">
## Installation of CDParanoia {#installation-of-cdparanoia}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
</div>

Install <span class="application">CDParanoia</span> by running the following commands:

```bash
patch -Np1 -i ../cdparanoia-III-10.2-gcc_fixes-1.patch &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make -j1
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
chmod -v 755 /usr/lib/libcdda_*.so.0.10.2 &&
rm -fv /usr/lib/libcdda_*.a
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">cdparanoia</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcdda_interface.so and libcdda_paranoia.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cdparanoia-prog"></a><span class="command"><span class="term"><strong>cdparanoia</strong></span></span>         is used for 'ripping' an audio-cd. Ripping is the process of digitally extracting music from an audio CD
  <a id="libcdda_interface"></a><span class="term"><code class="filename">libcdda_interface</code></span>   contains functions used by <span class="command"><strong>cdparanoia</strong></span>, as well as other packages, which can automatically identify if a CD device is CDDA compatible
  <a id="libcdda_paranoia"></a><span class="term"><code class="filename">libcdda_paranoia</code></span>     contains functions used by <span class="command"><strong>cdparanoia</strong></span>, as well as other packages, which provide data verification, synchronization, error handling and scratch reconstruction capability
  --------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](audacious.md "Audacious-4.6")

    Audacious-4.6

-   [Next](kwave.md "kwave-26.04.1")

    kwave-26.04.1

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

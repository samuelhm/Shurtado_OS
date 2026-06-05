<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdv.md "Libdv-1.0.0")

    Libdv-1.0.0

-   [Next](libmpeg2.md "libmpeg2-0.5.1")

    libmpeg2-0.5.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libmad-0.15.1b {#libmad-0.15.1b}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libmad {#introduction-to-libmad}

<span class="application">libmad</span> is a high-quality MPEG audio decoder capable of 24-bit output.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz">https://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz</a>

-   Download MD5 sum: 1be543bc30c56fb6bea1d7bf6a64e66c

-   Download size: 491 KB

-   Estimated disk space required: 4.2 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libmad-0.15.1b-fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libmad-0.15.1b-fixes-1.patch</a>
</div>
</div>

<div class="installation" lang="en">
## Installation of libmad {#installation-of-libmad}

Install <span class="application">libmad</span> by running the following commands:

```bash
patch -Np1 -i ../libmad-0.15.1b-fixes-1.patch                &&
sed "s@AM_CONFIG_HEADER@AC_CONFIG_HEADERS@g" -i configure.ac &&
touch NEWS AUTHORS ChangeLog                                 &&
autoreconf -fi                                               &&

./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Some packages check for the <span class="application">pkg-config</span> file for <span class="application">libmad</span>. This file is particularly needed so that <span class="application">Cdrdao</span> can recognize the installed <span class="application">libmad</span>.

As the <code class="systemitem">root</code> user:

```bash
cat > /usr/lib/pkgconfig/mad.pc << "EOF"
prefix=/usr
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: mad
Description: MPEG audio decoder
Requires:
Version: 0.15.1b
Libs: -L${libdir} -lmad
Cflags: -I${includedir}
EOF
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>touch NEWS AUTHORS ChangeLog</strong></span>: Prevent autoreconf from returning an error.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libmad.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------
  <a id="libmad-lib"></a><span class="term"><code class="filename">libmad.so</code></span>   is a MPEG audio decoder library
  ------------------------------------------------ ---------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdv.md "Libdv-1.0.0")

    Libdv-1.0.0

-   [Next](libmpeg2.md "libmpeg2-0.5.1")

    libmpeg2-0.5.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

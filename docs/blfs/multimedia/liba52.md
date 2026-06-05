<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1")

    intel-vaapi-driver-2.4.1

-   [Next](libao.md "Libao-1.2.0")

    Libao-1.2.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Liba52-0.8.0 {#liba52-0.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Liba52 {#introduction-to-liba52}

<span class="application">liba52</span> is a free library for decoding ATSC A/52 (also known as AC-3) streams. The A/52 standard is used in a variety of applications, including digital television and DVD.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://distfiles.adelielinux.org/source/a52dec/a52dec-0.8.0.tar.gz">https://distfiles.adelielinux.org/source/a52dec/a52dec-0.8.0.tar.gz</a>

-   Download MD5 sum: 4debeed0257f5312e84d92711a5cfcec

-   Download size: 448 KB

-   Estimated disk space required: 3.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Optional

<a class="ulink" href="https://cr.yp.to/djbfft.md">djbfft</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/liba52">https://wiki.linuxfromscratch.org/blfs/wiki/liba52</a>
</div>

<div class="installation" lang="en">
## Installation of Liba52 {#installation-of-liba52}

Install <span class="application">liba52</span> by running the following commands:

```bash
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --enable-shared         \
            --disable-static        \
            CFLAGS="${CFLAGS:--g -O3} -fPIC" &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
cp liba52/a52_internal.h /usr/include/a52dec &&
install -v -m644 -D doc/liba52.txt \
    /usr/share/doc/liba52-0.8.0/liba52.txt
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`CFLAGS="${CFLAGS:--g -O3} -fPIC"`*: This appends <code class="option">-fPIC</code> to <code class="envar">CFLAGS</code> but use <code class="option">-g -O3</code> (the default of this package) instead of an empty string when <code class="envar">CFLAGS</code> is not set. This is needed to compile <span class="application">liba52</span> without runtime text relocation. Runtime text relocation is prohibited on x86_64 so <code class="option">-fPIC</code> is strictly required. On 32-bit x86 runtime text relocation is allowed but it's insecure and it may waste physical RAM, so <code class="option">-fPIC</code> is still better.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<span class="command"><strong>cp liba52/a52_internal.h ...</strong></span>: Copying this header file into /usr/include/a52dec allows some other programs (such as <span class="application">xine-lib</span>) to compile and link against a system installed <span class="application">liba52</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">a52dec and extract_a52</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liba52.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/a52dec and /usr/share/doc/liba52-0.8.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------
  <a id="a52dec"></a><span class="command"><span class="term"><strong>a52dec</strong></span></span>             plays ATSC A/52 audio streams
  <a id="extract_a52"></a><span class="command"><span class="term"><strong>extract_a52</strong></span></span>   extracts ATSC A/52 audio from an MPEG stream
  <a id="liba52-lib"></a><span class="term"><code class="filename">liba52.so</code></span>         provides functions for the programs dealing with ATSC A/52 streams
  ------------------------------------------------------ --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1")

    intel-vaapi-driver-2.4.1

-   [Next](libao.md "Libao-1.2.0")

    Libao-1.2.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

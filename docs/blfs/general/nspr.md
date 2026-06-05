<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](npth.md "npth-1.8")

    npth-1.8

-   [Next](opentimelineio.md "OpenTimelineIO-0.18.1")

    OpenTimelineIO-0.18.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NSPR-4.39 {#nspr-4.39}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NSPR {#introduction-to-nspr}

<span class="application">Netscape Portable Runtime</span> (NSPR) provides a platform-neutral API for system level and libc like functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.mozilla.org/pub/nspr/releases/v4.39/src/nspr-4.39.tar.gz">https://archive.mozilla.org/pub/nspr/releases/v4.39/src/nspr-4.39.tar.gz</a>

-   Download MD5 sum: a1062dbc7d0fa524f0db6f254b747e45

-   Download size: 992 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of NSPR {#installation-of-nspr}

Install <span class="application">NSPR</span> by running the following commands:

```bash
cd nspr &&

sed -i '/^RELEASE/s|^|#|' pr/src/misc/Makefile.in &&
sed -i 's|$(LIBRARY) ||'  config/rules.mk         &&

./configure --prefix=/usr   \
            --with-mozilla  \
            --with-pthreads \
            $([ $(uname -m) = x86_64 ] && echo --enable-64bit) &&
make
```

The test suite is designed for testing changes to nss or nspr and is not particularly useful for checking a released version (e.g. it needs to be run on a non-optimized build with both nss and nspr directories existing alongside each other). For further details, see the Editor Notes for nss at <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/nss">https://wiki.linuxfromscratch.org/blfs/wiki/nss</a>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -ri '/\^RELEASE/s/\^/#/' pr/src/misc/Makefile.in</strong></span>: This sed disables installing two unneeded scripts.

<span class="command"><strong>sed -i 's#\$(LIBRARY) ##' config/rules.mk</strong></span>: This sed disables installing the static libraries.

*`--with-mozilla`*: This parameter adds Mozilla support to the libraries (required if you want to build any other Mozilla products and link them to these libraries).

*`--with-pthreads`*: This parameter forces use of the system pthread library.

*`--enable-64bit`*: The --enable-64bit parameter is <span class="emphasis"><em>required</em></span> on an x86_64 system to prevent <span class="command"><strong>configure</strong></span> failing with a claim that this is a system without pthread support. The \[ \$(uname -m) = x86_64 \] test ensures it has no effect on a 32 bit system.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">nspr-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnspr4.so, libplc4.so, and libplds4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/nspr</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="nspr-config"></a><span class="command"><span class="term"><strong>nspr-config</strong></span></span>   provides compiler and linker options to other packages that use <span class="application">NSPR</span>
  <a id="libnspr4"></a><span class="term"><code class="filename">libnspr4.so</code></span>         contains functions that provide platform independence for non-GUI operating system facilities such as threads, thread synchronization, normal file and network I/O, interval timing and calendar time, basic memory management and shared library linking
  <a id="libplc4"></a><span class="term"><code class="filename">libplc4.so</code></span>           contains functions that implement many of the features offered by libnspr4
  <a id="libplds4"></a><span class="term"><code class="filename">libplds4.so</code></span>         contains functions that provide data structures
  ------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](npth.md "npth-1.8")

    npth-1.8

-   [Next](opentimelineio.md "OpenTimelineIO-0.18.1")

    OpenTimelineIO-0.18.1

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

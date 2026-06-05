<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7lib.md "Xorg Libraries")

    Xorg Libraries

-   [Next](xcb-util.md "xcb-util-0.4.1")

    xcb-util-0.4.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxcvt-0.1.3 {#libxcvt-0.1.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxcvt {#introduction-to-libxcvt}

<span class="application">libxcvt</span> is a library providing a standalone version of the X server implementation of the VESA CVT standard timing modelines generator. It is meant to be a direct replacement to the version formerly provided by the Xorg server.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/lib/libxcvt-0.1.3.tar.xz">https://www.x.org/pub/individual/lib/libxcvt-0.1.3.tar.xz</a>

-   Download MD5 sum: 7fb9c51d33a680f724f34da41768b1d0

-   Download size: 12 KB

-   Estimated disk space required: 440 KB

-   Estimated build time: less than 0.1 SBU
</div>

### libxcvt Dependencies

#### Required

<a class="xref" href="xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a> (should be set for the following instructions to work)
</div>

<div class="installation" lang="en">
## Installation of libxcvt {#installation-of-libxcvt}

Install <span class="application">libxcvt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">cvt</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxcvt.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$XORG_PREFIX/include/libxcvt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------
  <a id="cvt"></a><span class="command"><span class="term"><strong>cvt</strong></span></span>               calculates VESA Coordinated Video Timing (CVT) modelines for use with X
  <a id="libxcvt-lib"></a><span class="term"><code class="filename">libxcvt.so</code></span>   contains functions for calculating VESA CVT
  -------------------------------------------------- -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](x7lib.md "Xorg Libraries")

    Xorg Libraries

-   [Next](xcb-util.md "xcb-util-0.4.1")

    xcb-util-0.4.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libxcvt.md "libxcvt-0.1.3")

    libxcvt-0.1.3

-   [Next](xcb-utilities.md "XCB Utilities")

    XCB Utilities

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xcb-util-0.4.1 {#xcb-util-0.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xcb-util {#introduction-to-xcb-util}

The <span class="application">xcb-util</span> package provides additional extensions to the <span class="application">XCB</span> library, many that were previously found in <span class="application">Xlib</span>, but are not part of core X protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz">https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz</a>

-   Download MD5 sum: 34d749eab0fd0ffd519ac64798d79847

-   Download size: 261 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xcb-util Dependencies

#### Required

<a class="xref" href="libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of xcb-util {#installation-of-xcb-util}

Install <span class="application">xcb-util</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxcb-util.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------
  <a id="libxcb-util"></a><span class="term"><code class="filename">libxcb-util.so</code></span>   Provides utility functions for other XCB utilities
  ------------------------------------------------------ ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxcvt.md "libxcvt-0.1.3")

    libxcvt-0.1.3

-   [Next](xcb-utilities.md "XCB Utilities")

    XCB Utilities

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

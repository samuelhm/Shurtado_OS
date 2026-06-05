<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorgproto.md "xorgproto-2025.1")

    xorgproto-2025.1

-   [Next](libXdmcp.md "libXdmcp-1.1.5")

    libXdmcp-1.1.5

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libXau-1.0.12 {#libxau-1.0.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libXau {#introduction-to-libxau}

The <span class="application">libXau</span> package contains a library implementing the X11 Authorization Protocol. This is useful for restricting client access to the display.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/lib/libXau-1.0.12.tar.xz">https://www.x.org/pub/individual/lib/libXau-1.0.12.tar.xz</a>

-   Download MD5 sum: 4c9f81acf00b62e5de56a912691bd737

-   Download size: 276 KB

-   Estimated disk space required: 2.9 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
</div>

### libXau Dependencies

#### Required

<a class="xref" href="xorgproto.md" title="xorgproto-2025.1">xorgproto-2025.1</a>
</div>

<div class="installation" lang="en">
## Installation of libXau {#installation-of-libxau}

Install <span class="application">libXau</span> by running the following commands:

```bash
./configure $XORG_CONFIG &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libXau.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- -------------------------------------------------
  <a id="libXau-x7"></a><span class="term"><code class="filename">libXau.so</code></span>   is the library of X authority database routines
  ----------------------------------------------- -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xorgproto.md "xorgproto-2025.1")

    xorgproto-2025.1

-   [Next](libXdmcp.md "libXdmcp-1.1.5")

    libXdmcp-1.1.5

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xorg7.md "Introduction to Xorg-7")

    Introduction to Xorg-7

-   [Next](xorgproto.md "xorgproto-2025.1")

    xorgproto-2025.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# util-macros-1.20.2 {#util-macros-1.20.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to util-macros {#introduction-to-util-macros}

The <span class="application">util-macros</span> package contains the <span class="application">m4</span> macros used by all of the <span class="application">Xorg</span> packages.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/util/util-macros-1.20.2.tar.xz">https://www.x.org/pub/individual/util/util-macros-1.20.2.tar.xz</a>

-   Download MD5 sum: 5f683a1966834b0a6ae07b3680bcb863

-   Download size: 84 KB

-   Estimated disk space required: 524 KB

-   Estimated build time: less than 0.1 SBU
</div>

### util-macros Dependencies

#### Required

<a class="xref" href="xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a> (should be set for the following instructions to work)
</div>

<div class="installation" lang="en">
## Installation of util-macros {#installation-of-util-macros}

Install <span class="application">util-macros</span> by running the following commands:

```bash
./configure $XORG_CONFIG
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
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/share/pkgconfig and <code class="envar">$XORG_PREFIX</code>/share/util-macros</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xorg7.md "Introduction to Xorg-7")

    Introduction to Xorg-7

-   [Next](xorgproto.md "xorgproto-2025.1")

    xorgproto-2025.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

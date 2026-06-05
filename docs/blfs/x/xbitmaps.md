<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](mesa.md "Mesa-26.0.7")

    Mesa-26.0.7

-   [Next](x7app.md "Xorg Applications")

    Xorg Applications

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xbitmaps-1.1.4 {#xbitmaps-1.1.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xbitmaps {#introduction-to-xbitmaps}

The <span class="application">xbitmaps</span> package contains bitmap images used by multiple applications built in Xorg chapter.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/data/xbitmaps-1.1.4.tar.xz">https://www.x.org/pub/individual/data/xbitmaps-1.1.4.tar.xz</a>

-   Download MD5 sum: 793992635c45250028eaec226af416fc

-   Download size: 112 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xbitmaps Dependencies

#### Required

<a class="xref" href="util-macros.md" title="util-macros-1.20.2">util-macros-1.20.2</a>
</div>

<div class="installation" lang="en">
## Installation of xbitmaps {#installation-of-xbitmaps}

Install <span class="application">xbitmaps</span> by running the following commands:

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
**Installed Directory:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/include/X11/bitmaps</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mesa.md "Mesa-26.0.7")

    Mesa-26.0.7

-   [Next](x7app.md "Xorg Applications")

    Xorg Applications

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

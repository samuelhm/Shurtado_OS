<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libwebp.md "libwebp-1.6.0")

    libwebp-1.6.0

-   [Next](newt.md "newt-0.52.25")

    newt-0.52.25

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mypaint-brushes-2.0.2 {#mypaint-brushes-2.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to mypaint-brushes {#introduction-to-mypaint-brushes}

The <span class="application">mypaint-brushes</span> package contains brushes used by packages which use libmypaint.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mypaint/mypaint-brushes/releases/download/v2.0.2/mypaint-brushes-2.0.2.tar.xz">https://github.com/mypaint/mypaint-brushes/releases/download/v2.0.2/mypaint-brushes-2.0.2.tar.xz</a>

-   Download MD5 sum: ce965cd5d75947b7beca5ed3ee4521d2

-   Download size: 1.5 MB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### mypaint-brushes Dependencies

#### Required at runtime

<a class="xref" href="libmypaint.md" title="libmypaint-1.6.1">libmypaint-1.6.1</a>
</div>

<div class="installation" lang="en">
## Installation of mypaint-brushes {#installation-of-mypaint-brushes}

Install <span class="application">mypaint-brushes</span> by running the following commands:

```bash
./configure --prefix=/usr &&
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
**Installed Programs:** <span class="segbody">None.</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None.</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/mypaint-data.</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libwebp.md "libwebp-1.6.0")

    libwebp-1.6.0

-   [Next](newt.md "newt-0.52.25")

    newt-0.52.25

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

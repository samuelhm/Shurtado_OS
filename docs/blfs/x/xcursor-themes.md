<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](luit.md "luit-20250912")

    luit-20250912

-   [Next](x7font.md "Xorg Fonts")

    Xorg Fonts

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xcursor-themes-1.0.7 {#xcursor-themes-1.0.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xcursor-themes {#introduction-to-xcursor-themes}

The <span class="application">xcursor-themes</span> package contains the redglass and whiteglass animated cursor themes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/data/xcursor-themes-1.0.7.tar.xz">https://www.x.org/pub/individual/data/xcursor-themes-1.0.7.tar.xz</a>

-   Download MD5 sum: 070993be1f010b09447ea24bab2c9846

-   Download size: 1.4 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xcursor-themes Dependencies

#### Required

<a class="xref" href="x7app.md" title="Xorg Applications">Xorg Applications</a>
</div>

<div class="installation" lang="en">
## Installation of xcursor-themes {#installation-of-xcursor-themes}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

We explicitly install the cursor themes in /usr instead of <code class="envar">$XORG_PREFIX</code> so non-Xorg desktop environments can find them.
</div>

Install <span class="application">xcursor-themes</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/icons/handhelds, /usr/share/icons/redglass, and /usr/share/icons/whiteglass</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](luit.md "luit-20250912")

    luit-20250912

-   [Next](x7font.md "Xorg Fonts")

    Xorg Fonts

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7app.md "Xorg Applications")

    Xorg Applications

-   [Next](xcursor-themes.md "xcursor-themes-1.0.7")

    xcursor-themes-1.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# luit-20250912 {#luit-20250912}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to luit {#introduction-to-luit}

The <span class="application">luit</span> package is a filter that can be run between an arbitrary application and a UTF-8 terminal emulator. It will convert application output from the locale’s encoding into UTF‐8, and convert terminal input from UTF‐8 into the locale’s encoding.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://invisible-mirror.net/archives/luit/luit-20250912.tgz">https://invisible-mirror.net/archives/luit/luit-20250912.tgz</a>

-   Download MD5 sum: d03e636d2f919bb21e77aec16a53247d

-   Download size: 212 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### luit Dependencies

#### Required

<a class="xref" href="x7app.md" title="Xorg Applications">Xorg Applications</a>
</div>

<div class="installation" lang="en">
## Installation of luit {#installation-of-luit}

Install <span class="application">luit</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">luit</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](x7app.md "Xorg Applications")

    Xorg Applications

-   [Next](xcursor-themes.md "xcursor-themes-1.0.7")

    xcursor-themes-1.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

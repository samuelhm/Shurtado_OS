<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xterm.md "xterm-410")

    xterm-410

-   [Next](xinit.md "xinit-1.4.4")

    xinit-1.4.4

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xclock-1.1.1 {#xclock-1.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xclock {#introduction-to-xclock}

The <span class="application">xclock</span> package contains a simple clock application which is used in the default xinit configuration.

This package is provided for testing the completed Xorg installation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/app/xclock-1.1.1.tar.xz">https://www.x.org/pub/individual/app/xclock-1.1.1.tar.xz</a>

-   Download MD5 sum: 1273e3f4c85f1801be11a5247c382d07

-   Download size: 156 KB

-   Estimated disk space required: 1.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xclock Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>
</div>

<div class="installation" lang="en">
## Installation of xclock {#installation-of-xclock}

Install <span class="application">xclock</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">xclock</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------
  <a id="xclock-bin"></a><span class="command"><span class="term"><strong>xclock</strong></span></span>   is an analog/digital clock for X
  ------------------------------------------------ ----------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xterm.md "xterm-410")

    xterm-410

-   [Next](xinit.md "xinit-1.4.4")

    xinit-1.4.4

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

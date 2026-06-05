<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7driver.md "Xorg Input Drivers")

    Xorg Input Drivers

-   [Next](xterm.md "xterm-410")

    xterm-410

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# twm-1.0.13.1 {#twm-1.0.13.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to twm {#introduction-to-twm}

The <span class="application">twm</span> package contains a very minimal window manager.

This package is provided for testing the completed Xorg installation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/app/twm-1.0.13.1.tar.xz">https://www.x.org/pub/individual/app/twm-1.0.13.1.tar.xz</a>

-   Download MD5 sum: 2a337b776c904eab5b874eddc0124d4f

-   Download size: 268 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### twm Dependencies

#### Required

<a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>
</div>

<div class="installation" lang="en">
## Installation of twm {#installation-of-twm}

Install <span class="application">twm</span> by running the following commands:

```bash
sed -i -e '/^rcdir =/s,^\(rcdir = \).*,\1/etc/X11/app-defaults,' src/Makefile.in &&
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i -e '/\^rcdir =/s...</strong></span>: This command ensures the <span class="application">twm</span> configuration file gets installed in the proper location.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">twm</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/etc/X11/app-defaults</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------ ---------------------------------------------------
  <a id="twm-bin"></a><span class="command"><span class="term"><strong>twm</strong></span></span>   is the Tab Window Manager for the X Window System
  ------------------------------------------ ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](x7driver.md "Xorg Input Drivers")

    Xorg Input Drivers

-   [Next](xterm.md "xterm-410")

    xterm-410

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce4-terminal.md "xfce4-terminal-1.2.0")

    xfce4-terminal-1.2.0

-   [Next](ristretto.md "ristretto-0.14.0")

    ristretto-0.14.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xfburn-0.8.0 {#xfburn-0.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfburn {#introduction-to-xfburn}

<span class="application">Xfburn</span> is a <span class="application">GTK+ 3</span> GUI frontend for <span class="application">Libisoburn</span>. This is useful for creating CDs and DVDs from files on your computer or ISO images downloaded from elsewhere.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/xfburn/0.8/xfburn-0.8.0.tar.bz2">https://archive.xfce.org/src/apps/xfburn/0.8/xfburn-0.8.0.tar.bz2</a>

-   Download MD5 sum: 0ae5e3e94c71857b7cd8555f9f18625f

-   Download size: 1.2 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
</div>

### Xfburn Dependencies

#### Required

<a class="xref" href="../multimedia/libburn.md" title="libburn-1.5.8">libburn-1.5.8</a>, <a class="xref" href="../multimedia/libisofs.md" title="libisofs-1.5.8.pl02">libisofs-1.5.8.pl02</a>, and <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Optional

<a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a> and <a class="xref" href="../multimedia/cdrdao.md" title="Cdrdao-1.2.6">Cdrdao-1.2.6</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of Xfburn {#installation-of-xfburn}

Install <span class="application">Xfburn</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xfburn</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/xfburn</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- -------------------------------------------------------------------
  <a id="xfburn-prog"></a><span class="command"><span class="term"><strong>xfburn</strong></span></span>   is a <span class="application">GTK+ 3</span> application for creating CDs and DVDs
  ------------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-terminal.md "xfce4-terminal-1.2.0")

    xfce4-terminal-1.2.0

-   [Next](ristretto.md "ristretto-0.14.0")

    ristretto-0.14.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4util.md "libxfce4util-4.20.1")

    libxfce4util-4.20.1

-   [Next](libxfce4ui.md "libxfce4ui-4.20.2")

    libxfce4ui-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xfconf-4.20.0 {#xfconf-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfconf {#introduction-to-xfconf}

<span class="application">Xfconf</span> is the configuration storage system for <span class="application">Xfce</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/xfconf/4.20/xfconf-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/xfconf/4.20/xfconf-4.20.0.tar.bz2</a>

-   Download MD5 sum: ca596ff0a9be7fa655bb09cb05458644

-   Download size: 748 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Xfconf Dependencies

#### Required

<a class="xref" href="libxfce4util.md" title="libxfce4util-4.20.1">libxfce4util-4.20.1</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of Xfconf {#installation-of-xfconf}

Install <span class="application">Xfconf</span> by running the following commands:

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
**Installed Program:** <span class="segbody">xfconf-query</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxfconf-0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xfce4/xfconf-0, /usr/lib/xfce4/xfconf, and /usr/share/gtk-doc/html/xfconf</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------
  <a id="xfconf-query"></a><span class="command"><span class="term"><strong>xfconf-query</strong></span></span>   is a commandline utility to view or change any setting stored in <span class="application">Xfconf</span>
  <a id="libxfconf"></a><span class="term"><code class="filename">libxfconf-0.so</code></span>       contains basic functions for <span class="application">Xfce</span> configuration
  -------------------------------------------------------- -----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxfce4util.md "libxfce4util-4.20.1")

    libxfce4util-4.20.1

-   [Next](libxfce4ui.md "libxfce4ui-4.20.2")

    libxfce4ui-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

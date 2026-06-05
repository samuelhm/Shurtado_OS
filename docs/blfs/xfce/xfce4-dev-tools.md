<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libwnck.md "libwnck-43.3")

    libwnck-43.3

-   [Next](libxfce4windowing.md "libxfce4windowing-4.20.6")

    libxfce4windowing-4.20.6

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-dev-tools-4.20.0 {#xfce4-dev-tools-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Xfce4 Development Tools {#introduction-to-the-xfce4-development-tools}

The <span class="application">Xfce4 Development Tools</span> are a collection of tools and macros for building some Xfce applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://archive.xfce.org/src/xfce/xfce4-dev-tools/4.20/xfce4-dev-tools-4.20.0.tar.bz2">http://archive.xfce.org/src/xfce/xfce4-dev-tools/4.20/xfce4-dev-tools-4.20.0.tar.bz2</a>

-   Download MD5 sum: bea58046e67b4274c022fcff893fa350

-   Download size: 372 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### The Xfce4 Development Tools Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>
</div>

<div class="installation" lang="en">
## Installation of the Xfce4 Development Tools {#installation-of-the-xfce4-development-tools}

Install the <span class="application">Xfce4 Development Tools</span> by running the following commands:

```bash
./configure --prefix=/usr &&
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
**Installed Program:** <span class="segbody">xdt-autogen and xdt-csource</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libwnck.md "libwnck-43.3")

    libwnck-43.3

-   [Next](libxfce4windowing.md "libxfce4windowing-4.20.6")

    libxfce4windowing-4.20.6

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

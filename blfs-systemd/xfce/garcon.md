<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](exo.md "Exo-4.20.0")

    Exo-4.20.0

-   [Next](libwnck.md "libwnck-43.3")

    libwnck-43.3

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Garcon-4.20.0 {#garcon-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Garcon {#introduction-to-garcon}

The <span class="application">Garcon</span> package contains a freedesktop.org compliant menu implementation based on <span class="application">GLib</span> and <span class="application">GIO</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/garcon/4.20/garcon-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/garcon/4.20/garcon-4.20.0.tar.bz2</a>

-   Download MD5 sum: fe17e9cb15a62013e0086183a446e89e

-   Download size: 648 KB

-   Estimated disk space required: 8.6 MB

-   Estimated build time: 0.1 SBU
</div>

### Garcon Dependencies

#### Required

<a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Garcon {#installation-of-garcon}

Install <span class="application">Garcon</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
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
**Installed Library:** <span class="segbody">libgarcon-1.so and libgarcon-gtk3-1.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/garcon-1, /usr/include/garcon-gtk3-1, and /usr/share/gtk-doc/html/garcon</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
  <a id="libgarcon-1"></a><span class="term"><code class="filename">libgarcon-1.so</code></span>   contains functions that provide a freedesktop.org compliant menu implementation based on <span class="application">GLib</span> and <span class="application">GIO</span>
  ------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](exo.md "Exo-4.20.0")

    Exo-4.20.0

-   [Next](libwnck.md "libwnck-43.3")

    libwnck-43.3

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

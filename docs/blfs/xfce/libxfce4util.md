<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce-core.md "Xfce Desktop")

    Xfce Desktop

-   [Next](xfconf.md "Xfconf-4.20.0")

    Xfconf-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxfce4util-4.20.1 {#libxfce4util-4.20.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxfce4util {#introduction-to-libxfce4util}

The <span class="application">libxfce4util</span> package is a basic utility library for the <span class="application">Xfce</span> desktop environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/libxfce4util/4.20/libxfce4util-4.20.1.tar.bz2">https://archive.xfce.org/src/xfce/libxfce4util/4.20/libxfce4util-4.20.1.tar.bz2</a>

-   Download MD5 sum: 8e30b7735333f74d80c379e15d9da145

-   Download size: 624 KB

-   Estimated disk space required: 6.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libxfce4util Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libxfce4util {#installation-of-libxfce4util}

Install <span class="application">libxfce4util</span> by running the following commands:

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
**Installed Program:** <span class="segbody">xfce4-kiosk-query</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxfce4util.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xfce4 and /usr/share/gtk-doc/html/libxfce4util</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfce4-kiosk-query"></a><span class="command"><span class="term"><strong>xfce4-kiosk-query</strong></span></span>   Queries the given capabilities of \<module\> for the current user and reports whether the user has the capabilities or not. This tool is mainly meant for system administrators to test their Kiosk setup
  <a id="libxfce4util-lib"></a><span class="term"><code class="filename">libxfce4util.so</code></span>         contains basic utility functions for the <span class="application">Xfce</span> desktop environment
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce-core.md "Xfce Desktop")

    Xfce Desktop

-   [Next](xfconf.md "Xfconf-4.20.0")

    Xfconf-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

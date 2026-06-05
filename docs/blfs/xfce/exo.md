<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](libxfce4ui.md "libxfce4ui-4.20.2")

    libxfce4ui-4.20.2

-   [Next](garcon.md "Garcon-4.20.0")

    Garcon-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Exo-4.20.0 {#exo-4.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Exo {#introduction-to-exo}

<span class="application">Exo</span> is a support library used in the <span class="application">Xfce</span> desktop. It also has some helper applications that are used throughout <span class="application">Xfce</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/exo/4.20/exo-4.20.0.tar.bz2">https://archive.xfce.org/src/xfce/exo/4.20/exo-4.20.0.tar.bz2</a>

-   Download MD5 sum: f059ec3d8686d4b322c42d19ebec0366

-   Download size: 1.1 MB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Exo Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>, and <a class="xref" href="libxfce4util.md" title="libxfce4util-4.20.1">libxfce4util-4.20.1</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Exo {#installation-of-exo}

Install <span class="application">Exo</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">exo-desktop-item-edit and exo-open</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libexo-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/exo-2 and /usr/share/gtk-doc/html/exo-2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="exo-desktop-item-edit"></a><span class="command"><span class="term"><strong>exo-desktop-item-edit</strong></span></span>   is a command line utility to create or edit icons on the desktop
  <a id="exo-open"></a><span class="command"><span class="term"><strong>exo-open</strong></span></span>                             is a command line frontend to the <span class="application">Xfce</span> Preferred Applications framework. It can either be used to open a list of urls with the default URL handler or launch the preferred application for a certain category
  <a id="libexo-2"></a><span class="term"><code class="filename">libexo-2.so</code></span>                             contains additional widgets, a framework for editable toolbars, light-weight session management support and functions to automatically synchronise object properties (based on GObject Binding Properties)
  -------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxfce4ui.md "libxfce4ui-4.20.2")

    libxfce4ui-4.20.2

-   [Next](garcon.md "Garcon-4.20.0")

    Garcon-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

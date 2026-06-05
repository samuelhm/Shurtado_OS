<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libfm-extra.md "libfm-extra-1.3.2")

    libfm-extra-1.3.2

-   [Next](libfm-qt.md "libfm-qt-2.4.0")

    libfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# menu-cache-1.1.1 {#menu-cache-1.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Menu Cache {#introduction-to-menu-cache}

The <span class="application">Menu Cache</span> package contains a library for creating and utilizing caches to speed up the manipulation for freedesktop.org defined application menus.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxde/menu-cache/archive/1.1.1/menu-cache-1.1.1.tar.gz">https://github.com/lxde/menu-cache/archive/1.1.1/menu-cache-1.1.1.tar.gz</a>

-   Download MD5 sum: a15e0de38188622a6b9e63433a6d616f

-   Download size: 68 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Menu Cache Dependencies

#### Required

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="libfm-extra.md" title="libfm-extra-1.3.2">libfm-extra-1.3.2</a>

#### Optional

<a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a>
</div>

<div class="installation" lang="en">
## Installation of Menu Cache {#installation-of-menu-cache}

```bash
sh autogen.sh                              &&
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

<code class="option">--enable-gtk-doc</code>: Use this option if <span class="application">GTK-Doc</span> is installed and you wish to build and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libmenu-cache.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,libexec,share/gtk-doc/html}/menu-cache</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------
  <a id="libmenu-cache"></a><span class="term"><code class="filename">libmenu-cache.so</code></span>   contains the <span class="application">menu-cache</span> API functions
  ---------------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libfm-extra.md "libfm-extra-1.3.2")

    libfm-extra-1.3.2

-   [Next](libfm-qt.md "libfm-qt-2.4.0")

    libfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

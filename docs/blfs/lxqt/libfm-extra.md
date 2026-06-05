<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](qtxdg-tools.md "qtxdg-tools-4.4.0")

    qtxdg-tools-4.4.0

-   [Next](menu-cache.md "menu-cache-1.1.1")

    menu-cache-1.1.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libfm-extra-1.3.2 {#libfm-extra-1.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libfm-extra {#introduction-to-libfm-extra}

The <span class="application">libfm-extra</span> package contains a library and other files required by the <span class="command"><strong>menu-cache-gen</strong></span> program in /usr/bin/libexec installed by <a class="xref" href="menu-cache.md" title="menu-cache-1.1.1">menu-cache-1.1.1</a>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/pcmanfm/libfm-1.3.2.tar.xz">https://downloads.sourceforge.net/pcmanfm/libfm-1.3.2.tar.xz</a>

-   Download MD5 sum: c87a0ff41ae77825079b2f785ec0741e

-   Download size: 924 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libfm-extra Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="../general/intltool.md" title="Intltool-0.51.0">Intltool-0.51.0</a>
</div>

<div class="installation" lang="en">
## Installation of libfm-extra {#installation-of-libfm-extra}

Install <span class="application">libfm-extra</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --with-extra-only \
            --with-gtk=no     \
            --disable-static  &&
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

*`--with-extra-only`*: This switch disables all components except for the libfm-extra library.

*`--with-gtk=no`*: This switch disables support for <span class="application">GTK+</span> because it is not necessary for this package.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfm-extra.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libfm (symlink) and /usr/include/libfm-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------
  <a id="libfm-extra-lib"></a><span class="term"><code class="filename">libfm-extra.so</code></span>   contains the <span class="application">libfm-extra</span> API functions
  ---------------------------------------------------------- --------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qtxdg-tools.md "qtxdg-tools-4.4.0")

    qtxdg-tools-4.4.0

-   [Next](menu-cache.md "menu-cache-1.1.1")

    menu-cache-1.1.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

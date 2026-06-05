<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0")

    xfce4-dev-tools-4.20.0

-   [Next](xfce4-panel.md "xfce4-panel-4.20.7")

    xfce4-panel-4.20.7

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxfce4windowing-4.20.6 {#libxfce4windowing-4.20.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxfce4windowing {#introduction-to-libxfce4windowing}

The <span class="application">libxfce4windowing</span> package contains a windowing concept abstraction library for X11 and Wayland.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/xfce/libxfce4windowing/4.20/libxfce4windowing-4.20.6.tar.bz2">https://archive.xfce.org/src/xfce/libxfce4windowing/4.20/libxfce4windowing-4.20.6.tar.bz2</a>

-   Download MD5 sum: ce85b88e82157570fb65f5a8352ae813

-   Download size: 584 KB

-   Estimated disk space required: 16 MB

-   Estimated build time: 0.1 SBU
</div>

### libxfce4windowing Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/libdisplay-info.md" title="libdisplay-info-0.3.0">libdisplay-info-0.3.0</a>, <a class="xref" href="libwnck.md" title="libwnck-43.3">libwnck-43.3</a> and <a class="xref" href="xfce4-dev-tools.md" title="xfce4-dev-tools-4.20.0">xfce4-dev-tools-4.20.0</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libxfce4windowing {#installation-of-libxfce4windowing}

Install <span class="application">libxfce4windowing</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-x11      \
            --disable-debug   &&
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

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxfce4windowingui-0 and libxfce4windowing-0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xfce4/libxfce4windowing, /usr/include/xfce4/libxfce4windowingui, /usr/share/gtk-doc/html/libxfce4windowing, and /usr/share/gtk-doc/html/libxfce4windowingui</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0")

    xfce4-dev-tools-4.20.0

-   [Next](xfce4-panel.md "xfce4-panel-4.20.7")

    xfce4-panel-4.20.7

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

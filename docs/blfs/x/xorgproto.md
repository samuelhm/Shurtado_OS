<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](util-macros.md "util-macros-1.20.2")

    util-macros-1.20.2

-   [Next](libXau.md "libXau-1.0.12")

    libXau-1.0.12

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xorgproto-2025.1 {#xorgproto-2025.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xorgproto {#introduction-to-xorgproto}

The <span class="application">xorgproto</span> package provides the header files required to build the X Window system, and to allow other applications to build against the installed X Window system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2025.1.tar.xz">https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2025.1.tar.xz</a>

-   Download MD5 sum: 15534fa6fb13a6a70afe7561c1424f3c

-   Download size: 752 KB

-   Estimated disk space required: 8.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xorgproto Dependencies

#### Required

<a class="xref" href="util-macros.md" title="util-macros-1.20.2">util-macros-1.20.2</a>

#### Optional

<a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> and <a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> (to build additional documentation)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There is a reciprocal dependency with <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>. If you wish to build the documentation, you'll need to re-install the Protocol Headers after the installation is complete and <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> has been installed.
</div>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/Xorg7ProtocolHeaders">https://wiki.linuxfromscratch.org/blfs/wiki/Xorg7ProtocolHeaders</a>
</div>

<div class="installation" lang="en">
## Installation of xorgproto {#installation-of-xorgproto}

Install <span class="application">xorgproto</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
mv -v $XORG_PREFIX/share/doc/xorgproto{,-2025.1}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D legacy=true</code>: Installs legacy headers needed by old programs (such as <a class="ulink" href="https://lesstif.sourceforge.net/">LessTif</a>).
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/include/GL, <code class="envar">$XORG_PREFIX</code>/include/X11, and <code class="envar">$XORG_PREFIX</code>/share/doc/xorgproto-2025.1</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](util-macros.md "util-macros-1.20.2")

    util-macros-1.20.2

-   [Next](libXau.md "libXau-1.0.12")

    libXau-1.0.12

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

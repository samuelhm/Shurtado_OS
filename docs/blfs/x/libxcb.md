<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-proto.md "xcb-proto-1.17.0")

    xcb-proto-1.17.0

-   [Next](x7lib.md "Xorg Libraries")

    Xorg Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxcb-1.17.0 {#libxcb-1.17.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxcb {#introduction-to-libxcb}

The <span class="application">libxcb</span> package provides an interface to the X Window System protocol, which replaces the current Xlib interface. Xlib can also use XCB as a transport layer, allowing software to make requests and receive responses with both.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz">https://xorg.freedesktop.org/archive/individual/lib/libxcb-1.17.0.tar.xz</a>

-   Download MD5 sum: 96565523e9f9b701fcb35d31f1d4086e

-   Download size: 448 KB

-   Estimated disk space required: 30 MB (with tests, add 62 MB for doxygen docs)

-   Estimated build time: 0.2 SBU (with tests, add 1.4 SBU for doxygen docs)
</div>

### libxcb Dependencies

#### Required

<a class="xref" href="libXau.md" title="libXau-1.0.12">libXau-1.0.12</a> and <a class="xref" href="xcb-proto.md" title="xcb-proto-1.17.0">xcb-proto-1.17.0</a>

#### Recommended

<a class="xref" href="libXdmcp.md" title="libXdmcp-1.1.5">libXdmcp-1.1.5</a> (required for <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>)

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to generate API documentation) and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
## Installation of libxcb {#installation-of-libxcb}

Install <span class="application">libxcb</span> by running the following commands:

```bash
./configure $XORG_CONFIG      \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.17.0 &&
LC_ALL=en_US.UTF-8 make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If the package was built as a non-<code class="systemitem">root</code> user, the installed documentation is now owned by this user. As the <code class="systemitem">root</code> user, fix the ownership:

```bash
chown -Rv root:root $XORG_PREFIX/share/doc/libxcb-1.17.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="envar">LC_ALL=en_US.UTF-8</code>: Some Python 3 script in the building system of this package may fail with certain system locale settings. This environment variable forces a locale setting known to work.

*`--without-doxygen`*: Do not use doxygen to generate API documentation (default: auto). Without it, if <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> is installed, the API documentation will be generated and installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxcb.so, libxcb-composite.so, libxcb-damage.so, libxcb-dbe.so, libxcb-dpms.so, libxcb-dri2.so, libxcb-dri3.so, libxcb-glx.so, libxcb-present.so, libxcb-randr.so, libxcb-record.so, libxcb-render.so, libxcb-res.so, libxcb-screensaver.so, libxcb-shape.so, libxcb-shm.so, libxcb-sync.so, libxcb-xf86dri.so, libxcb-xfixes.so, libxcb-xinerama.so, libxcb-xinput.so, libxcb-xkb.so, libxcb-xtest.so, libxcb-xvmc.so, and libxcb-xv.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/include/xcb and <code class="envar">$XORG_PREFIX</code>/share/doc/libxcb-1.17.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------
  <a id="libxcb-lib"></a><span class="term"><code class="filename">libxcb.so</code></span>   is an interface to the X Window System protocol
  ------------------------------------------------ -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xcb-proto.md "xcb-proto-1.17.0")

    xcb-proto-1.17.0

-   [Next](x7lib.md "Xorg Libraries")

    Xorg Libraries

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

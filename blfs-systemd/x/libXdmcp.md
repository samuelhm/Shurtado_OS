<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libXau.md "libXau-1.0.12")

    libXau-1.0.12

-   [Next](xcb-proto.md "xcb-proto-1.17.0")

    xcb-proto-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libXdmcp-1.1.5 {#libxdmcp-1.1.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libXdmcp {#introduction-to-libxdmcp}

The <span class="application">libXdmcp</span> package contains a library implementing the X Display Manager Control Protocol. This is useful for allowing clients to interact with the X Display Manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz">https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz</a>

-   Download MD5 sum: ce0af51de211e4c99a111e64ae1df290

-   Download size: 292 KB

-   Estimated disk space required: 3.0 MB (with test)

-   Estimated build time: less than 0.1 SBU (with test)
</div>

### libXdmcp Dependencies

#### Required

<a class="xref" href="xorgproto.md" title="xorgproto-2025.1">xorgproto-2025.1</a>

#### Optional

<a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, and <a class="ulink" href="https://gitlab.freedesktop.org/xorg/doc/xorg-sgml-doctools">Xorg-SGML-doctools</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of libXdmcp {#installation-of-libxdmcp}

Install <span class="application">libXdmcp</span> by running the following commands:

```bash
./configure $XORG_CONFIG --docdir='${datadir}'/doc/libXdmcp-1.1.5 &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libXdmcp.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/share/doc/libXdmcp-1.1.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ---------------------------------------------------
  <a id="libXdmcp-x7"></a><span class="term"><code class="filename">libXdmcp.so</code></span>   is the X Display Manager Control Protocol library
  --------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libXau.md "libXau-1.0.12")

    libXau-1.0.12

-   [Next](xcb-proto.md "xcb-proto-1.17.0")

    xcb-proto-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

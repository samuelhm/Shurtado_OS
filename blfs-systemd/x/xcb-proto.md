<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](libXdmcp.md "libXdmcp-1.1.5")

    libXdmcp-1.1.5

-   [Next](libxcb.md "libxcb-1.17.0")

    libxcb-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xcb-proto-1.17.0 {#xcb-proto-1.17.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xcb-proto {#introduction-to-xcb-proto}

The <span class="application">xcb-proto</span> package provides the XML-XCB protocol descriptions that <span class="application">libxcb</span> uses to generate the majority of its code and API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz">https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.xz</a>

-   Download MD5 sum: c415553d2ee1a8cea43c3234a079b53f

-   Download size: 152 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xcb-proto Dependencies

#### Recommended

<a class="xref" href="xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a> (needed for the instructions below)

#### Optional

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> (required to run the tests)
</div>

<div class="installation" lang="en">
## Installation of xcb-proto {#installation-of-xcb-proto}

Install <span class="application">xcb-proto</span> by running the following commands:

```bash
PYTHON=python3 ./configure $XORG_CONFIG
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you are upgrading from version 1.15.1 or lower, the old pkgconfig file needs to be removed. Issue, as the <code class="systemitem">root</code> user:

```bash
rm -f $XORG_PREFIX/lib/pkgconfig/xcb-proto.pc
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
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/share/xcb and <code class="envar">$XORG_PREFIX</code>/lib/python3.14/site-packages/xcbgen</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libXdmcp.md "libXdmcp-1.1.5")

    libXdmcp-1.1.5

-   [Next](libxcb.md "libxcb-1.17.0")

    libxcb-1.17.0

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

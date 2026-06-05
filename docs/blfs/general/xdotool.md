<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](which.md "Which-2.25 and Alternatives")

    Which-2.25 and Alternatives

-   [Next](zip.md "Zip-3.0")

    Zip-3.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xdotool-4.20260303.1 {#xdotool-4.20260303.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xdotool {#introduction-to-xdotool}

The <span class="application">xdotool</span> package provides the capabilities to simulate keyboard input and mouse activity, move and resize windows, etc. It does this using X11’s XTEST extension and other Xlib functions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/jordansissel/xdotool/archive/v4.20260303.1/xdotool-4.20260303.1.tar.gz">https://github.com/jordansissel/xdotool/archive/v4.20260303.1/xdotool-4.20260303.1.tar.gz</a>

-   Download MD5 sum: fc6864ebb381f8b50c37e2d46dbd37b1

-   Download size: 116 KB

-   Estimated disk space required: 1.3 MB

-   Estimated build time: less than 0.1 SBU (add 0.5 SBU for tests)
</div>

### xdotool Dependencies

#### Required

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional (required for tests)

<a class="xref" href="../gnome/gnome-session.md" title="gnome-session-50.1">gnome-session-50.1</a>, <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a>, <a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../x/x7app.md" title="Xorg Applications">Xorg Applications</a>, and <a class="xref" href="../x/xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> (for the <span class="command"><strong>Xvfb</strong></span> program),
</div>

<div class="installation" lang="en">
## Installation of xdotool {#installation-of-xdotool}

Install <span class="application">xdotool</span> by running the following commands:

```bash
make WITHOUT_RPATH_FIX=1
```

To run the tests, do:

```bash
cd t
make all-headless
cd ..
```

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr INSTALLMAN=/usr/share/man install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xdotool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxdo.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- ---------------------------------------
  <a id="xdotool-prog"></a><span class="command"><span class="term"><strong>xdotool</strong></span></span>   is a command-line X11 automation tool
  <a id="libxdo"></a><span class="term"><code class="filename">libxdo.so</code></span>          contains X11 automation functions
  --------------------------------------------------- ---------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](which.md "Which-2.25 and Alternatives")

    Which-2.25 and Alternatives

-   [Next](zip.md "Zip-3.0")

    Zip-3.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

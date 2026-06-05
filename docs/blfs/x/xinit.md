<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xclock.md "xclock-1.1.1")

    xclock-1.1.1

-   [Next](xorg-config.md "Xorg-7 Testing and Configuration")

    Xorg-7 Testing and Configuration

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xinit-1.4.4 {#xinit-1.4.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xinit {#introduction-to-xinit}

The <span class="application">xinit</span> package contains a usable script to start the xserver.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/app/xinit-1.4.4.tar.xz">https://www.x.org/pub/individual/app/xinit-1.4.4.tar.xz</a>

-   Download MD5 sum: e7430a710261c9129b1280f26cb159a5

-   Download size: 160 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### xinit Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended (runtime only)

<a class="xref" href="twm.md" title="twm-1.0.13.1">twm-1.0.13.1</a>, <a class="xref" href="xclock.md" title="xclock-1.1.1">xclock-1.1.1</a>, and <a class="xref" href="xterm.md" title="xterm-410">xterm-410</a> (used in the default <code class="filename">xinitrc</code> file)
</div>

<div class="installation" lang="en">
## Installation of xinit {#installation-of-xinit}

Install <span class="application">xinit</span> by running the following commands:

```bash
./configure $XORG_CONFIG --with-xinitdir=/etc/X11/app-defaults &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ldconfig
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xinit and startx</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ------------------------------------
  <a id="startx"></a><span class="command"><span class="term"><strong>startx</strong></span></span>     initializes an X session
  <a id="xinit-bin"></a><span class="command"><span class="term"><strong>xinit</strong></span></span>   is the X Window System initializer
  ---------------------------------------------- ------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xclock.md "xclock-1.1.1")

    xclock-1.1.1

-   [Next](xorg-config.md "Xorg-7 Testing and Configuration")

    Xorg-7 Testing and Configuration

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

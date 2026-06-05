<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7font.md "Xorg Fonts")

    Xorg Fonts

-   [Next](xwayland.md "Xwayland-24.1.12")

    Xwayland-24.1.12

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# XKeyboardConfig-2.47 {#xkeyboardconfig-2.47}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to XKeyboardConfig {#introduction-to-xkeyboardconfig}

The <span class="application">XKeyboardConfig</span> package contains the keyboard configuration database for the X Window System.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.47.tar.xz">https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.47.tar.xz</a>

-   Download MD5 sum: 01e92dfd1af2ac2cc2c808f0811d8f0c

-   Download size: 912 KB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.1 SBU (with tests)
</div>

### XKeyboardConfig Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional (required for tests)

<a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a> with optionally <a class="ulink" href="https://pypi.org/project/pytest-xdist/">xdist</a> (speeds up the tests), and <a class="xref" href="x7app.md" title="Xorg Applications">Xorg Applications</a>
</div>

<div class="installation" lang="en">
## Installation of XKeyboardConfig {#installation-of-xkeyboardconfig}

Install <span class="application">XKeyboardConfig</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

If upgrading from version 2.44 or earlier, the installation will fail if some files are not symbolic links. To fix this, run as the <code class="systemitem">root</code> user:

```bash
if [ -d $XORG_PREFIX/share/X11/xkb ]; then
  rm -rf $XORG_PREFIX/share/X11/xkb
  rm -f  $XORG_PREFIX/share/man/man7/xkeyboard-config.7
  rm -f  $XORG_PREFIX/share/pkgconfig/xkeyboard-config.pc
fi
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
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
**Installed Directory:** <span class="segbody"><code class="envar">$XORG_PREFIX</code>/share/X11/xkb</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](x7font.md "Xorg Fonts")

    Xorg Fonts

-   [Next](xwayland.md "Xwayland-24.1.12")

    Xwayland-24.1.12

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](parole.md "Parole-4.20.0")

    Parole-4.20.0

-   [Next](xfburn.md "Xfburn-0.8.0")

    Xfburn-0.8.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-terminal-1.2.0 {#xfce4-terminal-1.2.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xfce4 Terminal {#introduction-to-xfce4-terminal}

<span class="application">Xfce4 Terminal</span> is a <span class="application">GTK+3</span> terminal emulator. This is useful for running commands or programs in the comfort of an Xorg window; you can drag and drop files into the <span class="application">Xfce4 Terminal</span> or copy and paste text with your mouse.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/xfce4-terminal/1.2/xfce4-terminal-1.2.0.tar.xz">https://archive.xfce.org/src/apps/xfce4-terminal/1.2/xfce4-terminal-1.2.0.tar.xz</a>

-   Download MD5 sum: 1662d52f7ffdcfde7c4ef76fd2358947

-   Download size: 444 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: 0.1 SBU
</div>

### Xfce4 Terminal Dependencies

#### Required

<a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a> and <a class="xref" href="../gnome/vte.md" title="VTE-0.84.0">VTE-0.84.0</a>

#### Optional

<a class="ulink" href="https://github.com/wmww/gtk-layer-shell">gtk-layer-shell</a>
</div>

<div class="installation" lang="en">
## Installation of Xfce4 Terminal {#installation-of-xfce4-terminal}

First, work around a problem where functions from a package not in BLFS are used accidentally:

```bash
sed -e '570i #ifdef HAVE_GTK_LAYER_SHELL' \
    -e '574a #endif'                      \
    -i  terminal/terminal-window-dropdown.c
```

Install <span class="application">Xfce4 Terminal</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..      \
      --prefix=/usr \
      --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xfce4-terminal</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/xfce4/terminal</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- -----------------------------------------------
  <a id="xfce4-terminal-prog"></a><span class="command"><span class="term"><strong>xfce4-terminal</strong></span></span>   is a <span class="application">GTK+ 3</span> terminal emulator
  ----------------------------------------------------------------- -----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](parole.md "Parole-4.20.0")

    Parole-4.20.0

-   [Next](xfburn.md "Xfburn-0.8.0")

    Xfburn-0.8.0

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

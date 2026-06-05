<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](twm.md "twm-1.0.13.1")

    twm-1.0.13.1

-   [Next](xclock.md "xclock-1.1.1")

    xclock-1.1.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xterm-410 {#xterm-410}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xterm {#introduction-to-xterm}

<span class="application">xterm</span> is a terminal emulator for the X Window System.

This package is provided for testing the completed Xorg installation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://invisible-mirror.net/archives/xterm/xterm-410.tgz">https://invisible-mirror.net/archives/xterm/xterm-410.tgz</a>

-   Download MD5 sum: 29b43931004f812483db02964865cbc9

-   Download size: 1.6 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU (with parallelism=4)
</div>

### xterm Dependencies

#### Required

<a class="xref" href="luit.md" title="luit-20250912">luit-20250912</a>

#### Required (at runtime)

A monospace TTF or OTF font such as <a class="xref" href="TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>

#### Optional

<a class="xref" href="../postlfs/emacs.md" title="Emacs-30.2">Emacs-30.2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> and <a class="ulink" href="https://www.nongnu.org/man2html/">man2html</a>
</div>

<div class="installation" lang="en">
## Installation of xterm {#installation-of-xterm}

Install <span class="application">xterm</span> by running the following commands:

```bash
sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
printf '\tkbs=\\177,\n' >> terminfo &&

TERMINFO=/usr/share/terminfo \
./configure $XORG_CONFIG     \
            --with-app-defaults=/etc/X11/app-defaults &&

make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

mkdir -pv /usr/share/applications &&
cp -v *.desktop /usr/share/applications/
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i ... termcap</strong></span>, <span class="command"><strong>printf ... \>\> terminfo</strong></span>: These commands modify the terminal description so that the Backspace key is expected to send the character with ASCII code 127. This is done for consistency with the Linux console.

<code class="envar">TERMINFO=/usr/share/terminfo</code>: This ensures that the <span class="command"><strong>xterm</strong></span> terminfo files are installed to the system terminfo database.

*`--with-app-defaults=...`*: Sets the location for the <code class="filename">app-defaults</code> directory.
</div>

<div class="configuration" lang="en">
## Configuring xterm {#configuring-xterm}

There are two ways to configure xterm. You can add the X resource definitions to the user's <code class="filename">~/.Xresources</code> file, or add them to the system-wide <code class="filename">$XORG_PREFIX/share/X11/app-defaults/Xterm</code> file.

In order for xterm to follow the locale settings in the environment, use TrueType fonts, and follow the Linux convention about the code sent by the Backspace key, add the following definitions as the <code class="systemitem">root</code> user:

```bash
cat >> /etc/X11/app-defaults/XTerm << "EOF"
*VT100*locale: true
*VT100*faceName: Monospace
*VT100*faceSize: 10
*backarrowKeyIsErase: true
*ptyInitialErase: true
EOF
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">koi8rxterm, resize, uxterm, and xterm</span>
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

  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
  <a id="koi8rxterm"></a><span class="command"><span class="term"><strong>koi8rxterm</strong></span></span>   is a wrapper script to set up xterm with a KOI8-R locale
  <a id="resize"></a><span class="command"><span class="term"><strong>resize</strong></span></span>           prints a shell command for setting the TERM and TERMCAP environment variables to indicate the current size of xterm window
  <a id="uxterm"></a><span class="command"><span class="term"><strong>uxterm</strong></span></span>           is a wrapper script that modifies the current locale to use UTF-8 and starts xterm with the proper settings
  <a id="xterm-bin"></a><span class="command"><span class="term"><strong>xterm</strong></span></span>         is a terminal emulator for the X Window System
  ---------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](twm.md "twm-1.0.13.1")

    twm-1.0.13.1

-   [Next](xclock.md "xclock-1.1.1")

    xclock-1.1.1

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

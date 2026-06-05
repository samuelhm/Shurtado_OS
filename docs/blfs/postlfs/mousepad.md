<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](kate.md "kate-26.04.1")

    kate-26.04.1

-   [Next](nano.md "Nano-9.0")

    Nano-9.0

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mousepad-0.7.0 {#mousepad-0.7.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Mousepad {#introduction-to-mousepad}

<span class="application">Mousepad</span> is a simple GTK text editor for the <span class="application">Xfce</span> desktop environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/mousepad/0.7/mousepad-0.7.0.tar.xz">https://archive.xfce.org/src/apps/mousepad/0.7/mousepad-0.7.0.tar.xz</a>

-   Download MD5 sum: 96c09736fd02da599ffedf215313328f

-   Download size: 456 KB

-   Estimated disk space required: 9.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Mousepad Dependencies

#### Required

<a class="xref" href="../x/gtksourceview4.md" title="gtksourceview4-4.8.4">gtksourceview4-4.8.4</a> and <a class="xref" href="../xfce/libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>

#### Recommended

<a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a>
</div>

<div class="installation" lang="en">
## Installation of Mousepad {#installation-of-mousepad}

Install <span class="application">Mousepad</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&

ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D gspell-plugin=no</code>: Use this option to disable building the <a class="xref" href="../general/gspell.md" title="gspell-1.14.3">gspell-1.14.3</a> plugin if you have not installed <span class="application">gspell</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">mousepad</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmousepad.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -----------------------------
  <a id="mousepad-prog"></a><span class="command"><span class="term"><strong>mousepad</strong></span></span>   is a simple GTK text editor
  ----------------------------------------------------- -----------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kate.md "kate-26.04.1")

    kate-26.04.1

-   [Next](nano.md "Nano-9.0")

    Nano-9.0

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

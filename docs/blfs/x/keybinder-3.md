<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](kimageannotator.md "kImageAnnotator-0.7.2")

    kImageAnnotator-0.7.2

-   [Next](libadwaita.md "libadwaita-1.9.1")

    libadwaita-1.9.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# keybinder-3.0-0.3.2 {#keybinder-3.0-0.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to keybinder-3.0 {#introduction-to-keybinder-3.0}

The <span class="application">keybinder-3.0</span> package contains a utility library registering global <span class="application">X</span> keyboard shortcuts for <span class="application">GTK+-3</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/kupferlauncher/keybinder/releases/download/keybinder-3.0-v0.3.2/keybinder-3.0-0.3.2.tar.gz">https://github.com/kupferlauncher/keybinder/releases/download/keybinder-3.0-v0.3.2/keybinder-3.0-0.3.2.tar.gz</a>

-   Download MD5 sum: 97260321fda721fce799174ea6ba10cf

-   Download size: 370 KB

-   Estimated disk space required: 2.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### keybinder-3.0 Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of keybinder-3.0 {#installation-of-keybinder-3.0}

Install <span class="application">keybinder-3.0</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libkeybinder-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/keybinder-3.0 and /usr/share/gtk-doc/html/keybinder-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ---------------------------------------------------------------------------
  <a id="keybinder3-lib"></a><span class="term"><code class="filename">libkeybinder-3.0.so</code></span>   is the library that registers global <span class="application">X</span> keyboard shortcuts
  -------------------------------------------------------------- ---------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kimageannotator.md "kImageAnnotator-0.7.2")

    kImageAnnotator-0.7.2

-   [Next](libadwaita.md "libadwaita-1.9.1")

    libadwaita-1.9.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

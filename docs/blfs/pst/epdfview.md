<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](enscript.md "Enscript-1.6.6")

    Enscript-1.6.6

-   [Next](fop.md "fop-2.11")

    fop-2.11

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ePDFView-gtk3-20200814 {#epdfview-gtk3-20200814}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ePDFView-gtk3 {#introduction-to-epdfview-gtk3}

<span class="application">ePDFView-gtk3</span> is a fork of the old <span class="application">ePDFView</span> program. Although the github repository <a class="ulink" href="https://github.com/Flow-It/epdfview_old.git">https://github.com/Flow-It/epdfview_old.git</a> names it as 'old', it is the gtk3 fork. It is a lightweight replacement for <span class="application">Evince</span> as it does not rely upon <span class="application">GNOME</span> libraries and is more capable than <span class="application">MuPDF</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/epdfview-gtk3/epdfview-gtk3-20200814.tar.xz">https://anduin.linuxfromscratch.org/BLFS/epdfview-gtk3/epdfview-gtk3-20200814.tar.xz</a>

-   Download MD5 sum: d222a3dc26c2faf6f862018bb478fb36

-   Download size: 184 KB

-   Estimated disk space required: 3.5 MB

-   Estimated build time: less than 0.1 SBU (using parallelism=4)
</div>

### ePDFView Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>

#### Recommended

<a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a> (to access print queues), <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, and <a class="xref" href="../x/hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a> (both for the icons this installs)

#### Optional

The home page of the project's repository mentions that there are optional dependencies, which are enabled by switches. These are for building the documentation and running the test suite, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="ulink" href="https://freedesktop.org/wiki/Software/cppunit/">Cppunit</a>. Note that <span class="application">doxygen</span> only installs a skeletal page about itself, which contains no package documentation, and the test code does not compile with recent versions of C++.
</div>

<div class="installation" lang="en">
## Installation of ePDFView-gtk3 {#installation-of-epdfview-gtk3}

Install <span class="application">ePDFView-gtk3</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D enable-printing=true \
            ..                      &&
ninja
```

This package does not come with a buildable test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>-D enable-printing=true</strong></span>: builds the code to link to the <span class="application">cups</span> print queue(s). Omit this if you have not installed <span class="application">cups</span>.
</div>

<div class="configuration" lang="en">
## Configuring ePDFView-gtk3 {#configuring-epdfview-gtk3}

ePDFView-gtk3 has several keyboard hotkeys for optional features. Most of them are 'off' by default, including the toolbar, and if it has been closed with the menu disabled, the program can start with all options not being visible until the relevant function keys are pressed.

<div class="itemizedlist">
-   \[F6\] - toggle toolbar

-   \[F7\] - toggle menu

-   \[F8\] - toggle invert-colors

-   \[F9\] - toggle show-index

-   \[F11\] - toggle fullscreen
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">epdfview</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/epdfview</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ---------------------------------------------------------------
  <a id="epdfview-prog"></a><span class="command"><span class="term"><strong>epdfview</strong></span></span>   is a <span class="application">Gtk+-3</span> program for viewing PDF documents
  ----------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](enscript.md "Enscript-1.6.6")

    Enscript-1.6.6

-   [Next](fop.md "fop-2.11")

    fop-2.11

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

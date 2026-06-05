<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 6. Text Editors

-   [Prev](editors.md "Text Editors")

    Text Editors

-   [Next](ed.md "Ed-1.22.5")

    Ed-1.22.5

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Bluefish-2.4.1 {#bluefish-2.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Bluefish {#introduction-to-bluefish}

<span class="application">Bluefish</span> is a <span class="application">GTK+</span> text editor targeted towards programmers and web designers, with many options to write websites, scripts and programming code. <span class="application">Bluefish</span> supports many programming and markup languages, and it focuses on editing dynamic and interactive websites.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.bennewitz.com/bluefish/stable/source/bluefish-2.4.1.tar.bz2">https://www.bennewitz.com/bluefish/stable/source/bluefish-2.4.1.tar.bz2</a>

-   Download MD5 sum: 69375f4002750d6b551713e5bbf67a1d

-   Download size: 4.9 MB

-   Estimated disk space required: 52 MB

-   Estimated build time: 0.3 SBU
</div>

### Bluefish Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for updating the desktop database)

#### Optional

<a class="xref" href="../general/enchant.md" title="enchant-2.8.16">enchant-2.8.16</a> (for spell checking), <a class="xref" href="../gnome/gucharmap.md" title="Gucharmap-17.0.2">Gucharmap-17.0.2</a>, and <a class="ulink" href="https://github.com/relaxng/jing-trang">Jing</a>
</div>

<div class="installation" lang="en">
## Installation of Bluefish {#installation-of-bluefish}

Install <span class="application">Bluefish</span> by running the following commands:

```bash
./configure --prefix=/usr --docdir=/usr/share/doc/bluefish-2.4.1 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/icon-theme.cache</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -t -f --include-image-data /usr/share/icons/hicolor &&
update-desktop-database
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">bluefish</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">several under /usr/lib/bluefish/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/bluefish, /usr/share/bluefish, /usr/share/doc/bluefish-2.4.1, and /usr/share/xml/bluefish</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- ------------------------------------------------------------------
  <a id="bluefish-prog"></a><span class="command"><span class="term"><strong>bluefish</strong></span></span>   is a <span class="application">GTK+</span> text editor for markup and programming
  ----------------------------------------------------- ------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](editors.md "Text Editors")

    Text Editors

-   [Next](ed.md "Ed-1.22.5")

    Ed-1.22.5

-   [Up](editors.md "Chapter 6. Text Editors")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](gtk-doc.md "GTK-Doc-1.36.1")

    GTK-Doc-1.36.1

-   [Next](ibus.md "ibus-1.5.34")

    ibus-1.5.34

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Highlight-4.20 {#highlight-4.20}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Highlight {#introduction-to-highlight}

<span class="application">Highlight</span> is a utility that converts source code to formatted text with syntax highlighting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="http://www.andre-simon.de/zip/highlight-4.20.tar.bz2">http://www.andre-simon.de/zip/highlight-4.20.tar.bz2</a>

-   Download MD5 sum: 72d35e33f50616e45e4b8b5d3204a4bd

-   Download size: 1.5 MB

-   Estimated disk space required: 33 MB (with gui)

-   Estimated build time: 0.2 SBU (Using parallelism=4; with gui)
</div>

### Highlight Dependencies

#### Required

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> and <a class="xref" href="lua.md" title="Lua-5.4.8">Lua-5.4.8</a>

#### Optional

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (to build the GUI front-end)
</div>

<div class="installation" lang="en">
## Installation of Highlight {#installation-of-highlight}

For consistency, do not compress man pages.

```bash
sed -i '/GZIP/s/^/#/' makefile
```

To build <span class="application">Highlight</span> run the following command:

```bash
make
```

To build the <span class="application">qt6</span> GUI front-end, run the following command:

```bash
make doc_dir=/usr/share/doc/highlight-4.20/ gui
```

This package does not come with a test suite.

To install <span class="application">Highlight</span>, run the following command as the <code class="systemitem">root</code> user:

```bash
make doc_dir=/usr/share/doc/highlight-4.20/ install
```

To install the GUI program, run the following command as the <code class="systemitem">root</code> user:

```bash
make install-gui
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`doc_dir=/usr/share/doc/highlight-4.20/`*: installs the highlight documentation into a versioned directory. This parameter is also needed for <span class="command"><strong>make gui</strong></span>, because its value would be hardcoded into the gui executable. Note that the trailing <span class="quote">“<span class="quote">/</span>”</span> is necessary.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">highlight and highlight-gui (optional)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/highlight, /usr/share/doc/highlight-4.20, and /usr/share/highlight</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------
  <a id="highlight-prog"></a><span class="command"><span class="term"><strong>highlight</strong></span></span>      is a universal source code to formatted text converter
  <a id="highlight-gui"></a><span class="command"><span class="term"><strong>highlight-gui</strong></span></span>   is the <span class="application">qt6</span> interface to <span class="command"><strong>highlight</strong></span>.
  ---------------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtk-doc.md "GTK-Doc-1.36.1")

    GTK-Doc-1.36.1

-   [Next](ibus.md "ibus-1.5.34")

    ibus-1.5.34

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

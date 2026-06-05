<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 39. Office Programs

-   [Prev](office.md "Office Programs")

    Office Programs

-   [Next](libreoffice.md "LibreOffice-26.2.2")

    LibreOffice-26.2.2

-   [Up](office.md "Chapter 39. Office Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gnumeric-1.12.61 {#gnumeric-1.12.61}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gnumeric {#introduction-to-gnumeric}

The <span class="application">Gnumeric</span> package contains a spreadsheet program which is useful for mathematical analysis.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnumeric/1.12/gnumeric-1.12.61.tar.xz">https://download.gnome.org/sources/gnumeric/1.12/gnumeric-1.12.61.tar.xz</a>

-   Download MD5 sum: 8c6cbffb41eb2a8ffb97708e21482d7f

-   Download size: 17 MB

-   Estimated disk space required: 254 MB (add 7 MB for tests)

-   Estimated build time: 1.9 SBU (add 2.6 SBU for tests; both using parallelism=4)
</div>

### Gnumeric Dependencies

#### Required

<a class="xref" href="../x/goffice010.md" title="GOffice-0.10.61">GOffice-0.10.61</a> and <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>

#### Recommended Runtime

An icon theme such as <a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="../x/oxygen-icons.md" title="oxygen-icons-6.1.0">oxygen-icons-6.1.0</a>, or <a class="xref" href="../x/gnome-icon-theme.md" title="gnome-icon-theme-3.12.0">gnome-icon-theme-3.12.0</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, and <a class="xref" href="../gnome/yelp.md" title="Yelp-49.0">Yelp-49.0</a> for the built-in help functionality

#### Optional

<a class="xref" href="../gnome/dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a> (to prevent some test failures), <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (for some tests), <a class="ulink" href="https://dblatex.sourceforge.net/">dblatex</a> (for PDF docs), <a class="ulink" href="https://www.gnome-db.org/">libgda</a>, <a class="ulink" href="https://www.mono-project.com/">Mono</a>, <a class="ulink" href="https://pxlib.sourceforge.net/">pxlib</a>, and <a class="ulink" href="https://frodo.looijaard.name/project/psiconv">Psiconv</a>
</div>

<div class="installation" lang="en">
## Installation of Gnumeric {#installation-of-gnumeric}

Install <span class="application">Gnumeric</span> by running the following commands:

```bash
./configure --prefix=/usr  &&
make
```

This package must be installed before the test suite is run.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

To run the tests, issue <span class="command"><strong>make check</strong></span>. Tests should be run from an active X session, and <a class="xref" href="../gnome/dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a> should be installed to prevent some failures. Four tests are known to fail. Additional failures may occur if valgrind is installed.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-pdfdocs</code>: Use this switch if you have installed dblatex and wish to create PDF docs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnumeric (symlink), gnumeric-1.12.61, ssconvert, ssdiff, ssgrep, and ssindex</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libspreadsheet.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libspreadsheet-1.12, /usr/lib/gnumeric, /usr/lib/goffice/0.10/plugins/gnumeric, /usr/share/gnumeric, and /usr/share/help/{C,cs,de,es}/gnumeric</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------
  <a id="gnumeric-prog"></a><span class="command"><span class="term"><strong>gnumeric</strong></span></span>          is a symlink to <span class="command"><strong>gnumeric-1.12.61</strong></span>
  <a id="gnumeric-1"></a><span class="command"><span class="term"><strong>gnumeric-1.12.61</strong></span></span>     is <span class="application">GNOME</span>'s spreadsheet application
  <a id="ssconvert"></a><span class="command"><span class="term"><strong>ssconvert</strong></span></span>             is a command line utility to convert spreadsheet files between various spreadsheet file formats
  <a id="ssdiff"></a><span class="command"><span class="term"><strong>ssdiff</strong></span></span>                   is a command line utility to compare two spreadsheets
  <a id="ssgrep"></a><span class="command"><span class="term"><strong>ssgrep</strong></span></span>                   is a command line utility to search spreadsheets for strings
  <a id="ssindex"></a><span class="command"><span class="term"><strong>ssindex</strong></span></span>                 is a command line utility to generate index data for spreadsheet files
  <a id="libspreadsheet"></a><span class="term"><code class="filename">libspreadsheet.so</code></span>   contains the gnumeric API functions
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](office.md "Office Programs")

    Office Programs

-   [Next](libreoffice.md "LibreOffice-26.2.2")

    LibreOffice-26.2.2

-   [Up](office.md "Chapter 39. Office Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

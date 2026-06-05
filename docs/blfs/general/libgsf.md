<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgpg-error.md "libgpg-error-1.61")

    libgpg-error-1.61

-   [Next](libgudev.md "libgudev-238")

    libgudev-238

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgsf-1.14.58 {#libgsf-1.14.58}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgsf {#introduction-to-libgsf}

The <span class="application">libgsf</span> package contains a library used for providing an extensible input/output abstraction layer for structured file formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.58.tar.xz">https://download.gnome.org/sources/libgsf/1.14/libgsf-1.14.58.tar.xz</a>

-   Download MD5 sum: 60a36d77615596178b857ed7b9bd6838

-   Download size: 704 KB

-   Estimated disk space required: 13 MB

-   Estimated build time: 0.1 SBU
</div>

### libgsf Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Recommended

<a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a> (To build <span class="command"><strong>gsf-office-thumbnailer</strong></span>)

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libgsf {#installation-of-libgsf}

Install <span class="application">libgsf</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gsf, gsf-office-thumbnailer, and gsf-vba-dump</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgsf-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libgsf-1, /usr/share/gtk-doc/html/gsf and /usr/share/thumbnailers</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gsf"></a><span class="command"><span class="term"><strong>gsf</strong></span></span>                                         is a simple archive utility, somewhat similar to <a class="ulink" href="https://man.archlinux.org/man/tar.1">tar(1)</a>
  <a id="gsf-office-thumbnailer"></a><span class="command"><span class="term"><strong>gsf-office-thumbnailer</strong></span></span>   is used internally by <span class="application">GNOME</span> applications such as <span class="application">Nautilus</span> to generate thumbnails of several types of office application files
  <a id="gsf-vba-dump"></a><span class="command"><span class="term"><strong>gsf-vba-dump</strong></span></span>                       is used to extract Visual Basic for Applications macros from files
  <a id="libgsf-1"></a><span class="term"><code class="filename">libgsf-1.so</code></span>                               contains the <span class="application">libgsf</span> API functions
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgpg-error.md "libgpg-error-1.61")

    libgpg-error-1.61

-   [Next](libgudev.md "libgudev-238")

    libgudev-238

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libnotify.md "libnotify-0.8.8")

    libnotify-0.8.8

-   [Next](pango.md "Pango-1.57.1")

    Pango-1.57.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxklavier-5.4 {#libxklavier-5.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxklavier {#introduction-to-libxklavier}

The <span class="application">libxklavier</span> package contains a utility library for <span class="application">X</span> keyboard.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://people.freedesktop.org/~svu/libxklavier-5.4.tar.bz2">https://people.freedesktop.org/\~svu/libxklavier-5.4.tar.bz2</a>

-   Download MD5 sum: 13af74dcb6011ecedf1e3ed122bd31fa

-   Download size: 384 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libxklavier Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended), <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> and <a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>
</div>

<div class="installation" lang="en">
## Installation of libxklavier {#installation-of-libxklavier}

Install <span class="application">libxklavier</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
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

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: This parameter is normally used if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation. It is broken for this package due to the use of a long deprecated gtk-doc program that is no longer available.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libxklavier.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libxklavier and /usr/share/gtk-doc/html/libxklavier</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------
  <a id="libxklavier-lib"></a><span class="term"><code class="filename">libxklavier.so</code></span>   contains XKB utility functions
  ---------------------------------------------------------- --------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libnotify.md "libnotify-0.8.8")

    libnotify-0.8.8

-   [Next](pango.md "Pango-1.57.1")

    Pango-1.57.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

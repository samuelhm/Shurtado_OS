<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](unifdef.md "unifdef-2.12")

    unifdef-2.12

-   [Next](valgrind.md "Valgrind-3.27.1")

    Valgrind-3.27.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Vala-0.56.19 {#vala-0.56.19}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Vala {#introduction-to-vala}

<span class="application">Vala</span> is a new programming language that aims to bring modern programming language features to <span class="application">GNOME</span> developers without imposing any additional runtime requirements and without using a different ABI compared to applications and libraries written in C.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/vala/0.56/vala-0.56.19.tar.xz">https://download.gnome.org/sources/vala/0.56/vala-0.56.19.tar.xz</a>

-   Download MD5 sum: a2dc825de503fad703584cfb0ed50302

-   Download size: 3.8 MB

-   Estimated disk space required: 160 MB (add 16 MB for tests)

-   Estimated build time: 0.4 SBU (add 0.9 SBU for tests; both using parallelism=4)
</div>

### Vala Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for the tests)

#### Recommended

<a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (Required for valadoc)

#### Optional

<a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (Required for the tests), <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (Required for generating the documentation), <a class="ulink" href="https://ftpmirror.gnu.org/gnu/help2man/">help2man</a>, <a class="ulink" href="https://github.com/relaxng/jing-trang">jing</a>, and <a class="ulink" href="https://weasyprint.org/">weasyprint</a>
</div>

<div class="installation" lang="en">
## Installation of Vala {#installation-of-vala}

Install <span class="application">Vala</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--disable-valadoc</code>: This option is required if <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">vala, vala-0.56, valac, valadoc, vala-gen-introspect, and vapigen (symlinks); valac-0.56, valadoc-0.56, vala-gen-introspect-0.56, and vapigen-0.56</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libvala-0.56.so and libvaladoc-0.56.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/vala-0.56, /usr/include/valadoc-0.56, /usr/lib/vala-0.56, /usr/lib/valadoc-0.56, /usr/share/vala, /usr/share/vala-0.56, /usr/share/valadoc-0.56, and /usr/share/devhelp/books/vala-0.56</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  <a id="valac"></a><span class="command"><span class="term"><strong>valac</strong></span></span>                               is a compiler that translates <span class="application">Vala</span> source code into C source and header files
  <a id="valadoc"></a><span class="command"><span class="term"><strong>valadoc</strong></span></span>                           is a documentation generator for generating API documentation from <span class="application">Vala</span> source code based on libvala
  <a id="vala-gen-introspect"></a><span class="command"><span class="term"><strong>vala-gen-introspect</strong></span></span>   generates a GI file for GObject and <span class="application">GLib</span> based packages
  <a id="vapigen"></a><span class="command"><span class="term"><strong>vapigen</strong></span></span>                           is a utility which generates <span class="application">Vala</span> API (VAPI) files from GI files
  <a id="libvala"></a><span class="term"><code class="filename">libvala-0.56.so</code></span>                      contains the <span class="application">Vala</span> API functions
  ---------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](unifdef.md "unifdef-2.12")

    unifdef-2.12

-   [Next](valgrind.md "Valgrind-3.27.1")

    Valgrind-3.27.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

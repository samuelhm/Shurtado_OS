<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxml2.md "libxml2-2.15.3")

    libxml2-2.15.3

-   [Next](libxslt.md "libxslt-1.1.45")

    libxslt-1.1.45

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxmlb-0.3.27 {#libxmlb-0.3.27}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxmlb {#introduction-to-libxmlb}

The <span class="application">libxmlb</span> package contains a library and a tool which help create and query binary XML blobs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/hughsie/libxmlb/releases/download/0.3.27/libxmlb-0.3.27.tar.xz">https://github.com/hughsie/libxmlb/releases/download/0.3.27/libxmlb-0.3.27.tar.xz</a>

-   Download MD5 sum: b0c73036693fed07383022a67264b5eb

-   Download size: 108 KB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: 0.1 SBU (With tests)
</div>

### libxmlb Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended)

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="ulink" href="https://github.com/zvelo/libstemmer">libstemmer</a>
</div>

<div class="installation" lang="en">
## Installation of libxmlb {#installation-of-libxmlb}

Install <span class="application">libxmlb</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D gtkdoc=false .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtkdoc=false`*: This switch disables building the API documentation. Remove it if you have <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to build the API documentation.

<code class="option">-D introspection=false</code>: Use this switch if you have not built <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> with GObject Introspection.

<code class="option">-D stemmer=true</code>: Use this switch if you have <a class="ulink" href="https://github.com/zvelo/libstemmer">libstemmer</a> installed and wish to build stemmer support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xb-tool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxmlb.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libxmlb-2, /usr/libexec/installed-tests/libxmlb, and /usr/share/gtk-doc/html/libxmlb (if gtk-doc was enabled)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------
  <a id="xb-tool"></a><span class="command"><span class="term"><strong>xb-tool</strong></span></span>       is a tool used to create, dump, or query a binary XML blob
  <a id="libxmlb-lib"></a><span class="term"><code class="filename">libxmlb.so</code></span>   contains functions that allow for creating and querying binary XML blobs
  -------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxml2.md "libxml2-2.15.3")

    libxml2-2.15.3

-   [Next](libxslt.md "libxslt-1.1.45")

    libxslt-1.1.45

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

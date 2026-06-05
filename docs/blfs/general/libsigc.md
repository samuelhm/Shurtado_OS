<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libseccomp.md "libseccomp-2.6.0")

    libseccomp-2.6.0

-   [Next](libsigc3.md "libsigc++-3.6.0")

    libsigc++-3.6.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsigc++-2.12.1 {#libsigc-2.12.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsigc++ {#introduction-to-libsigc}

The <span class="application">libsigc++</span> package implements a typesafe callback system for standard C++.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libsigc++/2.12/libsigc++-2.12.1.tar.xz">https://download.gnome.org/sources/libsigc++/2.12/libsigc++-2.12.1.tar.xz</a>

-   Download MD5 sum: 891f1b2dbaebd8007eda8c639bbe1149

-   Download size: 4.8 MB

-   Estimated disk space required: 27 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libsigc++ Dependencies

#### Recommended

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Optional

<a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>, <a class="xref" href="../pst/docbook5.md" title="docbook-xml-5.0">docbook-xml-5.0</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, and <a class="ulink" href="https://download.gnome.org/sources/mm-common">mm-common</a>
</div>

<div class="installation" lang="en">
## Installation of libsigc++ {#installation-of-libsigc}

First, fix detecting Boost when configuring this package:

```bash
sed -i "s/'system',//" meson.build
```

Install <span class="application">libsigc++</span> by running the following commands:

```bash
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
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

<code class="option">-D build-documentation=true</code>: Use this switch if <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> is installed and you wish to build and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsigc-2.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib}/sigc++-2.0 and /usr/share/{devhelp/books,doc}/libsigc++-2.0 (if the documentation is enabled)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------
  <a id="libsigc-2"></a><span class="term"><code class="filename">libsigc-2.0.so</code></span>   provides a typesafe callback system for standard C++
  ---------------------------------------------------- ------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libseccomp.md "libseccomp-2.6.0")

    libseccomp-2.6.0

-   [Next](libsigc3.md "libsigc++-3.6.0")

    libsigc++-3.6.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

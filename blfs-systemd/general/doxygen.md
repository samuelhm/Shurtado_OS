<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cmake.md "CMake-4.3.3")

    CMake-4.3.3

-   [Next](dtc.md "dtc-1.8.1")

    dtc-1.8.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Doxygen-1.17.0 {#doxygen-1.17.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Doxygen {#introduction-to-doxygen}

The <span class="application">Doxygen</span> package contains a documentation system for C++, C, Java, Objective-C, Corba IDL and to some extent PHP, C# and D. It is useful for generating HTML documentation and/or an off-line reference manual from a set of documented source files. There is also support for generating output in RTF, PostScript, hyperlinked PDF, compressed HTML, and Unix man pages. The documentation is extracted directly from the sources, which makes it much easier to keep the documentation consistent with the source code.

You can also configure <span class="application">Doxygen</span> to extract the code structure from undocumented source files. This is very useful to quickly find your way in large source distributions. Used along with <span class="application">Graphviz</span>, you can also visualize the relations between the various elements by means of include dependency graphs, inheritance diagrams, and collaboration diagrams, which are all generated automatically.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://doxygen.nl/files/doxygen-1.17.0.src.tar.gz">https://doxygen.nl/files/doxygen-1.17.0.src.tar.gz</a>

-   Download MD5 sum: 7b721b8733c63d6751019da0d01d018b

-   Download size: 9.0 MB

-   Estimated disk space required: 428 MB (with tests)

-   Estimated build time: 1.2 SBU (with tests; both using parallelism=4)
</div>

### Doxygen Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a>

#### Recommended

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (for doxywizard)

#### Optional

<a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> (required for the tests), <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with clang), <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), <a class="xref" href="xapian.md" title="Xapian-2.0.0">xapian-2.0.0</a> (for doxyindexer), and <a class="ulink" href="https://javacc.github.io/javacc/">javacc</a>
</div>

<div class="installation" lang="en">
## Installation of Doxygen {#installation-of-doxygen}

First, fix up some python scripts:

```bash
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'
```

Install <span class="application">Doxygen</span> by running the following commands:

```bash
mkdir -v build &&
cd       build &&

cmake -G "Unix Makefiles"          \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      -D build_wizard=ON           \
      -D force_qt=Qt6              \
      -W no-dev .. &&
make
```

To test the results, issue: <span class="command"><strong>make tests</strong></span>. One test, 012_cite.dox, is known to fail if <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a> is not installed.

If you wish to generate the package documentation, you must have <span class="application">Python</span>, <span class="application">TeX Live</span> (for HTML docs) and <span class="application">Ghostscript</span> (for PDF docs) installed, then issue the following command:

```bash
cmake  -D build_doc=ON \
       -D DOC_INSTALL_DIR=share/doc/doxygen-1.17.0 \
       .. &&
make docs
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -vm644 ../doc/*.1 /usr/share/man/man1
```

If you have generated the package documentation, then the man pages are automatically installed, and you do not need to run the last <span class="command"><strong>install ...</strong></span> command.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D build_wizard=OFF</code>: Use this switch if <span class="application">Qt6</span> is not installed.

<code class="option">-D build_search=ON</code>: Use this switch if <span class="application">xapian</span> is installed and you wish to build external search tools (<span class="command"><strong>doxysearch.cgi</strong></span> and <span class="command"><strong>doxyindexer)</strong></span>.

<code class="option">-D force_qt6=ON</code>: Use this switch to build <span class="command"><strong>doxywizard</strong></span> with Qt6 even if Qt5 is installed.

<code class="option">-D use_libclang=ON</code>: Use this switch if <span class="application">llvm</span> with <span class="application">clang</span> are installed, to add support for libclang parsing.
</div>

<div class="configuration" lang="en">
## Configuring Doxygen {#configuring-doxygen}

There is no real configuration necessary for the <span class="application">Doxygen</span> package although three additional packages are required if you wish to use extended capabilities. If you require formulas to create PDF documentation, then you must have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed. If you require formulas to convert PostScript files to bitmaps, then you must have <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">doxygen and optionally, doxywizard, doxyindexer and doxysearch.cgi</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/doxygen-1.17.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="doxygen-prog"></a><span class="command"><span class="term"><strong>doxygen</strong></span></span>            is a command-line based utility used to generate template configuration files and then generate documentation from these templates. Use <span class="command"><strong>doxygen --help</strong></span> for an explanation of the command-line parameters
  <a id="doxywizard"></a><span class="command"><span class="term"><strong>doxywizard</strong></span></span>           is a GUI front-end for configuring and running <span class="command"><strong>doxygen</strong></span>
  <a id="doxyindexer"></a><span class="command"><span class="term"><strong>doxyindexer</strong></span></span>         generates a search index called <code class="filename">doxysearch.db</code> from one or more search data files produced by <span class="command"><strong>doxygen</strong></span>. See, e.g. <a class="ulink" href="https://javacc.github.io/javacc/">https://javacc.github.io/javacc/</a>
  <a id="doxysearch.cgi"></a><span class="command"><span class="term"><strong>doxysearch.cgi</strong></span></span>   is a CGI program to search the data indexed by <span class="command"><strong>doxyindexer</strong></span>
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cmake.md "CMake-4.3.3")

    CMake-4.3.3

-   [Next](dtc.md "dtc-1.8.1")

    dtc-1.8.1

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

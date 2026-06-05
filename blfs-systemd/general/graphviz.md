<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](glslc.md "glslc from shaderc-2026.2")

    glslc from shaderc-2026.2

-   [Next](gtk-doc.md "GTK-Doc-1.36.1")

    GTK-Doc-1.36.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Graphviz-15.0.0 {#graphviz-15.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Graphviz {#introduction-to-graphviz}

The <span class="application">Graphviz</span> package contains graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks. <span class="application">Graphviz</span> has several main graph layout programs. It also has web and interactive graphical interfaces, auxiliary tools, libraries, and language bindings.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.com/graphviz/graphviz/-/archive/15.0.0/graphviz-15.0.0.tar.bz2">https://gitlab.com/graphviz/graphviz/-/archive/15.0.0/graphviz-15.0.0.tar.bz2</a>

-   Download MD5 sum: 7884703e7a5ee6cc62518329c19502b0

-   Download size: 36 MB

-   Estimated disk space required: 198 MB (6.8 MB installed)

-   Estimated build time: 0.3 SBU (using parallelism=4)
</div>

### Graphviz Dependencies

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Basic usage of <span class="application">Graphviz</span> does not require any libraries out of what is found in the LFS book. Its <span class="quote">“<span class="quote">core</span>”</span> rendering engine is able to generate several graphic formats, such as Postscript, SVG, VML, .fig, and Tk. Those formats can be converted to almost any other format using tools from packages such as <a class="xref" href="imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>. The dependencies below add the ability to generate graph images in bitmap format, to display the graph image on screen, to edit a graph by viewing the resulting image directly, or to view large graphs. Since <span class="application">Graphviz</span> is a dependency of several other packages in this book, it is suggested that you first build it without any dependencies, and then rebuild it when you have built enough packages to suit your needs.
</div>

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended, for needed bitmap outputs

<a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, with <a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, <a class="xref" href="fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, to generate images in bitmap SVG, postscript, PNG, and PDF formats, or to display the image on screen. The PNG output is required for building <a class="xref" href="gegl.md" title="gegl-0.4.70">gegl-0.4.70</a>.

#### Optional, for additional bitmap outputs

<a class="xref" href="aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a> (for outputting images in ASCII art), <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a> (for formatting graphs for printing), <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="../x/webkitgtk.md" title="WebKitGTK-2.52.0">WebKitGTK-2.52.0</a>

Adding <a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a> with <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> adds support for JPEG, BMP, TIF, and ICO formats, and allows displaying the image in a GTK+ window

<a class="ulink" href="https://www.libgd.org/">GD Library</a> may be used instead of <span class="application">Pango</span>. It adds the ability to generate images in GIF, VRML, and GD formats, but <span class="application">Pango</span> provides better outputs for the other formats, and is needed for displaying images

Other formats may be added with <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="ulink" href="https://openil.sourceforge.net/projects.php">DevIL</a>, <a class="ulink" href="https://sourceforge.net/projects/lasi/">libLASi</a>, and <a class="ulink" href="https://www.freedesktop.org/wiki/Software/glitz">glitz</a>

#### Optional (to load graphics that may be displayed inside the nodes of a graph)

<code class="filename">libgs.so</code> from <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, and <a class="xref" href="poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>

#### Optional (to build more tools)

<a class="ulink" href="http://www.cs.umd.edu/~mount/ANN/">libANN</a> and <a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a> (with <a class="ulink" href="https://sourceforge.net/projects/gtkglext/">GtkGLExt</a> and <a class="ulink" href="https://gts.sourceforge.net/">libGTS</a> for building the <span class="command"><strong>smyrna</strong></span> large graph viewer, which is considered experimental)

#### Optional (to build language bindings)

<a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a> (<span class="application">SWIG</span> must be installed or no bindings will be built), <a class="xref" href="gcc.md" title="GCC-16.1.0">GCC-16.1.0</a> (for the go compiler), <a class="xref" href="guile.md" title="Guile-3.0.11">Guile-3.0.11</a>, <a class="xref" href="openjdk.md" title="OpenJDK-21.0.10">OpenJDK-21.0.10</a>, <a class="xref" href="lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="php.md" title="PHP-8.5.6">PHP-8.5.6</a>, <a class="xref" href="ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="tk.md" title="Tk-8.6.18">Tk-8.6.18</a>, and <a class="ulink" href="https://www.r-project.org/">R</a>

#### Optional (building tools)

<a class="ulink" href="https://github.com/Snaipe/Criterion">Criterion</a> (framework for tests) and <a class="ulink" href="https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/">Electric Fence</a>

#### Optional (for building the pdf documentation)

<a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> (for the <span class="command"><strong>ps2pdf</strong></span> command)
</div>

<div class="installation" lang="en">
## Installation of Graphviz {#installation-of-graphviz}

Now prevent hard coding library search paths (rpath) into the shared libraries. The libraries do not need the rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues. We cannot use <code class="option">-D CMAKE_SKIP_INSTALL_RPATH=ON</code> for this package because the rpath is really needed for the programs installed by this package, so we need to edit the build system:

```bash
sed '/ORIGIN/d' -i lib/CMakeLists.txt
```

Install <span class="application">Graphviz</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&

sed -i '/GZIP/s/:.*$/=/' CMakeCache.txt &&

make
```

This package does not come with a test suite that provides meaningful results.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ... CMakeCache.txt</strong></span>: This command is needed to prevent compressing the packages's man pages.
</div>

<div class="configuration" lang="en">
## Configuring Graphviz {#configuring-graphviz}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

There are no specific configuration requirements for <span class="application">Graphviz</span>. You may consider installing the additional plugins and tools available from the download page at <a class="ulink" href="https://graphviz.org/download/source/">https://graphviz.org/download/source/</a> for additional capabilities. If additional plugins are installed, you can run <span class="command"><strong>dot -c</strong></span> (as the <code class="systemitem">root</code> user) to update the <code class="filename">config</code> file in <code class="filename">/usr/lib/graphviz</code>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">acyclic, bcomps, ccomps, circo, cluster, dijkstra, dot, dot2gxl, dot_builtins, dot_sandbox, edgepaint, fdp, gc, gml2gv, graphml2gv, gv2gml, gv2gxl, gvcolor, gvedit, gvgen, gvmap, gvmap.sh, gvpack, gvpr, gxl2dot, gxl2gv, mm2gv, neato, nop, osage, patchwork, prune, sccmap, sfdp, tred, twopi, unflatten, and vimdot</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcdt.so, libcgraph.so, libgvc.so, libgvpr.so, libpathplan.so, libxdot.so, and several plugins in /usr/lib/graphviz/.</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/graphviz, /usr/lib/graphviz, /usr/lib/cmake/graphviz, and /usr/share/graphviz</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="acyclic"></a><span class="command"><span class="term"><strong>acyclic</strong></span></span>           is a filter that takes a directed graph as input and outputs a copy of the graph with sufficient edges reversed to make the graph acyclic
  <a id="bcomps"></a><span class="command"><span class="term"><strong>bcomps</strong></span></span>             decomposes graphs into their biconnected components, printing the components to standard output
  <a id="ccomps"></a><span class="command"><span class="term"><strong>ccomps</strong></span></span>             decomposes graphs into their connected components, printing the components to standard output
  <a id="circo"></a><span class="command"><span class="term"><strong>circo</strong></span></span>               draws graphs using a circular layout
  <a id="cluster"></a><span class="command"><span class="term"><strong>cluster</strong></span></span>           takes a graph in DOT format as input, finds node clusters, and then augments the graph with this information
  <a id="dijkstra"></a><span class="command"><span class="term"><strong>dijkstra</strong></span></span>         reads a stream of graphs and for each computes the distance of every node from sourcenode
  <a id="dot"></a><span class="command"><span class="term"><strong>dot</strong></span></span>                   draws directed graphs. It works well on DAGs and other graphs that can be drawn as hierarchies. It reads attributed graph files and writes drawings. By default, the output format dot is the input file with layout coordinates appended
  <a id="dot2gxl"></a><span class="command"><span class="term"><strong>dot2gxl</strong></span></span>           converts between graphs represented in GXL and in the DOT language. Unless a conversion type is specified using a flag, <span class="command"><strong>gxl2dot</strong></span> will deduce the type of conversion from the suffix of the input file, a <code class="filename">.dot</code> suffix causing a conversion from DOT to GXL, and a <code class="filename">.gxl</code> suffix causing a conversion from GXL to DOT
  <a id="dot_sandbox"></a><span class="command"><span class="term"><strong>dot_sandbox</strong></span></span>   is a wrapper around graphviz. It aims to provide a safe environment for the processing of untrusted input graphs and command line options.
  <a id="edgepaint"></a><span class="command"><span class="term"><strong>edgepaint</strong></span></span>       performs edge coloring to disambiguate crossing edges
  <a id="fdp"></a><span class="command"><span class="term"><strong>fdp</strong></span></span>                   draws undirected graphs using a <span class="quote">“<span class="quote">spring</span>”</span> model. It relies on a force-directed approach in the spirit of Fruchterman and Reingold
  <a id="gml2gv"></a><span class="command"><span class="term"><strong>gml2gv</strong></span></span>             converts a graph specified in the GML format to a graph in the GV (formerly DOT) format
  <a id="graphml2gv"></a><span class="command"><span class="term"><strong>graphml2gv</strong></span></span>     converts a graph specified in the GRAPHML format to a graph in the GV (formerly DOT) format
  <a id="gv2gml"></a><span class="command"><span class="term"><strong>gv2gml</strong></span></span>             converts a graph specified in the GV format to a graph in the GML format
  <a id="gv2gxl"></a><span class="command"><span class="term"><strong>gv2gxl</strong></span></span>             converts a graph specified in the GV format to a graph in the GXL format
  <a id="gvcolor"></a><span class="command"><span class="term"><strong>gvcolor</strong></span></span>           is a filter that sets node colors from initial seed values. Colors flow along edges from tail to head, and are averaged (as HSB vectors) at nodes
  <a id="gvedit"></a><span class="command"><span class="term"><strong>gvedit</strong></span></span>             provides a simple graph editor and viewer. It allows many graphs to be viewed at the same time. The text of each graph is displayed in its own text window
  <a id="gvgen"></a><span class="command"><span class="term"><strong>gvgen</strong></span></span>               generates a variety of simple, regularly-structured abstract graphs
  <a id="gvmap"></a><span class="command"><span class="term"><strong>gvmap</strong></span></span>               takes as input a graph in DOT format, finds node clusters and produces a rendering of the graph as a geographic-style map, with clusters highlighted, in xdot format
  <a id="gvmap.sh"></a><span class="command"><span class="term"><strong>gvmap.sh</strong></span></span>         is a pipeline for running gvmap
  <a id="gvpack"></a><span class="command"><span class="term"><strong>gvpack</strong></span></span>             reads in a stream of graphs, combines the graphs into a single layout, and produces a single graph serving as the union of the input graphs
  <a id="gvpr"></a><span class="command"><span class="term"><strong>gvpr</strong></span></span>                 is a graph stream editor inspired by <span class="command"><strong>awk</strong></span>. It copies input graphs to its output, possibly transforming their structure and attributes, creating new graphs, or printing arbitrary information
  <a id="gxl2dot"></a><span class="command"><span class="term"><strong>gxl2dot</strong></span></span>           converts between graphs represented in GXL and in the DOT language. Unless a conversion type is specified using a flag, <span class="command"><strong>gxl2dot</strong></span> will deduce the type of conversion from the suffix of the input file, a <code class="filename">.dot</code> suffix causing a conversion from DOT to GXL, and a <code class="filename">.gxl</code> suffix causing a conversion from GXL to DOT
  <a id="gxl2gv"></a><span class="command"><span class="term"><strong>gxl2gv</strong></span></span>             converts between graphs represented in GXL and in the GV language
  <a id="lefty"></a><span class="command"><span class="term"><strong>lefty</strong></span></span>               is a two-view graphics editor for technical pictures
  <a id="lneato"></a><span class="command"><span class="term"><strong>lneato</strong></span></span>             is a graph editor for the X Window System. It may be run as a standalone editor, or as a front end for applications that use graphs. It can control multiple windows viewing different graphs
  <a id="mm2gv"></a><span class="command"><span class="term"><strong>mm2gv</strong></span></span>               converts a sparse matrix of the Matrix Market format to a graph in the GV (formerly DOT) format
  <a id="neato"></a><span class="command"><span class="term"><strong>neato</strong></span></span>               draws undirected graphs using <span class="quote">“<span class="quote">spring</span>”</span> models. Input files must be formatted in the <span class="command"><strong>dot</strong></span> attributed graph language. By default, the output of <span class="command"><strong>neato</strong></span> is the input graph with layout coordinates appended
  <a id="nop"></a><span class="command"><span class="term"><strong>nop</strong></span></span>                   reads a stream of graphs and prints each in pretty-printed (canonical) format on stdout. If no files are given, it reads from stdin
  <a id="osage"></a><span class="command"><span class="term"><strong>osage</strong></span></span>               draws clustered graphs. It takes any graph in DOT format as input
  <a id="patchwork"></a><span class="command"><span class="term"><strong>patchwork</strong></span></span>       draws clustered graphs using a squarified treemap layout. It takes any graph in DOT format as input
  <a id="prune"></a><span class="command"><span class="term"><strong>prune</strong></span></span>               reads directed graphs in the same format used by <span class="command"><strong>dot</strong></span> and removes subgraphs rooted at nodes specified on the command line via options
  <a id="sccmap"></a><span class="command"><span class="term"><strong>sccmap</strong></span></span>             decomposes digraphs into strongly connected components and an auxiliary map of the relationship between components. In this map, each component is collapsed into a node. The resulting graphs are printed to stdout
  <a id="sfdp"></a><span class="command"><span class="term"><strong>sfdp</strong></span></span>                 draws undirected graphs using the <span class="quote">“<span class="quote">spring</span>”</span> model, but it uses a multi-scale approach to produce layouts of large graphs in a reasonably short time
  <a id="tred"></a><span class="command"><span class="term"><strong>tred</strong></span></span>                 computes the transitive reduction of directed graphs, and prints the resulting graphs to standard output. This removes edges implied by transitivity. Nodes and subgraphs are not otherwise affected
  <a id="twopi"></a><span class="command"><span class="term"><strong>twopi</strong></span></span>               draws graphs using a radial layout. Basically, one node is chosen as the center and put at the origin. The remaining nodes are placed on a sequence of concentric circles centered about the origin, each a fixed radial distance from the previous circle
  <a id="unflatten"></a><span class="command"><span class="term"><strong>unflatten</strong></span></span>       is a preprocessor to <span class="command"><strong>dot</strong></span> that is used to improve the aspect ratio of graphs having many leaves or disconnected nodes. The usual layout for such a graph is generally very wide or tall
  <a id="vimdot"></a><span class="command"><span class="term"><strong>vimdot</strong></span></span>             is a simple script which launches the <span class="command"><strong>gvim</strong></span> or <span class="command"><strong>vim</strong></span> editor along with a GUI window showing the <span class="command"><strong>dot</strong></span> output of the edited file
  <a id="libcdt"></a><span class="term"><code class="filename">libcdt.so</code></span>             manages run-time dictionaries using standard container data types: unordered set/multiset, ordered set/multiset, list, stack, and queue
  <a id="libcgraph"></a><span class="term"><code class="filename">libcgraph.so</code></span>       supports graph programming by maintaining graphs in memory and reading and writing graph files. Graphs are composed of nodes, edges, and nested subgraphs
  <a id="libgvc"></a><span class="term"><code class="filename">libgvc.so</code></span>             provides a context for applications wishing to manipulate and render graphs. It provides command line parsing interfaces, common rendering code, and a plugin mechanism for renderers
  <a id="libpathplan"></a><span class="term"><code class="filename">libpathplan.so</code></span>   contains functions to find the shortest path between two points in a simple polygon
  <a id="libxdot"></a><span class="term"><code class="filename">libxdot.so</code></span>           provides support for parsing and deparsing graphical operations specified by the xdot language
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glslc.md "glslc from shaderc-2026.2")

    glslc from shaderc-2026.2

-   [Next](gtk-doc.md "GTK-Doc-1.36.1")

    GTK-Doc-1.36.1

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

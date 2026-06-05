::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](glslc.md "glslc from shaderc-2026.2"){accesskey="p"}

    glslc from shaderc-2026.2

-   [Next](gtk-doc.md "GTK-Doc-1.36.1"){accesskey="n"}

    GTK-Doc-1.36.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#graphviz}Graphviz-15.0.0 {#graphviz-15.0.0 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Graphviz {#introduction-to-graphviz .sect2}

The [Graphviz]{.application} package contains graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks. [Graphviz]{.application} has several main graph layout programs. It also has web and interactive graphical interfaces, auxiliary tools, libraries, and language bindings.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.com/graphviz/graphviz/-/archive/15.0.0/graphviz-15.0.0.tar.bz2](https://gitlab.com/graphviz/graphviz/-/archive/15.0.0/graphviz-15.0.0.tar.bz2){.ulink}

-   Download MD5 sum: 7884703e7a5ee6cc62518329c19502b0

-   Download size: 36 MB

-   Estimated disk space required: 198 MB (6.8 MB installed)

-   Estimated build time: 0.3 SBU (using parallelism=4)
:::

### Graphviz Dependencies

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Basic usage of [Graphviz]{.application} does not require any libraries out of what is found in the LFS book. Its [“[core]{.quote}”]{.quote} rendering engine is able to generate several graphic formats, such as Postscript, SVG, VML, .fig, and Tk. Those formats can be converted to almost any other format using tools from packages such as [ImageMagick-7.1.2-13](imagemagick.md "ImageMagick-7.1.2-13"){.xref}. The dependencies below add the ability to generate graph images in bitmap format, to display the graph image on screen, to edit a graph by viewing the resulting image directly, or to view large graphs. Since [Graphviz]{.application} is a dependency of several other packages in this book, it is suggested that you first build it without any dependencies, and then rebuild it when you have built enough packages to suit your needs.
:::

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended, for needed bitmap outputs

[Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}, with [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}, [Fontconfig-2.18.1](fontconfig.md "Fontconfig-2.18.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, to generate images in bitmap SVG, postscript, PNG, and PDF formats, or to display the image on screen. The PNG output is required for building [gegl-0.4.70](gegl.md "gegl-0.4.70"){.xref}.

#### Optional, for additional bitmap outputs

[AAlib-1.4rc5](aalib.md "AAlib-1.4rc5"){.xref} (for outputting images in ASCII art), [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref} (for formatting graphs for printing), [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [WebKitGTK-2.52.0](../x/webkitgtk.md "WebKitGTK-2.52.0"){.xref}

Adding [GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink} with [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} adds support for JPEG, BMP, TIF, and ICO formats, and allows displaying the image in a GTK+ window

[GD Library](https://www.libgd.org/){.ulink} may be used instead of [Pango]{.application}. It adds the ability to generate images in GIF, VRML, and GD formats, but [Pango]{.application} provides better outputs for the other formats, and is needed for displaying images

Other formats may be added with [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [DevIL](https://openil.sourceforge.net/projects.php){.ulink}, [libLASi](https://sourceforge.net/projects/lasi/){.ulink}, and [glitz](https://www.freedesktop.org/wiki/Software/glitz){.ulink}

#### Optional (to load graphics that may be displayed inside the nodes of a graph)

`libgs.so`{.filename} from [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, and [Poppler-26.06.0](poppler.md "Poppler-26.06.0"){.xref}

#### Optional (to build more tools)

[libANN](http://www.cs.umd.edu/~mount/ANN/){.ulink} and [Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref} (with [GtkGLExt](https://sourceforge.net/projects/gtkglext/){.ulink} and [libGTS](https://gts.sourceforge.net/){.ulink} for building the [**smyrna**]{.command} large graph viewer, which is considered experimental)

#### Optional (to build language bindings)

[SWIG-4.4.1](swig.md "SWIG-4.4.1"){.xref} ([SWIG]{.application} must be installed or no bindings will be built), [GCC-16.1.0](gcc.md "GCC-16.1.0"){.xref} (for the go compiler), [Guile-3.0.11](guile.md "Guile-3.0.11"){.xref}, [OpenJDK-21.0.10](openjdk.md "OpenJDK-21.0.10"){.xref}, [Lua-5.4.8](lua.md "Lua-5.4.8"){.xref}, [PHP-8.5.6](php.md "PHP-8.5.6"){.xref}, [Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}, [Tk-8.6.18](tk.md "Tk-8.6.18"){.xref}, and [R](https://www.r-project.org/){.ulink}

#### Optional (building tools)

[Criterion](https://github.com/Snaipe/Criterion){.ulink} (framework for tests) and [Electric Fence](https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/){.ulink}

#### Optional (for building the pdf documentation)

[ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref} (for the [**ps2pdf**]{.command} command)
::::::

::: {.installation lang="en"}
## Installation of Graphviz {#installation-of-graphviz .sect2}

Now prevent hard coding library search paths (rpath) into the shared libraries. The libraries do not need the rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues. We cannot use `-D CMAKE_SKIP_INSTALL_RPATH=ON`{.option} for this package because the rpath is really needed for the programs installed by this package, so we need to edit the build system:

``` userinput
sed '/ORIGIN/d' -i lib/CMakeLists.txt
```

Install [Graphviz]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&

sed -i '/GZIP/s/:.*$/=/' CMakeCache.txt &&

make
```

This package does not come with a test suite that provides meaningful results.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... CMakeCache.txt**]{.command}: This command is needed to prevent compressing the packages's man pages.
:::

:::: {.configuration lang="en"}
## Configuring Graphviz {#configuring-graphviz .sect2}

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

There are no specific configuration requirements for [Graphviz]{.application}. You may consider installing the additional plugins and tools available from the download page at [https://graphviz.org/download/source/](https://graphviz.org/download/source/){.ulink} for additional capabilities. If additional plugins are installed, you can run [**dot -c**]{.command} (as the `root`{.systemitem} user) to update the `config`{.filename} file in `/usr/lib/graphviz`{.filename}.
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [acyclic, bcomps, ccomps, circo, cluster, dijkstra, dot, dot2gxl, dot_builtins, dot_sandbox, edgepaint, fdp, gc, gml2gv, graphml2gv, gv2gml, gv2gxl, gvcolor, gvedit, gvgen, gvmap, gvmap.sh, gvpack, gvpr, gxl2dot, gxl2gv, mm2gv, neato, nop, osage, patchwork, prune, sccmap, sfdp, tred, twopi, unflatten, and vimdot]{.segbody}
:::

::: seg
**Installed Libraries:** [libcdt.so, libcgraph.so, libgvc.so, libgvpr.so, libpathplan.so, libxdot.so, and several plugins in /usr/lib/graphviz/.]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/graphviz, /usr/lib/graphviz, /usr/lib/cmake/graphviz, and /usr/share/graphviz]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#acyclic}[[**acyclic**]{.command}]{.term}           is a filter that takes a directed graph as input and outputs a copy of the graph with sufficient edges reversed to make the graph acyclic
  []{#bcomps}[[**bcomps**]{.command}]{.term}             decomposes graphs into their biconnected components, printing the components to standard output
  []{#ccomps}[[**ccomps**]{.command}]{.term}             decomposes graphs into their connected components, printing the components to standard output
  []{#circo}[[**circo**]{.command}]{.term}               draws graphs using a circular layout
  []{#cluster}[[**cluster**]{.command}]{.term}           takes a graph in DOT format as input, finds node clusters, and then augments the graph with this information
  []{#dijkstra}[[**dijkstra**]{.command}]{.term}         reads a stream of graphs and for each computes the distance of every node from sourcenode
  []{#dot}[[**dot**]{.command}]{.term}                   draws directed graphs. It works well on DAGs and other graphs that can be drawn as hierarchies. It reads attributed graph files and writes drawings. By default, the output format dot is the input file with layout coordinates appended
  []{#dot2gxl}[[**dot2gxl**]{.command}]{.term}           converts between graphs represented in GXL and in the DOT language. Unless a conversion type is specified using a flag, [**gxl2dot**]{.command} will deduce the type of conversion from the suffix of the input file, a `.dot`{.filename} suffix causing a conversion from DOT to GXL, and a `.gxl`{.filename} suffix causing a conversion from GXL to DOT
  []{#dot_sandbox}[[**dot_sandbox**]{.command}]{.term}   is a wrapper around graphviz. It aims to provide a safe environment for the processing of untrusted input graphs and command line options.
  []{#edgepaint}[[**edgepaint**]{.command}]{.term}       performs edge coloring to disambiguate crossing edges
  []{#fdp}[[**fdp**]{.command}]{.term}                   draws undirected graphs using a [“[spring]{.quote}”]{.quote} model. It relies on a force-directed approach in the spirit of Fruchterman and Reingold
  []{#gml2gv}[[**gml2gv**]{.command}]{.term}             converts a graph specified in the GML format to a graph in the GV (formerly DOT) format
  []{#graphml2gv}[[**graphml2gv**]{.command}]{.term}     converts a graph specified in the GRAPHML format to a graph in the GV (formerly DOT) format
  []{#gv2gml}[[**gv2gml**]{.command}]{.term}             converts a graph specified in the GV format to a graph in the GML format
  []{#gv2gxl}[[**gv2gxl**]{.command}]{.term}             converts a graph specified in the GV format to a graph in the GXL format
  []{#gvcolor}[[**gvcolor**]{.command}]{.term}           is a filter that sets node colors from initial seed values. Colors flow along edges from tail to head, and are averaged (as HSB vectors) at nodes
  []{#gvedit}[[**gvedit**]{.command}]{.term}             provides a simple graph editor and viewer. It allows many graphs to be viewed at the same time. The text of each graph is displayed in its own text window
  []{#gvgen}[[**gvgen**]{.command}]{.term}               generates a variety of simple, regularly-structured abstract graphs
  []{#gvmap}[[**gvmap**]{.command}]{.term}               takes as input a graph in DOT format, finds node clusters and produces a rendering of the graph as a geographic-style map, with clusters highlighted, in xdot format
  []{#gvmap.sh}[[**gvmap.sh**]{.command}]{.term}         is a pipeline for running gvmap
  []{#gvpack}[[**gvpack**]{.command}]{.term}             reads in a stream of graphs, combines the graphs into a single layout, and produces a single graph serving as the union of the input graphs
  []{#gvpr}[[**gvpr**]{.command}]{.term}                 is a graph stream editor inspired by [**awk**]{.command}. It copies input graphs to its output, possibly transforming their structure and attributes, creating new graphs, or printing arbitrary information
  []{#gxl2dot}[[**gxl2dot**]{.command}]{.term}           converts between graphs represented in GXL and in the DOT language. Unless a conversion type is specified using a flag, [**gxl2dot**]{.command} will deduce the type of conversion from the suffix of the input file, a `.dot`{.filename} suffix causing a conversion from DOT to GXL, and a `.gxl`{.filename} suffix causing a conversion from GXL to DOT
  []{#gxl2gv}[[**gxl2gv**]{.command}]{.term}             converts between graphs represented in GXL and in the GV language
  []{#lefty}[[**lefty**]{.command}]{.term}               is a two-view graphics editor for technical pictures
  []{#lneato}[[**lneato**]{.command}]{.term}             is a graph editor for the X Window System. It may be run as a standalone editor, or as a front end for applications that use graphs. It can control multiple windows viewing different graphs
  []{#mm2gv}[[**mm2gv**]{.command}]{.term}               converts a sparse matrix of the Matrix Market format to a graph in the GV (formerly DOT) format
  []{#neato}[[**neato**]{.command}]{.term}               draws undirected graphs using [“[spring]{.quote}”]{.quote} models. Input files must be formatted in the [**dot**]{.command} attributed graph language. By default, the output of [**neato**]{.command} is the input graph with layout coordinates appended
  []{#nop}[[**nop**]{.command}]{.term}                   reads a stream of graphs and prints each in pretty-printed (canonical) format on stdout. If no files are given, it reads from stdin
  []{#osage}[[**osage**]{.command}]{.term}               draws clustered graphs. It takes any graph in DOT format as input
  []{#patchwork}[[**patchwork**]{.command}]{.term}       draws clustered graphs using a squarified treemap layout. It takes any graph in DOT format as input
  []{#prune}[[**prune**]{.command}]{.term}               reads directed graphs in the same format used by [**dot**]{.command} and removes subgraphs rooted at nodes specified on the command line via options
  []{#sccmap}[[**sccmap**]{.command}]{.term}             decomposes digraphs into strongly connected components and an auxiliary map of the relationship between components. In this map, each component is collapsed into a node. The resulting graphs are printed to stdout
  []{#sfdp}[[**sfdp**]{.command}]{.term}                 draws undirected graphs using the [“[spring]{.quote}”]{.quote} model, but it uses a multi-scale approach to produce layouts of large graphs in a reasonably short time
  []{#tred}[[**tred**]{.command}]{.term}                 computes the transitive reduction of directed graphs, and prints the resulting graphs to standard output. This removes edges implied by transitivity. Nodes and subgraphs are not otherwise affected
  []{#twopi}[[**twopi**]{.command}]{.term}               draws graphs using a radial layout. Basically, one node is chosen as the center and put at the origin. The remaining nodes are placed on a sequence of concentric circles centered about the origin, each a fixed radial distance from the previous circle
  []{#unflatten}[[**unflatten**]{.command}]{.term}       is a preprocessor to [**dot**]{.command} that is used to improve the aspect ratio of graphs having many leaves or disconnected nodes. The usual layout for such a graph is generally very wide or tall
  []{#vimdot}[[**vimdot**]{.command}]{.term}             is a simple script which launches the [**gvim**]{.command} or [**vim**]{.command} editor along with a GUI window showing the [**dot**]{.command} output of the edited file
  []{#libcdt}[`libcdt.so`{.filename}]{.term}             manages run-time dictionaries using standard container data types: unordered set/multiset, ordered set/multiset, list, stack, and queue
  []{#libcgraph}[`libcgraph.so`{.filename}]{.term}       supports graph programming by maintaining graphs in memory and reading and writing graph files. Graphs are composed of nodes, edges, and nested subgraphs
  []{#libgvc}[`libgvc.so`{.filename}]{.term}             provides a context for applications wishing to manipulate and render graphs. It provides command line parsing interfaces, common rendering code, and a plugin mechanism for renderers
  []{#libpathplan}[`libpathplan.so`{.filename}]{.term}   contains functions to find the shortest path between two points in a simple polygon
  []{#libxdot}[`libxdot.so`{.filename}]{.term}           provides support for parsing and deparsing graphical operations specified by the xdot language
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](glslc.md "glslc from shaderc-2026.2"){accesskey="p"}

    glslc from shaderc-2026.2

-   [Next](gtk-doc.md "GTK-Doc-1.36.1"){accesskey="n"}

    GTK-Doc-1.36.1

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

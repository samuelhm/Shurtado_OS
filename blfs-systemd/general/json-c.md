<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](jansson.md "Jansson-2.15.0")

    Jansson-2.15.0

-   [Next](json-glib.md "JSON-GLib-1.10.8")

    JSON-GLib-1.10.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# JSON-C-0.18 {#json-c-0.18}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to JSON-C {#introduction-to-json-c}

The <span class="application">JSON-C</span> implements a reference counting object model that allows you to easily construct JSON objects in C, output them as JSON formatted strings and parse JSON formatted strings back into the C representation of JSON objects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://s3.amazonaws.com/json-c_releases/releases/json-c-0.18.tar.gz">https://s3.amazonaws.com/json-c_releases/releases/json-c-0.18.tar.gz</a>

-   Download MD5 sum: e6593766de7d8aa6e3a7e67ebf1e522f

-   Download size: 396 KB

-   Estimated disk space required: 7.9 MB

-   Estimated build time: 0.2 SBU (with tests)
</div>

### JSON-C Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional (for documentation)

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (for dot tool)
</div>

<div class="installation" lang="en">
## Installation of JSON-C {#installation-of-json-c}

First, fix building this package with CMake-4.0:

```bash
sed -i 's/VERSION 2.8/VERSION 4.0/' apps/CMakeLists.txt  &&
sed -i 's/VERSION 3.9/VERSION 4.0/' tests/CMakeLists.txt
```

Install <span class="application">JSON-C</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_STATIC_LIBS=OFF     \
      .. &&
make
```

If you have installed <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, you can build the documentation by running the following command:

```bash
doxygen doc/Doxyfile
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the documentation, install it by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -d -vm755 /usr/share/doc/json-c-0.18 &&
install -v -m644 doc/html/* /usr/share/doc/json-c-0.18
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libjson-c.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/json-c</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  <a id="libjson-c"></a><span class="term"><code class="filename">libjson-c.so</code></span>   contains the <span class="application">JSON-C</span> API functions
  -------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](jansson.md "Jansson-2.15.0")

    Jansson-2.15.0

-   [Next](json-glib.md "JSON-GLib-1.10.8")

    JSON-GLib-1.10.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

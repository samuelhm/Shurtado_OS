<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](utfcpp.md "utfcpp-4.1.1")

    utfcpp-4.1.1

-   [Next](wayland-protocols.md "Wayland-Protocols-1.48")

    Wayland-Protocols-1.48

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wayland-1.25.0 {#wayland-1.25.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wayland {#introduction-to-wayland}

<span class="application">Wayland</span> is a project to define a protocol for a compositor to talk to its clients as well as a library implementation of the protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.25.0/downloads/wayland-1.25.0.tar.xz">https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.25.0/downloads/wayland-1.25.0.tar.xz</a>

-   Download MD5 sum: bdc1ad361f85cc41b85be99a3bf3d002

-   Download size: 596 KB

-   Estimated disk space required: 9.0 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Wayland Dependencies

#### Required

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> and <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (to build the API documentation) and <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a> and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build the manual pages)
</div>

<div class="installation" lang="en">
## Installation of Wayland {#installation-of-wayland}

Install <span class="application">Wayland</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D documentation=false &&
ninja
```

To test the results, issue: <span class="command"><strong>env -u XDG_RUNTIME_DIR ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D documentation=false`*: This switch is used to disable building of the API documentation. Remove it if you have installed optional dependencies.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">wayland-scanner</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libwayland-client.so, libwayland-cursor.so, libwayland-egl.so, and libwayland-server.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/wayland</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------
  <a id="wayland-scanner"></a><span class="command"><span class="term"><strong>wayland-scanner</strong></span></span>       is a tool to generate proxy methods in wayland-client-protocol.h and wayland-server-protocol.h
  <a id="libwayland-client"></a><span class="term"><code class="filename">libwayland-client.so</code></span>   contains API functions for writing <span class="application">Wayland</span> applications
  <a id="libwayland-cursor"></a><span class="term"><code class="filename">libwayland-cursor.so</code></span>   contains API functions for managing cursors in <span class="application">Wayland</span> applications
  <a id="libwayland-egl"></a><span class="term"><code class="filename">libwayland-egl.so</code></span>         contains API functions for handling OpenGL calls in <span class="application">Wayland</span> applications
  <a id="libwayland-server"></a><span class="term"><code class="filename">libwayland-server.so</code></span>   contains API functions for writing <span class="application">Wayland</span> compositors
  ------------------------------------------------------------------ ------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](utfcpp.md "utfcpp-4.1.1")

    utfcpp-4.1.1

-   [Next](wayland-protocols.md "Wayland-Protocols-1.48")

    Wayland-Protocols-1.48

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

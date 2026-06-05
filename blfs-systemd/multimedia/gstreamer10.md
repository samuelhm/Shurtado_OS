<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gavl.md "gavl-1.4.0")

    gavl-1.4.0

-   [Next](gst10-plugins-base.md "gst-plugins-base-1.28.3")

    gst-plugins-base-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gstreamer-1.28.3 {#gstreamer-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gstreamer {#introduction-to-gstreamer}

<span class="application">gstreamer</span> is a streaming media framework that enables applications to share a common set of plugins for tasks such as video encoding and decoding, audio encoding and decoding, audio and video filters, audio visualisation, web streaming and anything else that streams in real-time or otherwise. This package only provides base functionality and libraries. You may need at least <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a> and one of Good, Bad, Ugly or Libav plugins.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.28.3.tar.xz">https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.28.3.tar.xz</a>

-   Download MD5 sum: a2cb777530dce369316a71bcab116907

-   Download size: 1.9 MB

-   Estimated disk space required: 73 MB (with tests)

-   Estimated build time: 0.3 SBU (Using parallelism=4; with tests)
</div>

### gstreamer Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME)

#### Optional

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for examples), <a class="xref" href="../general/gsl.md" title="gsl-2.8">gsl-2.8</a> (used by one test if installed), <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../general/rust.md" title="Rustc-1.96.0">rustc-1.96.0</a> (for IEEE 1588:2008 PTP clock support), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://github.com/scop/bash-completion/">bash-completion</a>, <a class="ulink" href="https://pypi.org/project/hotdoc/">hotdoc</a>, and <a class="ulink" href="https://sourceware.org/elfutils/">libdw</a>
</div>

<div class="installation" lang="en">
## Installation of gstreamer {#installation-of-gstreamer}

Install <span class="application">gstreamer</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gst_debug=false  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If you are reinstalling <span class="application">gstreamer</span> from a previous version, it is best if you remove the prior version, including plugins, before installing the new version. If there is a mixture of versions installed, using processes may hang or not work properly. As the <code class="systemitem">root</code> user:

```bash
rm -rf /usr/bin/gst-* /usr/{lib,libexec}/gstreamer-1.0
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gst-inspect-1.0, gst-launch-1.0, gst-stats-1.0, gst-tester-1.0, and gst-typefind-1.0</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgstbase-1.0.so, libgstcheck-1.0.so, libgstcontroller-1.0.so, libgstnet-1.0.so, and libgstreamer-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,libexec,share}/gstreamer-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gst-inspect-1.0"></a><span class="command"><span class="term"><strong>gst-inspect-1.0</strong></span></span>             is a tool that prints out information on available <span class="application">gstreamer</span> plugins, information about a particular plugin, or information about a particular element
  <a id="gst-launch-1.0"></a><span class="command"><span class="term"><strong>gst-launch-1.0</strong></span></span>               is a tool that builds and runs basic <span class="application">gstreamer</span> pipelines
  <a id="gst-stats-1.0"></a><span class="command"><span class="term"><strong>gst-stats-1.0</strong></span></span>                 is a tool used to gather statistics about <span class="application">gstreamer</span> operations
  <a id="gst-tester-1.0"></a><span class="command"><span class="term"><strong>gst-tester-1.0</strong></span></span>               runs a test plan in TAP compatible format while integrating with the meson test harness
  <a id="gst-typefind-1.0"></a><span class="command"><span class="term"><strong>gst-typefind-1.0</strong></span></span>           uses the <span class="application">gstreamer</span> type finding system to determine the relevant <span class="application">gstreamer</span> plugin to parse or decode files, and the corresponding MIME type
  <a id="libgstbase-1.0"></a><span class="term"><code class="filename">libgstbase-1.0.so</code></span>               provides some base classes to be extended by elements and utility classes that are most useful for plugin developers
  <a id="libgstcheck-1.0"></a><span class="term"><code class="filename">libgstcheck-1.0.so</code></span>             provides functionality for writing unit tests that use the check framework
  <a id="libgstcontroller-1.0"></a><span class="term"><code class="filename">libgstcontroller-1.0.so</code></span>   provides functionality to animate element properties over time
  <a id="libgstnet-1.0"></a><span class="term"><code class="filename">libgstnet-1.0.so</code></span>                 provides network elements and objects
  <a id="libgstreamer-1.0"></a><span class="term"><code class="filename">libgstreamer-1.0.so</code></span>           provides all of the core <span class="application">gstreamer</span> services, including initialization, plugin management and types, as well as the object hierarchy that defines elements and bins, along with some more specialized elements
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gavl.md "gavl-1.4.0")

    gavl-1.4.0

-   [Next](gst10-plugins-base.md "gst-plugins-base-1.28.3")

    gst-plugins-base-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3")

    gst-plugins-ugly-1.28.3

-   [Next](gst10-libav.md "gst-libav-1.28.3")

    gst-libav-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gst-plugins-rs-1.28.3 {#gst-plugins-rs-1.28.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gst-plugins-rs {#introduction-to-gst-plugins-rs}

The <span class="application">gst-plugins-rs</span> package provides several Rust plugins for interacting with the gstreamer multimedia framework. This page has instructions for libgstdav1d and libgstgtk4.

The libgstdav1d plugin provides AV1 decoding via dav1d through gstreamer.

The libgstgtk4 plugin binds gstreamer to GTK-4.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs/-/archive/gstreamer-1.28.3/gst-plugins-rs-gstreamer-1.28.3.tar.gz">https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs/-/archive/gstreamer-1.28.3/gst-plugins-rs-gstreamer-1.28.3.tar.gz</a>

-   Download MD5 sum: a78c788ae9678052ee6aae49feb6a20a

-   Download size: 3.3 MB

-   Estimated disk space required: 1.3 GB (45 MB installed)

-   Estimated build time: 0.9 SBU
</div>

### gst-plugins-rs Dependencies

#### Required

<a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, and <a class="xref" href="../general/rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

#### Required for libgstdav1d

<a class="xref" href="dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>

#### Required for libgstgtk4

<a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of gst-plugins-rs {#installation-of-gst-plugins-rs}

<div class="sect3" lang="en">
### Installation of libgstdav1d {#installation-of-libgstdav1d}

Install <span class="application">libgstdav1d</span> by running the following commands:

```bash
cargo build --package gst-plugin-dav1d --release
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm755 target/release/libgstdav1d.so /usr/lib/gstreamer-1.0
```
</div>

<div class="sect3" lang="en">
### Installation of libgstgtk4 {#installation-of-libgstgtk4}

Install <span class="application">libgstgtk4</span> by running the following commands:

```bash
cargo build --package gst-plugin-gtk4 --release
```

This package does not come with a test suite, but its basic functionality can be tested after installation.

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm755 target/release/libgstgtk4.so /usr/lib/gstreamer-1.0
```

To test the basic functionality of the package, issue: <span class="command"><strong>gst-launch-1.0 videotestsrc num-buffers=60 ! gtk4paintablesink</strong></span> in a graphical terminal emulator. It should play a test video in a GTK-4 window for 2 seconds.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgstdav1d.so and libgstgtk4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------
  <a id="libgstdav1d"></a><span class="term"><code class="filename">libgstdav1d.so</code></span>   provides a binding between dav1d and the gstreamer multimedia framework
  <a id="libgstgtk4"></a><span class="term"><code class="filename">libgstgtk4.so</code></span>     provides a binding between GTK-4 and the gstreamer multimedia framework
  ------------------------------------------------------ -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gst10-plugins-ugly.md "gst-plugins-ugly-1.28.3")

    gst-plugins-ugly-1.28.3

-   [Next](gst10-libav.md "gst-libav-1.28.3")

    gst-libav-1.28.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

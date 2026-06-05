<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libclc.md "libclc-22.1.0")

    libclc-22.1.0

-   [Next](libdaemon.md "libdaemon-0.14")

    libdaemon-0.14

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcloudproviders-0.3.6 {#libcloudproviders-0.3.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcloudproviders {#introduction-to-libcloudproviders}

The <span class="application">libcloudproviders</span> package contains a library which provides a DBus API that allows cloud storage sync clients to expose their services.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libcloudproviders/0.3/libcloudproviders-0.3.6.tar.xz">https://download.gnome.org/sources/libcloudproviders/0.3/libcloudproviders-0.3.6.tar.xz</a>

-   Download MD5 sum: f0f994bdc36fdfe9b31e3655b8071599

-   Download size: 24 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libcloudproviders Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libcloudproviders {#installation-of-libcloudproviders}

Install <span class="application">libcloudproviders</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D enable-gtk-doc</code>: Use this switch if you have <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to generate the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcloudproviders.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/cloudproviders</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
  <a id="libcloudproviders-lib"></a><span class="term"><code class="filename">libcloudproviders.so</code></span>   contains functions that provide a DBus API to allow cloud storage sync clients to expose their services
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libclc.md "libclc-22.1.0")

    libclc-22.1.0

-   [Next](libdaemon.md "libdaemon-0.14")

    libdaemon-0.14

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

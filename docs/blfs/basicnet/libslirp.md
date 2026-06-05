<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libpsl.md "libpsl-0.21.5")

    libpsl-0.21.5

-   [Next](libsoup3.md "libsoup-3.6.6")

    libsoup-3.6.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libslirp-4.9.3 {#libslirp-4.9.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libslirp {#introduction-to-libslirp}

<span class="application">Libslirp</span> is a user-mode networking library used by virtual machines, containers or various tools.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v4.9.3/libslirp-v4.9.3.tar.bz2">https://gitlab.freedesktop.org/slirp/libslirp/-/archive/v4.9.3/libslirp-v4.9.3.tar.bz2</a>

-   Download MD5 sum: bf2162cee75eef0faf0eb3fe60ec0da3

-   Download size: 132 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libslirp Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>
</div>

<div class="installation" lang="en">
## Installation of Libslirp {#installation-of-libslirp}

Install <span class="application">libslirp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&

ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libslirp.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/slirp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------
  <a id="libslirp-lib"></a><span class="term"><code class="filename">libclirp.so</code></span>   contains user-mode TCP-IP emulation functions
  ---------------------------------------------------- -----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libpsl.md "libpsl-0.21.5")

    libpsl-0.21.5

-   [Next](libsoup3.md "libsoup-3.6.6")

    libsoup-3.6.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

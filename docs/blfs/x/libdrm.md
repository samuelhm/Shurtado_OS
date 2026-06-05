<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libhandy1.md "libhandy-1.8.3")

    libhandy-1.8.3

-   [Next](libepoxy.md "libepoxy-1.5.10")

    libepoxy-1.5.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Libdrm-2.4.134 {#libdrm-2.4.134}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libdrm {#introduction-to-libdrm}

<span class="application">Libdrm</span> provides a userspace library for accessing the direct rendering manager (DRM) on operating systems that support the ioctl interface. Libdrm is a low-level library, typically used by graphics drivers such as the Mesa DRI drivers, the X drivers, libva and similar projects.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://dri.freedesktop.org/libdrm/libdrm-2.4.134.tar.xz">https://dri.freedesktop.org/libdrm/libdrm-2.4.134.tar.xz</a>

-   Download MD5 sum: 0e70607bb5c2f7ecbc411e6a2fab8b22

-   Download size: 428 KB

-   Estimated disk space required: 7.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libdrm Dependencies

#### Recommended

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a> (for Intel KMS API support required by Mesa)

#### Optional

<a class="xref" href="cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> (for tests), <a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> (could be used to find dependencies without pkgconfig files), <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, and <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (to build manual pages), <a class="xref" href="../general/libatomic_ops.md" title="libatomic_ops-7.10.0">libatomic_ops-7.10.0</a> (required by architectures without native atomic operations), <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://cunit.sourceforge.net/">CUnit</a> (for AMDGPU tests)
</div>

<div class="installation" lang="en">
## Installation of Libdrm {#installation-of-libdrm}

Install <span class="application">libdrm</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX \
            --buildtype=release   \
            -D udev=true          \
            -D valgrind=disabled  \
            ..                    &&
ninja
```

To check the results, issue <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D udev=true`*: This parameter enables support for using <span class="application">Udev</span> instead of <span class="command"><strong>mknod</strong></span>.

*`-D valgrind=disabled`*: This parameter disables building libdrm with valgrind support. This fixes building some packages that use libdrm. Change this parameter to "enabled" (or remove it) if you need support for valgrind.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdrm_amdgpu.so, libdrm_intel.so, libdrm_nouveau.so, libdrm_radeon.so, and libdrm.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libdrm and /usr/share/libdrm</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------
  <a id="libdrm_amdgpu"></a><span class="term"><code class="filename">libdrm_amdgpu.so</code></span>     contains the AMDGPU specific Direct Rendering Manager functions
  <a id="libdrm_intel"></a><span class="term"><code class="filename">libdrm_intel.so</code></span>       contains the Intel specific Direct Rendering Manager functions
  <a id="libdrm_nouveau"></a><span class="term"><code class="filename">libdrm_nouveau.so</code></span>   contains the open source nVidia (Nouveau) specific Direct Rendering Manager functions
  <a id="libdrm_radeon"></a><span class="term"><code class="filename">libdrm_radeon.so</code></span>     contains the AMD Radeon specific Direct Rendering Manager functions
  <a id="libdrm-lib"></a><span class="term"><code class="filename">libdrm.so</code></span>               contains the Direct Rendering Manager API functions
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libhandy1.md "libhandy-1.8.3")

    libhandy-1.8.3

-   [Next](libepoxy.md "libepoxy-1.5.10")

    libepoxy-1.5.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

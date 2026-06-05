<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libuv.md "libuv-1.52.1")

    libuv-1.52.1

-   [Next](libxml2.md "libxml2-2.15.3")

    libxml2-2.15.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libxkbcommon-1.13.2 {#libxkbcommon-1.13.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libxkbcommon {#introduction-to-libxkbcommon}

<span class="application">libxkbcommon</span> is a keymap compiler and support library which processes a reduced subset of keymaps as defined by the XKB specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/libxkbcommon/archive/v1.13.2/libxkbcommon-1.13.2.tar.gz">https://github.com/lfs-book/libxkbcommon/archive/v1.13.2/libxkbcommon-1.13.2.tar.gz</a>

-   Download MD5 sum: 07f838f575d62c267cfc53eaf5ee739b

-   Download size: 1.2 MB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own <code class="literal">lfs-book</code> namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like <span class="command"><strong>wget</strong></span>). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
</div>

### libxkbcommon Dependencies

#### Required

<a class="xref" href="../x/xkeyboard-config.md" title="XKeyboardConfig-2.47">xkeyboard-config-2.47</a> (runtime)

#### Recommended

<a class="xref" href="../x/libxcb.md" title="libxcb-1.17.0">libxcb-1.17.0</a>, <a class="xref" href="wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, and <a class="xref" href="wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for generating the documentation) and <span class="command"><strong>Xvfb</strong></span> (from <a class="xref" href="../x/xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> or <a class="xref" href="../x/xwayland.md" title="Xwayland-24.1.12">Xwayland-24.1.12</a>)
</div>

<div class="installation" lang="en">
## Installation of libxkbcommon {#installation-of-libxkbcommon}

Install <span class="application">libxkbcommon</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D enable-docs=false &&
ninja
```

To test the results, ensure <span class="command"><strong>Xvfb</strong></span> and <a class="xref" href="../x/xkeyboard-config.md" title="XKeyboardConfig-2.47">xkeyboard-config-2.47</a> are available, then issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D enable-docs=true</code>: This switch enables documentation generation. <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> is required.

<span class="command"><strong>mv -v /usr/share/doc/libxkbcommon{,-1.13.2}</strong></span>: If you built the documentation, use this command to install it in a versioned directory.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xkbcli</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libxkbcommon.so, libxkbcommon-x11.so, and libxkbregistry.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xkbcommon, /usr/libexec/xkbcommon, and (optionally) /usr/share/doc/libxkbcommon-1.13.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------
  <a id="xkbcli"></a><span class="command"><span class="term"><strong>xkbcli</strong></span></span>                       provides a debugger and compiler for XKB keymaps
  <a id="libxkbcommon-lib"></a><span class="term"><code class="filename">libxkbcommon.so</code></span>       contains the <span class="application">libxkbcommon</span> API functions
  <a id="libxkbcommon-x11"></a><span class="term"><code class="filename">libxkbcommon-x11.so</code></span>   contains the <span class="application">libxkbcommon</span> X11 specific API functions
  <a id="libxkbregistry"></a><span class="term"><code class="filename">libxkbregistry.so</code></span>       contains a list of available XKB models, layouts, and variants for a given ruleset
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libuv.md "libuv-1.52.1")

    libuv-1.52.1

-   [Next](libxml2.md "libxml2-2.15.3")

    libxml2-2.15.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

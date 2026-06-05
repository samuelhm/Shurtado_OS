<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](glm.md "GLM-1.0.3")

    GLM-1.0.3

-   [Next](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1")

    libglycin-gtk4 from glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# glycin-2.1.1 {#glycin-2.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to glycin {#introduction-to-glycin}

The <span class="application">glycin</span> package contains a sandboxed and extendable image loading framework.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz">https://download.gnome.org/sources/glycin/2.1/glycin-2.1.1.tar.xz</a>

-   Download MD5 sum: 411550c5da777a952bb6c811fd882156

-   Download size: 6.8 MB

-   Estimated disk space required: 1.4 GB (with documentation, add 1 GB for tests)

-   Estimated build time: 3.8 SBU (with documentation, add 2.5 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended patch (required if installing Xorg into <code class="filename">/opt</code>): <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/glycin-2.1.1-xorg_prefix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/glycin-2.1.1-xorg_prefix-1.patch</a>
</div>

### glycin Dependencies

#### Required

<a class="xref" href="bubblewrap.md" title="Bubblewrap-0.11.2">bubblewrap-0.11.2</a> (runtime), <a class="xref" href="fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended), <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libseccomp.md" title="libseccomp-2.6.0">libseccomp-2.6.0</a>, and <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>

#### Recommended

<a class="xref" href="libheif.md" title="libheif-1.23.0">libheif-1.23.0</a>, <a class="xref" href="libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> (for the test suite), and <a class="ulink" href="https://libopenraw.freedesktop.org/">libopenraw</a>
</div>

<div class="installation" lang="en">
## Installation of glycin {#installation-of-glycin}

If installing Xorg into <code class="filename">/opt</code>, download the needed Rust crates now and apply a patch to allow accessing <code class="filename">$XORG_PREFIX/lib</code> from the sandbox (note that the patch requires <code class="envar">XORG_PREFIX</code> to be set properly for both the current user and for <code class="systemitem">root</code> following <a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a> before building glycin):

```bash
cargo vendor &&
patch -Np1 -i ../glycin-2.1.1-xorg_prefix-1.patch
```

Fix a build error when a system <span class="application">libglycin</span> is not yet installed:

```bash
sed -e "s/get_option('libglycin-gtk4')/(& or get_option('glycin-thumbnailer'))/" \
    -i meson.build
```

Install <span class="application">glycin</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr           \
            --buildtype=release     \
            -D libglycin-gtk4=false \
            -D tests=false ..       &&
ninja
```

If you have installed <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, you can build the documentation by issuing:

```bash
sed "/install_dir:.*doc/s|,$| / 'glycin-' + meson.project_version()&|" \
    -i ../libglycin/meson.build &&

meson configure -D capi_docs=true &&
ninja
```

To test the results, ensure <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> is installed, then issue: <span class="command"><strong>meson configure -D tests=true && ninja test</strong></span>.

Now as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D glycin_gtk4=false`*: This parameter disables the build of <code class="systemitem">libglycin-gtk4</code>. This library will be built separately as <a class="xref" href="glycin-gtk4.md" title="libglycin-gtk4 from glycin-2.1.1">libglycin-gtk4 from glycin-2.1.1</a>, to avoid a circular dependency.

<code class="option">-D glycin-loaders=...</code>: Use this option to specify the image loaders to be built. The default is <code class="literal">glycin-heif,glycin-image-rs,glycin-jxl,glycin-svg</code>, covering support for all commonly used image formats. You may remove the <code class="literal">glycin-heif</code>, <code class="literal">glycin-jxl</code>, or <code class="literal">glycin-svg</code> loader if the corresponding recommended dependency is not installed, but doing so will cause test failures and hamper the functionality of this package. There is also a loader for the RAW format but it is not enabled by default.

<code class="option">-D vapi=false</code>: This option allows building this package without <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">glycin-thumbnailer</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libglycin-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/glycin-2, /usr/libexec/glycin-loaders, /usr/share/glycin-loaders, and optionally /usr/share/doc/glycin-2.1.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------
  <a id="glycin-thumbnailer"></a><span class="command"><span class="term"><strong>glycin-thumbnailer</strong></span></span>   creates thumbnails for images in a format supported by glycin
  <a id="libglycin-2"></a><span class="term"><code class="filename">libglycin-2.so</code></span>                 contains image loading functions which work by running glycin loaders in a sandbox environment
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glm.md "GLM-1.0.3")

    GLM-1.0.3

-   [Next](glycin-gtk4.md "libglycin-gtk4 from glycin-2.1.1")

    libglycin-gtk4 from glycin-2.1.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

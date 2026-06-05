<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xkeyboard-config.md "XKeyboardConfig-2.47")

    XKeyboardConfig-2.47

-   [Next](xorg-server.md "Xorg-Server-21.1.23")

    Xorg-Server-21.1.23

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xwayland-24.1.12 {#xwayland-24.1.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xwayland {#introduction-to-xwayland}

The <span class="application">Xwayland</span> package is an Xorg server running on top of the wayland server. It has been separated from the main Xorg server package. It allows running X clients inside a wayland session.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/xserver/xwayland-24.1.12.tar.xz">https://www.x.org/pub/individual/xserver/xwayland-24.1.12.tar.xz</a>

-   Download MD5 sum: 0b50c13c4bc2a72a39daf322500cae34

-   Download size: 1.2 MB

-   Estimated disk space required: 29 MB (add 357 MB for tests)

-   Estimated build time: 0.2 SBU (with parallelism=4; add 1.7 SBU for tests, not including clone time)
</div>

### Xwayland Dependencies

#### Required

<a class="xref" href="libxcvt.md" title="libxcvt-0.1.3">libxcvt-0.1.3</a>, <a class="xref" href="../general/pixman.md" title="Pixman-0.46.4">Pixman-0.46.4</a>, <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a>, <a class="xref" href="x7app.md" title="Xorg Applications">Xorg Applications</a> (runtime), and <a class="xref" href="x7font.md" title="Xorg Fonts">Xorg Fonts</a> (only font-util)

#### Recommended

<a class="xref" href="libepoxy.md" title="libepoxy-1.5.10">libepoxy-1.5.10</a>, <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, and <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>

#### Optional

<a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a> (to download packages needed for the tests), <a class="xref" href="libei.md" title="libei-1.6.0">libei-1.6.0</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../postlfs/nettle.md" title="Nettle-4.0">Nettle-4.0</a>, <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a>, <a class="xref" href="x7legacy.md" title="Xorg Legacy">Xorg Legacy Fonts</a> (only bdftopcf, for building fonts required for the tests), <a class="ulink" href="https://gitlab.freedesktop.org/xorg/test/rendercheck">rendercheck</a> (for tests), and <a class="ulink" href="https://wayland.pages.freedesktop.org/weston/">weston</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of Xwayland {#installation-of-xwayland}

Install <span class="application">xwayland</span> by running the following commands:

```bash
sed -i '/install_man/,$d' meson.build &&

mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -D xkb_output_dir=/var/lib/xkb &&
ninja
```

Building the test framework needs some work. First, <a class="ulink" href="https://wayland.pages.freedesktop.org/weston/">weston</a> brings in several dependencies, but the number can be reduced by disabling unneeded features. The <span class="command"><strong>meson</strong></span> command for a stripped down build of <span class="application">weston</span> is shown in <a class="ulink" href="https://gitlab.freedesktop.org/xorg/xserver/-/blob/xwayland-22.1/.gitlab-ci/debian-install.sh">Upstream continuous integration build</a>.

Running the tests involves downloading two other frameworks, in addition to the mentioned optional dependencies:

```bash
mkdir tools &&
pushd tools &&

git clone https://gitlab.freedesktop.org/mesa/piglit.git --depth 1 &&
cat > piglit/piglit.conf << EOF                                    &&
[xts]
path=$(pwd)/xts
EOF

git clone https://gitlab.freedesktop.org/xorg/test/xts --depth 1   &&

export DISPLAY=:22           &&
../hw/vfb/Xvfb $DISPLAY &
VFB_PID=$!                   &&
cd xts                       &&
CFLAGS=-fcommon ./autogen.sh &&
make                         &&
kill $VFB_PID                &&
unset DISPLAY VFB_PID        &&
popd
```

Then the tests can be run with:

```bash
XTEST_DIR=$(pwd)/tools/xts PIGLIT_DIR=$(pwd)/tools/piglit ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> is not installed and you do not plan to install it later, you can install <span class="command"><strong>Xvfb</strong></span> from this package. As the <code class="systemitem">root</code> user:

```bash
install -vm755 hw/vfb/Xvfb /usr/bin
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i '/install_man/,\$d' meson.build</strong></span>: Prevents installing a manual page for <span class="command"><strong>Xserver</strong></span>, which is also provided by <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a>. Remove this command if <a class="xref" href="xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> is not installed and you don't plan to install it later.

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D secure-rpc=false</code>: This option disables building RPC support if <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a> is not installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">Xwayland</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------------
  <a id="Xwayland"></a><span class="command"><span class="term"><strong>Xwayland</strong></span></span>   Allows X clients to run under wayland
  ------------------------------------------------ ---------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xkeyboard-config.md "XKeyboardConfig-2.47")

    XKeyboardConfig-2.47

-   [Next](xorg-server.md "Xorg-Server-21.1.23")

    Xorg-Server-21.1.23

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xwayland.md "Xwayland-24.1.12")

    Xwayland-24.1.12

-   [Next](x7driver.md "Xorg Input Drivers")

    Xorg Input Drivers

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Xorg-Server-21.1.23 {#xorg-server-21.1.23}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Xorg Server {#introduction-to-xorg-server}

The <span class="application">Xorg</span> Server is the core of the X Window system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz">https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz</a>

-   Download MD5 sum: 3af3db8a16142f86490b17349beab67f

-   Download size: 4.8 MB

-   Estimated disk space required: 153 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   With the removal of the xf86-video-\* drivers, the TearFree option is no longer functional. To work around this, upstream has added the TearFree option to the default modesetting driver. This patch backports this feature. Apply this patch if you are going to use Xorg in an environment without a compositor (such as TWM, IceWM, Openbox, or Fluxbox).

    Optional patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/xorg-server-21.1.23-tearfree_backport-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/xorg-server-21.1.23-tearfree_backport-1.patch</a>
</div>

### Xorg Server Dependencies

#### Required

<a class="xref" href="libxcvt.md" title="libxcvt-0.1.3">libxcvt-0.1.3</a>, <a class="xref" href="../general/pixman.md" title="Pixman-0.46.4">Pixman-0.46.4</a>, <a class="xref" href="x7font.md" title="Xorg Fonts">Xorg Fonts</a> (only font-util), and at runtime: <a class="xref" href="xkeyboard-config.md" title="XKeyboardConfig-2.47">xkeyboard-config-2.47</a>

#### Recommended

<a class="xref" href="libepoxy.md" title="libepoxy-1.5.10">libepoxy-1.5.10</a> (needed for glamor), <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (runtime),</span> and <a class="xref" href="x7driver.md#xorg-libinput-driver" title="Xorg Libinput Driver-1.5.0">xorg-libinput-1.5.0</a> (runtime)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Although it's possible to run the Xorg server without <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a> (rebuilt with PAM)</span> functioning, it would require running the Xorg server as the <code class="systemitem">root</code> user or Xorg server will malfunction or even fail to start. The BLFS editors strongly discourage skipping <span class="phrase">this dependency</span>. Do not attempt to do so unless you really know what you are doing.
</div>

#### Optional

<a class="xref" href="../general/acpid.md" title="acpid-2.0.34">acpid-2.0.34</a> (runtime), <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to build API documentation), <a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a> (to build documentation), <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../postlfs/nettle.md" title="Nettle-4.0">Nettle-4.0</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="xcb-utilities.md" title="XCB Utilities">XCB Utilities</a> (to build Xephyr), <a class="xref" href="../pst/xmlto.md" title="xmlto-0.0.29">xmlto-0.0.29</a> (to build documentation), <a class="xref" href="xkeyboard-config.md" title="XKeyboardConfig-2.47">xkeyboard-config-2.47</a> (for tests), <a class="ulink" href="https://gitlab.freedesktop.org/xorg/test/rendercheck">rendercheck</a> (for tests), and <a class="ulink" href="https://www.x.org/archive/individual/doc/">xorg-sgml-doctools</a> (to build documentation)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

The traditional Device Dependent X (DDX) drivers have been removed from BLFS in favor of the <code class="filename">modesetting_drv</code> driver which will be built as a part of this package. To use the <code class="filename">modesetting_drv</code> driver, the kernel must provide a Direct Rendering Manager (DRM) driver for your GPU.

If your GPU supports 3D acceleration and <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a> provides a Gallium3D driver for utilizing its 3D capability, you should have already enabled the necessary kernel configuration options in <a class="xref" href="mesa.md#mesa-kernel" title="Kernel Configuration">Mesa Kernel Configuration</a>. Otherwise, you need to find the kernel configuration option of the DRM driver for the GPU and enable it. Notably, the virtual GPUs provided by some virtual machine managers:

```console
Device Drivers --->
  Graphics support --->
    <*/M>   Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    < /*/M> DRM driver for VMware Virtual GPU                       [DRM_VMWGFX]
    < /*/M> DRM Support for bochs dispi vga interface (qemu stdvga)  [DRM_BOCHS]
    < /*/M> Virtual Box Graphics Card                            [DRM_VBOXVIDEO]
```

If the kernel does not provide a DRM driver for your GPU, on most x86 systems the <span class="quote">“<span class="quote">simple frame buffer</span>”</span> DRM driver running on VESA or UEFI frame buffer can be used as a fallback. Enable the following options in the kernel configurations if you don't have a dedicated DRM driver for the GPU, or you want to keep the simple frame buffer driver as a fallback in case the dedicated driver fails:

```console
Device Drivers --->
  Firmware Drivers --->
    [*] Mark VGA/VBE/EFI FB as generic system framebuffer       [SYSFB_SIMPLEFB]
  Graphics support --->
    <*> Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    Drivers for system framebuffers --->
      <*> Simple framebuffer driver                              [DRM_SIMPLEDRM]
```

To allow the kernel to print debug messages at an early boot stage, <code class="option">CONFIG_DRM</code> and <code class="option">CONFIG_DRM_SIMPLEDRM</code> should not be built as kernel modules unless an initramfs will be used.

If you want to use the simple frame buffer driver on a system booted via BIOS (instead of UEFI), add the following line before the first <code class="literal">menuentry</code> block in the <code class="filename">/boot/grub/grub.cfg</code> file to initialize the VESA frame buffer:

```console
set gfxpayload=1024x768x32
```

You may replace <code class="literal">1024</code>, <code class="literal">768</code>, and <code class="literal">32</code> with a resolution and color depth setting suitable for your monitor.

If all of these DRM drivers do not work for you and you need to use a DDX driver with a non-DRM kernel GPU driver (usually named <code class="option">CONFIG_FB_*</code> in the kernel configuration, or existing as out-tree kernel modules), or you need an device specific functionality requiring a DDX driver, consult <a class="ulink" href="https://www.linuxfromscratch.org/blfs/view/11.3/x/x7driver.md">a prior version of BLFS</a>, or <a class="ulink" href="https://www.linuxfromscratch.org/blfs/view/7.6/x/x7driver.md">an even earlier prior version</a> for more DDX drivers.
</div>

<div class="installation" lang="en">
## Installation of Xorg Server {#installation-of-xorg-server}

First, if you need the TearFree option to work around screen tearing, apply the backported patch:

```bash
patch -Np1 -i ../xorg-server-21.1.23-tearfree_backport-1.patch
```

Install the server by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --localstatedir=/var  \
      -D glamor=true        \
      -D xkb_output_dir=/var/lib/xkb &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. You will need to run <span class="command"><strong>ldconfig</strong></span> as the <code class="systemitem">root</code> user first or some tests may fail.

Now as the <code class="systemitem">root</code> user:

```bash
ninja install &&
mkdir -pv /etc/X11/xorg.conf.d
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D glamor=true`*: Ensure building the Glamor module. It's needed to build the <code class="filename">modesetting_drv</code> driver which replaces the traditional Device Dependent X (DDX) drivers.

<code class="option">-D secure-rpc=false</code>: This option disables building RPC support if <a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a> is not installed.

<code class="option">-D suid_wrapper=true</code>: Builds the suid-root wrapper for legacy DDX driver support on rootless xserver systems.

<code class="option">-D xephyr=true</code>: This option allows building Xephyr if its dependencies are met.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gtf, X, Xnest, Xorg, Xvfb, and optionally Xephyr</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">several under \$XORG_PREFIX/lib/xorg/modules/ including the <code class="filename">modesetting_drv</code> driver</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/X11/xorg.conf.d, \$XORG_PREFIX/include/xorg, \$XORG_PREFIX/lib/xorg, and \$XORG_PREFIX/share/X11/xorg.conf.d</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gtf-x7"></a><span class="command"><span class="term"><strong>gtf</strong></span></span>                           calculates VESA GTF mode lines
  <a id="X-x7"></a><span class="command"><span class="term"><strong>X</strong></span></span>                               is a symbolic link to Xorg
  <a id="Xephyr-x7"></a><span class="command"><span class="term"><strong>Xephyr</strong></span></span>                     is a nested X server which supports modern X extensions
  <a id="Xnest-x7"></a><span class="command"><span class="term"><strong>Xnest</strong></span></span>                       is a nested X server
  <a id="Xorg-x7"></a><span class="command"><span class="term"><strong>Xorg</strong></span></span>                         is the X11R7 X Server
  <a id="Xvfb-x7"></a><span class="command"><span class="term"><strong>Xvfb</strong></span></span>                         is the virtual framebuffer X server for X Version 11
  <a id="modesetting_drv-x7"></a><span class="term"><code class="filename">modesetting_drv.so</code></span>   provides a video driver for machines using Kernel Mode Setting (KMS). This will use glamor if that has been enabled and the hardware offers acceleration
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xwayland.md "Xwayland-24.1.12")

    Xwayland-24.1.12

-   [Next](x7driver.md "Xorg Input Drivers")

    Xorg Input Drivers

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

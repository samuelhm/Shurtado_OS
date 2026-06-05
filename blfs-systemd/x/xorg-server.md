::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xwayland.md "Xwayland-24.1.12"){accesskey="p"}

    Xwayland-24.1.12

-   [Next](x7driver.md "Xorg Input Drivers"){accesskey="n"}

    Xorg Input Drivers

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg-server}Xorg-Server-21.1.23 {#xorg-server-21.1.23 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Xorg Server {#introduction-to-xorg-server .sect2}

The [Xorg]{.application} Server is the core of the X Window system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz](https://www.x.org/pub/individual/xserver/xorg-server-21.1.23.tar.xz){.ulink}

-   Download MD5 sum: 3af3db8a16142f86490b17349beab67f

-   Download size: 4.8 MB

-   Estimated disk space required: 153 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; with tests)
:::

### Additional Downloads

::: itemizedlist
-   With the removal of the xf86-video-\* drivers, the TearFree option is no longer functional. To work around this, upstream has added the TearFree option to the default modesetting driver. This patch backports this feature. Apply this patch if you are going to use Xorg in an environment without a compositor (such as TWM, IceWM, Openbox, or Fluxbox).

    Optional patch: [https://www.linuxfromscratch.org/patches/blfs/svn/xorg-server-21.1.23-tearfree_backport-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/xorg-server-21.1.23-tearfree_backport-1.patch){.ulink}
:::

### Xorg Server Dependencies

#### Required

[libxcvt-0.1.3](libxcvt.md "libxcvt-0.1.3"){.xref}, [Pixman-0.46.4](../general/pixman.md "Pixman-0.46.4"){.xref}, [Xorg Fonts](x7font.md "Xorg Fonts"){.xref} (only font-util), and at runtime: [xkeyboard-config-2.47](xkeyboard-config.md "XKeyboardConfig-2.47"){.xref}

#### Recommended

[libepoxy-1.5.10](libepoxy.md "libepoxy-1.5.10"){.xref} (needed for glamor), [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}, [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (runtime),]{.phrase} and [xorg-libinput-1.5.0](x7driver.md#xorg-libinput-driver "Xorg Libinput Driver-1.5.0"){.xref} (runtime)

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Although it's possible to run the Xorg server without [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref} (rebuilt with PAM)]{.phrase} functioning, it would require running the Xorg server as the `root`{.systemitem} user or Xorg server will malfunction or even fail to start. The BLFS editors strongly discourage skipping [this dependency]{.phrase}. Do not attempt to do so unless you really know what you are doing.
:::

#### Optional

[acpid-2.0.34](../general/acpid.md "acpid-2.0.34"){.xref} (runtime), [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (to build API documentation), [fop-2.11](../pst/fop.md "fop-2.11"){.xref} (to build documentation), [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [Nettle-4.0](../postlfs/nettle.md "Nettle-4.0"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [XCB Utilities](xcb-utilities.md "XCB Utilities"){.xref} (to build Xephyr), [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (to build documentation), [xkeyboard-config-2.47](xkeyboard-config.md "XKeyboardConfig-2.47"){.xref} (for tests), [rendercheck](https://gitlab.freedesktop.org/xorg/test/rendercheck){.ulink} (for tests), and [xorg-sgml-doctools](https://www.x.org/archive/individual/doc/){.ulink} (to build documentation)
:::::::

::: {.kernel lang="en"}
## []{#xorg-server-kernel}Kernel Configuration {#kernel-configuration .sect2}

The traditional Device Dependent X (DDX) drivers have been removed from BLFS in favor of the `modesetting_drv`{.filename} driver which will be built as a part of this package. To use the `modesetting_drv`{.filename} driver, the kernel must provide a Direct Rendering Manager (DRM) driver for your GPU.

If your GPU supports 3D acceleration and [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref} provides a Gallium3D driver for utilizing its 3D capability, you should have already enabled the necessary kernel configuration options in [Mesa Kernel Configuration](mesa.md#mesa-kernel "Kernel Configuration"){.xref}. Otherwise, you need to find the kernel configuration option of the DRM driver for the GPU and enable it. Notably, the virtual GPUs provided by some virtual machine managers:

``` screen
Device Drivers --->
  Graphics support --->
    <*/M>   Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    < /*/M> DRM driver for VMware Virtual GPU                       [DRM_VMWGFX]
    < /*/M> DRM Support for bochs dispi vga interface (qemu stdvga)  [DRM_BOCHS]
    < /*/M> Virtual Box Graphics Card                            [DRM_VBOXVIDEO]
```

If the kernel does not provide a DRM driver for your GPU, on most x86 systems the [“[simple frame buffer]{.quote}”]{.quote} DRM driver running on VESA or UEFI frame buffer can be used as a fallback. Enable the following options in the kernel configurations if you don't have a dedicated DRM driver for the GPU, or you want to keep the simple frame buffer driver as a fallback in case the dedicated driver fails:

``` screen
Device Drivers --->
  Firmware Drivers --->
    [*] Mark VGA/VBE/EFI FB as generic system framebuffer       [SYSFB_SIMPLEFB]
  Graphics support --->
    <*> Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    Drivers for system framebuffers --->
      <*> Simple framebuffer driver                              [DRM_SIMPLEDRM]
```

To allow the kernel to print debug messages at an early boot stage, `CONFIG_DRM`{.option} and `CONFIG_DRM_SIMPLEDRM`{.option} should not be built as kernel modules unless an initramfs will be used.

If you want to use the simple frame buffer driver on a system booted via BIOS (instead of UEFI), add the following line before the first `menuentry`{.literal} block in the `/boot/grub/grub.cfg`{.filename} file to initialize the VESA frame buffer:

``` screen
set gfxpayload=1024x768x32
```

You may replace `1024`{.literal}, `768`{.literal}, and `32`{.literal} with a resolution and color depth setting suitable for your monitor.

If all of these DRM drivers do not work for you and you need to use a DDX driver with a non-DRM kernel GPU driver (usually named `CONFIG_FB_*`{.option} in the kernel configuration, or existing as out-tree kernel modules), or you need an device specific functionality requiring a DDX driver, consult [a prior version of BLFS](https://www.linuxfromscratch.org/blfs/view/11.3/x/x7driver.md){.ulink}, or [an even earlier prior version](https://www.linuxfromscratch.org/blfs/view/7.6/x/x7driver.md){.ulink} for more DDX drivers.
:::

::: {.installation lang="en"}
## Installation of Xorg Server {#installation-of-xorg-server .sect2}

First, if you need the TearFree option to work around screen tearing, apply the backported patch:

``` userinput
patch -Np1 -i ../xorg-server-21.1.23-tearfree_backport-1.patch
```

Install the server by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --localstatedir=/var  \
      -D glamor=true        \
      -D xkb_output_dir=/var/lib/xkb &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. You will need to run [**ldconfig**]{.command} as the `root`{.systemitem} user first or some tests may fail.

Now as the `root`{.systemitem} user:

``` root
ninja install &&
mkdir -pv /etc/X11/xorg.conf.d
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D glamor=true`*: Ensure building the Glamor module. It's needed to build the `modesetting_drv`{.filename} driver which replaces the traditional Device Dependent X (DDX) drivers.

`-D secure-rpc=false`{.option}: This option disables building RPC support if [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref} is not installed.

`-D suid_wrapper=true`{.option}: Builds the suid-root wrapper for legacy DDX driver support on rootless xserver systems.

`-D xephyr=true`{.option}: This option allows building Xephyr if its dependencies are met.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gtf, X, Xnest, Xorg, Xvfb, and optionally Xephyr]{.segbody}
:::

::: seg
**Installed Libraries:** [several under \$XORG_PREFIX/lib/xorg/modules/ including the `modesetting_drv`{.filename} driver]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/X11/xorg.conf.d, \$XORG_PREFIX/include/xorg, \$XORG_PREFIX/lib/xorg, and \$XORG_PREFIX/share/X11/xorg.conf.d]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gtf-x7}[[**gtf**]{.command}]{.term}                           calculates VESA GTF mode lines
  []{#X-x7}[[**X**]{.command}]{.term}                               is a symbolic link to Xorg
  []{#Xephyr-x7}[[**Xephyr**]{.command}]{.term}                     is a nested X server which supports modern X extensions
  []{#Xnest-x7}[[**Xnest**]{.command}]{.term}                       is a nested X server
  []{#Xorg-x7}[[**Xorg**]{.command}]{.term}                         is the X11R7 X Server
  []{#Xvfb-x7}[[**Xvfb**]{.command}]{.term}                         is the virtual framebuffer X server for X Version 11
  []{#modesetting_drv-x7}[`modesetting_drv.so`{.filename}]{.term}   provides a video driver for machines using Kernel Mode Setting (KMS). This will use glamor if that has been enabled and the hardware offers acceleration
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](xwayland.md "Xwayland-24.1.12"){accesskey="p"}

    Xwayland-24.1.12

-   [Next](x7driver.md "Xorg Input Drivers"){accesskey="n"}

    Xorg Input Drivers

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

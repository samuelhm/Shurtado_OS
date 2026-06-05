::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xinit.md "xinit-1.4.4"){accesskey="p"}

    xinit-1.4.4

-   [Next](tuning-fontconfig.md "Tuning Fontconfig"){accesskey="n"}

    Tuning Fontconfig

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xorg-config}Xorg-7 Testing and Configuration {#xorg-7-testing-and-configuration .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::::: {.sect2 lang="en"}
## []{#X11-testing}Testing Xorg {#testing-xorg .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Before starting Xorg for the first time, is useful to rebuild the library cache by running **`ldconfig`** as the `root`{.systemitem} user.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Before starting Xorg for the first time, is often needed to reboot the system to ensure all appropriate daemons are started and appropriate security issues are properly set. As an alternative, logging out and logging back in may work, but as of this writing has not been tested.
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If Xorg hangs for some reason (for example, lacking a proper input driver), the system may stop responding to any user input. As a precaution, you can enable a magic [**SysRq**]{.keycap} key before testing Xorg. As the `root`{.systemitem} user, issue:

``` userinput
echo 4 > /proc/sys/kernel/sysrq
```

Then if Xorg hangs, it's possible to use [**Alt**]{.keycap}+[**SysRq**]{.keycap}+[**R**]{.keycap} to reset the keyboard mode. Now it should be able to use [**Ctrl**]{.keycap}+[**Alt**]{.keycap}+[**Fx**]{.keycap} (replace x with a VT number) to switch to another VT. If it works, login and kill Xorg using command line in the new VT.
:::

To test the [Xorg]{.application} installation, issue [**startx**]{.command}. This command brings up a rudimentary window manager called [*twm*]{.emphasis} with three xterm windows and one xclock window. The xterm window in the upper left is a login terminal and running [*exit*]{.emphasis} from this terminal will exit the [X Window]{.application} session. The third xterm window may be obscured on your system by the other two xterms.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When testing [Xorg]{.application} with the [twm]{.application} window manager, there will be several warnings in the Xorg log file, \$HOME/.local/share/xorg/Xorg.0.log, about missing font files. In addition, there will be several warnings on the text mode terminal (usually tty1) about missing fonts. These warnings do not affect functionality, but can be removed if desired by installing the [Xorg Legacy Fonts](x7legacy.md "Xorg Legacy"){.xref}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On systems with NVIDIA GPUs which are using the Nouveau kernel driver, you may encounter occasional GPU crashes and hangs. If this problem occurs, downgrade to the latest version of the Linux 6.1 kernel.
:::

Generally, there is no specific configuration required for [Xorg]{.application}, but customization is possible. For details, see [the section called “Setting up Xorg Devices”](xorg-config.md#xconfig "Setting up Xorg Devices"){.xref} below.
::::::::

:::: {.configuration lang="en"}
## []{#checking-dri}Checking the Direct Rendering Infrastructure (DRI) Installation {#checking-the-direct-rendering-infrastructure-dri-installation .sect2}

DRI is a framework for allowing software to access graphics hardware in a safe and efficient manner. It is installed in [X]{.application} by default (using [Mesa]{.application}) if you have a supported video card.

To check if DRI drivers are installed properly, check the log file `$HOME/.local/share/xorg/Xorg.0.log`{.filename} (or `/var/log/Xorg.0.log`{.filename} if you have built [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref} with the suid bit) for statements such as:

``` screen
(II) modeset(0): [DRI2] Setup complete
(II) modeset(0): [DRI2]   DRI driver: crocus
(II) modeset(0): [DRI2]   VDPAU driver: va_gl
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

DRI configuration may differ if you are using alternate drivers, such as traditional DDX drivers, or the proprietary drivers from [NVIDIA](https://www.nvidia.com/page/home.md){.ulink} or [AMD](https://www.amd.com/){.ulink}.
:::

Another way to determine if DRI is working properly is to use one of the two optionally installed OpenGL demo programs in [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}. From an X terminal, run [**glxinfo -B**]{.command} and look for the phrase:

``` screen
name of display: :0
display: :0  screen: 0
direct rendering: Yes
```

If direct rendering is enabled, you can add verbosity by running [**LIBGL_DEBUG=verbose glxinfo**]{.command}. This will show the drivers, device nodes and files used by the DRI system.

To confirm that DRI2 hardware acceleration is working, you can (still in the X terminal) run the command [**glxinfo \| grep -E "(OpenGL vendor\|OpenGL renderer\|OpenGL version)"**]{.command}. If that reports something [*other than*]{.emphasis} `Software Rasterizer`{.literal} then you have working acceleration for the user who ran the command.

If your hardware does not have any DRI2 driver available, it will use a Software Rasterizer for Direct Rendering. In such cases, you can use a new, LLVM-accelerated, Software Rasterizer called LLVMPipe. In order to build LLVMPipe just make sure that [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} is present at Mesa build time. Note that all decoding is done on the CPU instead of the GPU, so the display will run slower than with hardware acceleration. To check if you are using LLVMpipe, review the output of the glxinfo command above. An example of the output using the Software Rasterizer is shown below:

``` screen
OpenGL vendor string: VMware, Inc.
OpenGL renderer string: Gallium 0.4 on llvmpipe (LLVM 3.5, 256 bits)
OpenGL version string: 3.0 Mesa 10.4.5
```

You can also force LLVMPipe by exporting the `LIBGL_ALWAYS_SOFTWARE=1`{.envar} environment variable when starting Xorg.

Again, if you have built the Mesa OpenGL demos, you can also run the test program [**glxgears**]{.command}. This program brings up a window with three gears turning. The X terminal will display how many frames were drawn every five seconds, so this will give a rough benchmark. The window is scalable, and the frames drawn per second is highly dependent on the size of the window. On some hardware, [**glxgears**]{.command} will run synchronized with the vertical refresh signal and the frame rate will be approximately the same as the monitor refresh rate.
::::

::: {.configuration lang="en"}
## []{#xorg-debug}Debugging Xorg {#debugging-xorg .sect2}

When starting xorg, there are a couple of ways to check what any issues you may have. If the system comes up, you can see what driver is being used by running [**xdriinfo**]{.command}. If there are issues or you just want to check, look at `Xorg.0.log`{.filename}.

The location of `Xorg.0.log`{.filename} depends on how Xorg is installed. If the instructions in the book are followed closely and Xorg is started from the command line, it will be located in the `$HOME/.local/share/xorg/`{.filename} directory. If Xorg is started by a display manager (e.g. [lightdm-1.32.0](lightdm.md "lightdm-1.32.0"){.xref}, [sddm-0.21.0](sddm.md "sddm-0.21.0"){.xref}, or [GDM-50.1](gdm.md "GDM-50.1"){.xref}) or if `$XORG_PREFIX/bin/Xorg`{.filename} has the suid bit set, it will be located in the `/var/log/`{.filename} directory.

### Xorg.0.log Issues

When you look at Xorg.0.log, check for entries like (EE) or (WW). Below are some common entries:

##### (WW) Open ACPI failed (/var/run/acpid.socket)

This warning is because [acpid-2.0.34](../general/acpid.md "acpid-2.0.34"){.xref} is not installed. If you are not on a laptop, it can be safely ignored. On a laptop, install [acpid-2.0.34](../general/acpid.md "acpid-2.0.34"){.xref} to enable actions like recognizing when the lid is closed.

##### (WW) VGA arbiter: cannot open kernel arbiter, no multi-card support

This warning is displayed when a regular user starts Xorg. The library `libpciaccess.so`{.filename} issues this warning when it tries to open `/dev/vga_arbiter`{.filename}. If there is no more than one legacy PCI (not PCIe) graphic cards on the system, it can safely be ignored. If really necessary, the permissions of this device can be changed by adding a udev rule and adding the local user to the video group. As the `root`{.systemitem} user:

``` root
cat > /etc/udev/rules.d/99-vga-arbiter.rules << EOF
# /etc/udev/rules.d/99-vga-arbiter.rules: Set vga_arbiter group/mode

ACTION=="add", KERNEL=="vga_arbiter", GROUP="video" MODE="0660"
EOF

usermod -a -G video <user running xorg>
```
:::

:::: {.configuration lang="en"}
## []{#hybrid-graphics}Hybrid Graphics {#hybrid-graphics .sect2}

Hybrid Graphics is still in experimental state for Linux. Xorg Developers have developed a technology called PRIME that can be used for switching between integrated and muxless discrete GPU at will. Automatic switching is not possible at the moment.

In order to use PRIME for GPU switching, make sure that you are using Linux Kernel 3.4 or later (recommended). You will need latest DRI and DDX drivers for your hardware and [Xorg Server]{.application} 1.13 or later.

[Xorg Server]{.application} should load both GPU drivers automatically. You can check that by running:

``` userinput
xrandr --listproviders
```

There should be two (or more) providers listed, for example:

``` screen
Providers: number : 2
Provider 0: id: 0x7d cap: 0xb, Source Output, Sink Output, Sink Offload crtcs: 3 outputs: 4 associated providers: 1 name:modesetting
Provider 1: id: 0x56 cap: 0xf, Source Output, Sink Output, Source Offload, Sink Offload crtcs: 6 outputs: 1 associated providers: 1 name:modesetting
```

In order to be able to run a GLX application on a discrete GPU, you will need to run the following command, where \<provider\> is the id of the more powerful discrete card, and \<sink\> is the id of card which has a display connected:

``` userinput
xrandr --setprovideroffloadsink <provider> <sink>
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

With the [Xorg]{.application} modesetting driver, which is DRI3 capable, the above command is no longer necessary. It does no harm however.
:::

Then, you will need to export the `DRI_PRIME=1`{.envar} environment variable each time you want the powerful GPU to be used. For example,

``` userinput
DRI_PRIME=1 glxinfo | grep -E "(OpenGL vendor|OpenGL renderer|OpenGL version)"
```

will show OpenGL vendor, renderer and version for the discrete GPU.

If the last command reports same OpenGL renderer with and without `DRI_PRIME=1`{.envar}, you will need to check your installation.
::::

::::: {.configuration lang="en"}
## []{#xconfig}Setting up Xorg Devices {#setting-up-xorg-devices .sect2}

For most hardware configurations, modern Xorg will automatically get the server configuration correct without any user intervention. There are, however, some cases where auto-configuration will be incorrect. Following are some example manual configuration items that may be of use in these instances.

::: {.sect3 lang="en"}
### []{#xinput}Setting up X Input Devices {#setting-up-x-input-devices .sect3}

For most input devices, no additional configuration will be necessary. This section is provided for informational purposes only.

A sample default XKB setup could look like the following (executed as the `root`{.systemitem} user):

``` root
cat > /etc/X11/xorg.conf.d/xkb-defaults.conf << "EOF"
Section "InputClass"
    Identifier "XKB Defaults"
    MatchIsKeyboard "yes"
    Option "XkbLayout" "fr"
    Option "XkbOptions" "terminate:ctrl_alt_bksp"
EndSection
EOF
```

The [“[XkbLayout]{.quote}”]{.quote} line is an example for a French (AZERTY) keyboard. Change it to your keyboard model. That line is not needed for a QWERTY (US) keyboard.
:::

::: {.sect3 lang="en"}
### []{#xdisplay}Fine Tuning Display Settings {#fine-tuning-display-settings .sect3}

If you want to set the monitor resolution for Xorg, first run [**xrandr**]{.command} in a X terminal to list the supported resolutions and the corresponding refresh rates. For example, it outputs the following for one monitor:

``` screen
Screen 0: minimum 16 x 16, current 5760 x 2160, maximum 32767 x 32767
DP-1 connected primary 3840x2160+0+0 (normal left inverted right x axis y axis) 600mm x 340mm
   3840x2160     59.98*+
   2048x1536     59.95
   1920x1440     59.90
   1600x1200     59.87
   1440x1080     59.99
   1400x1050     59.98
   1280x1024     59.89
   1280x960      59.94
   1152x864      59.96
   1024x768      59.92
   800x600       59.86
   640x480       59.38
```

From the output we can see the monitor is identified `DP-1`{.literal}. Select a suitable resolution from the output list, for example `1920x1440`{.literal}. Then as the `root`{.systemitem} user, create a configuration file for the Xorg server:

``` root
cat > /etc/X11/xorg.conf.d/monitor-DP-1.conf << "EOF"
Section "Monitor"
    Identifier  "DP-1"
    Option      "PreferredMode" "1920x1440"
EndSection
EOF
```

Sometimes [**xrandr**]{.command} may fail to detect some resolution settings supported by the monitor. It usually happens with virtual monitors of virtual machine managers like [qemu-11.0.1](../postlfs/qemu.md "qemu-11.0.1"){.xref} or VMWare: a virtual monitor actually supports all pairs of integers in a range as the resolution, but [**xrandr**]{.command} will only list a few. To use a resolution not listed by [**xrandr**]{.command}, first run [**cvt**]{.command} to get the mode line for the resolution. For example:

``` userinput
cvt 1600 900
# 1600x900 59.95 Hz (CVT 1.44M9) hsync: 55.99 kHz; pclk: 118.25 MHz
Modeline "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
```

As the `root`{.systemitem} user, create a Xorg server configuration file containing this mode line, and specify the mode as preferred mode:

``` root
cat > /etc/X11/xorg.conf.d/monitor-DP-1.conf << "EOF"
Section "Monitor"
    Identifier  "DP-1"
    Modeline    "1600x900_60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
    Option      "PreferredMode"   "1600x900_60.00"
EndSection
EOF
```

Some high-end LCD monitors support a refresh rate higher than 100 Hz but [**xrandr**]{.command} may fail to recognize the supported refresh rate and use 60 Hz instead. This issue would prevent you from utilizing the full capability of the monitor, and may cause the screen to flicker or show [“[artifacts]{.quote}”]{.quote} like meshes or grids. To resolve the issue, again use [**cvt**]{.command} to get the mode line with a custom refresh rate:

``` userinput
cvt 3840 2160 144
# 3840x2160 143.94 Hz (CVT) hsync: 338.25 kHz; pclk: 1829.25 MHz
Modeline "3840x2160_144.00"  1829.25  3840 4200 4624 5408  2160 2163 2168 2350 -hsync +vsync
```

Then paste it into the Xorg server configuration file and set it as the preferred mode.

Another common setup is having multiple server layouts for use in different environments. Though the server will automatically detect the presence of another monitor, it may get the order incorrect:

``` root
cat > /etc/X11/xorg.conf.d/server-layout.conf << "EOF"
Section "ServerLayout"
    Identifier     "DefaultLayout"
    Screen      0  "Screen0" 0 0
    Screen      1  "Screen1" LeftOf "Screen0"
    Option         "Xinerama"
EndSection
EOF
```

When you drag a window in twm (or any non-compositing window manager) horizontally, you may observe that the vertical borders of the window are broken into multiple segments. This is an example of the visual artifacts called [*screen tearing*]{.emphasis}. To resolve the screen tearing problems, create a configuration file that enables the TearFree option. Note that you must have the Tearfree patch applied from [Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref} for this to function properly, and it may increase memory allocation and reduce performance.

``` root
cat > /etc/X11/xorg.conf.d/20-tearfree.conf << "EOF"
Section "Device"
   Identifier "Graphics Adapter"
   Driver     "modesetting"
   Option     "TearFree" "true"
EndSection
EOF
```

With modern Xorg, little or no additional graphic card configuration is necessary. If you should need extra options passed to your video driver, add them into the `Device`{.literal} section as well. The options supported by the modesetting driver are documented in the man page [modesetting(4)](https://man.archlinux.org/man/modesetting.4){.ulink}.
:::
:::::
:::::::::::::::::

::: navfooter
-   [Prev](xinit.md "xinit-1.4.4"){accesskey="p"}

    xinit-1.4.4

-   [Next](tuning-fontconfig.md "Tuning Fontconfig"){accesskey="n"}

    Tuning Fontconfig

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

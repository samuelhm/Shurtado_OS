::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 10. Making the LFS System Bootable

-   [Prev](fstab.md "Creating the /etc/fstab File"){accesskey="p"}

    Creating the /etc/fstab File

-   [Next](grub.md "Using GRUB to Set Up the Boot Process"){accesskey="n"}

    Using GRUB to Set Up the Boot Process

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-bootable-kernel}10.3. Linux-7.0.10 {#linux-7.0.10 .sect1}

::::::::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Linux package contains the Linux kernel.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.4 - 32 SBU (typically about 2.5 SBU)]{.segbody}
:::

::: seg
**Required disk space:** [1.7 - 14 GB (typically about 2.3 GB)]{.segbody}
:::
:::::
::::::
:::::::

::::::::::: {.installation lang="en"}
## 10.3.1. Installation of the kernel {#installation-of-the-kernel .sect2}

Building the kernel involves a few steps---configuration, compilation, and installation. Read the `README`{.filename} file in the kernel source tree for alternative methods to the way this book configures the kernel.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

Building the linux kernel for the first time is one of the most challenging tasks in LFS. Getting it right depends on the specific hardware for the target system and your specific needs. There are almost 12,000 configuration items that are available for the kernel although only about a third of them are needed for most computers. The LFS editors recommend that users not familiar with this process follow the procedures below fairly closely. The objective is to get an initial system to a point where you can log in at the command line when you reboot later in [Section 11.3, "Rebooting the System."](../chapter11/reboot.md "11.3. Rebooting the System"){.xref} At this point optimization and customization is not a goal.

For general information on kernel configuration see [https://www.linuxfromscratch.org/hints/downloads/files/kernel-configuration.txt](https://www.linuxfromscratch.org/hints/downloads/files/kernel-configuration.txt){.ulink}. Additional information about configuring and building the kernel can be found at [https://anduin.linuxfromscratch.org/LFS/kernel-nutshell/](https://anduin.linuxfromscratch.org/LFS/kernel-nutshell/){.ulink}. These references are a bit dated, but still give a reasonable overview of the process.

If all else fails, you can ask for help on the [lfs-support](https://www.linuxfromscratch.org/mail.html){.ulink} mailing list. Note that subscribing is required in order for the list to avoid spam.
:::

Prepare for compilation by running the following command:

``` userinput
make mrproper
```

This ensures that the kernel tree is absolutely clean. The kernel team recommends that this command be issued prior to each kernel compilation. Do not rely on the source tree being clean after un-tarring.

There are several ways to configure the kernel options. Usually, this is done through a menu-driven interface, for example:

``` userinput
make menuconfig
```

::: variablelist
**The meaning of optional make environment variables:**

[*`LANG=<host_LANG_value> LC_ALL=`*]{.term}

:   This establishes the locale setting to the one used on the host. This may be needed for a proper menuconfig ncurses interface line drawing on a UTF-8 linux text console.

    If used, be sure to replace *`<host_LANG_value>`* by the value of the `$LANG`{.envar} variable from your host. You can alternatively use instead the host\'s value of `$LC_ALL`{.envar} or `$LC_CTYPE`{.envar}.

[[**make menuconfig**]{.command}]{.term}

:   This launches an ncurses menu-driven interface. For other (graphical) interfaces, type [**make help**]{.command}.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A good starting place for setting up the kernel configuration is to run [**make defconfig**]{.command}. This will set the base configuration to a good state that takes your current system architecture into account.

Be sure to enable/disable/set the following features or the system might not work correctly or boot at all:

``` screen
General setup --->
  [ ] Compile the kernel with warnings as errors                        [WERROR]
  CPU/Task time and stats accounting --->
    [*] Pressure stall information tracking                                [PSI]
    [ ]   Require boot parameter to enable pressure stall information tracking
                                                     ...  [PSI_DEFAULT_DISABLED]
  < > Enable kernel headers through /sys/kernel/kheaders.tar.xz      [IKHEADERS]
  [*] Control Group support --->                                       [CGROUPS]
    [*]   Memory controller                                              [MEMCG]
    [ /*] CPU controller --->                                     [CGROUP_SCHED]
      # This may cause some systemd features malfunction:
      [ ] Group scheduling for SCHED_RR/FIFO                    [RT_GROUP_SCHED]
  [ ] Configure standard kernel features (expert users) --->            [EXPERT]

Processor type and features --->
  [*] Build a relocatable kernel                                   [RELOCATABLE]
  [*]   Randomize the address of the kernel image (KASLR)       [RANDOMIZE_BASE]

General architecture-dependent options --->
  [*] Stack Protector buffer overflow detection                 [STACKPROTECTOR]
  [*]   Strong Stack Protector                           [STACKPROTECTOR_STRONG]

[*] Networking support --->                                                [NET]
  Networking options --->
    [*] TCP/IP networking                                                 [INET]
    <*>   The IPv6 protocol --->                                          [IPV6]

Device Drivers --->
  Generic Driver Options --->
    [ ] Support for uevent helper                                [UEVENT_HELPER]
    [*] Maintain a devtmpfs filesystem to mount at /dev               [DEVTMPFS]
    [*]   Automount devtmpfs at /dev, after the kernel mounted the rootfs
                                                           ...  [DEVTMPFS_MOUNT]
    Firmware loader --->
      [ ] Enable the firmware sysfs fallback mechanism   [FW_LOADER_USER_HELPER]
  Firmware Drivers --->
    [*] Export DMI identification via sysfs to userspace                 [DMIID]
    [*] Mark VGA/VBE/EFI FB as generic system framebuffer       [SYSFB_SIMPLEFB]
  Graphics support --->
    <*>    Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    [*]    Display a user-friendly message when a kernel panic occurs
                                                                ...  [DRM_PANIC]
    (kmsg)   Panic screen formatter                           [DRM_PANIC_SCREEN]
    Supported DRM clients --->
      [*] Enable legacy fbdev support for your modesetting driver
                                                      ...  [DRM_FBDEV_EMULATION]
    Drivers for system framebuffers --->
      <*> Simple framebuffer driver                              [DRM_SIMPLEDRM]
    Console display driver support --->
      [*] Framebuffer Console support                      [FRAMEBUFFER_CONSOLE]

File systems --->
  [*] Inotify support for userspace                               [INOTIFY_USER]
  Pseudo filesystems --->
    [*] Tmpfs virtual memory file system support (former shm fs)         [TMPFS]
    [*]   Tmpfs POSIX Access Control Lists                     [TMPFS_POSIX_ACL]
```

Enable some additional features if you are building a 64-bit system. If you are using menuconfig, enable them in the order of *`CONFIG_PCI_MSI`* first, then *`CONFIG_IRQ_REMAP`*, at last *`CONFIG_X86_X2APIC`* because an option only shows up after its dependencies are selected.

``` screen
Processor type and features --->
  [*] x2APIC interrupt controller architecture support              [X86_X2APIC]

Device Drivers --->
  [*] PCI support --->                                                     [PCI]
    [*] Message Signaled Interrupts (MSI and MSI-X)                    [PCI_MSI]
  [*] IOMMU Hardware Support --->                                [IOMMU_SUPPORT]
    [*] Support for Interrupt Remapping                              [IRQ_REMAP]
```

If you are building a 32-bit system, adjust the configuration so the kernel will be able to use up to 4GB physical RAM:

``` screen
Processor type and features --->
  [*] High Memory Support                                            [HIGHMEM4G]
```

If the partition for the LFS system is in a NVME SSD (i. e. the device node for the partition is `/dev/nvme*`{.filename} instead of `/dev/sd*`{.filename}), enable NVME support or the LFS system won\'t boot:

``` screen
Device Drivers --->
  NVME Support --->
    <*> NVM Express block device                                  [BLK_DEV_NVME]
```

If you are booting with UEFI, adjust the kernel so it can have EFI partition and runtime support, on top of supporting the DOS VFAT filesystem which is needed for the EFI partition:

``` screen
Processor type and features --->
  [*] EFI runtime service support                                          [EFI]
  [*]   EFI stub support                                              [EFI_STUB]

-*- Enable the block layer --->                                          [BLOCK]
  Partition Types --->
    [ /*] Advanced partition selection                      [PARTITION_ADVANCED]
    [*]     EFI GUID Partition support                           [EFI_PARTITION]

File systems --->
  DOS/FAT/EXFAT/NT Filesystems --->
    <*/M> VFAT (Windows-95) fs support                                 [VFAT_FS]
  Pseudo filesystems --->
    <*/M> EFI Variable filesystem                                    [EFIVAR_FS]
  -*- Native language support --->                                         [NLS]
    <*/M> Codepage 437 (United States, Canada)                [NLS_CODEPAGE_437]
    <*/M> NLS ISO 8859-1  (Latin 1; Western European Languages)  [NLS_ISO8859_1]
```

If `PARTITION_ADVANCED`{.literal} is not selected, `EFI_PARTITION`{.literal} will be hidden but implicitly selected. Don\'t select `PARTITION_ADVANCED`{.literal} just because you need to boot via UEFI.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

While \"The IPv6 Protocol\" is not strictly required, it is highly recommended by the systemd developers.
:::

There are several other options that may be desired depending on the requirements for the system. For a list of options needed for BLFS packages, see the [BLFS Index of Kernel Settings](https://www.linuxfromscratch.org/blfs/view/systemd/longindex.html#kernel-config-index){.ulink}.

::: variablelist
**The rationale for the above configuration items:**

[*`Randomize the address of the kernel image (KASLR)`*]{.term}

:   Enable ASLR for kernel image, to mitigate some attacks based on fixed addresses of sensitive data or code in the kernel.

[*`Compile the kernel with warnings as errors`*]{.term}

:   This may cause building failure if the compiler and/or configuration are different from those of the kernel developers.

[*`Enable kernel headers through /sys/kernel/kheaders.tar.xz`*]{.term}

:   This will require [**cpio**]{.command} building the kernel. [**cpio**]{.command} is not installed by LFS.

[*`Configure standard kernel features (expert users)`*]{.term}

:   This will make some options show up in the configuration interface but changing those options may be dangerous. Do not use this unless you know what you are doing.

[*`Strong Stack Protector`*]{.term}

:   Enable SSP for the kernel. We\'ve enabled it for the entire userspace with *`--enable-default-ssp`* configuring GCC, but the kernel does not use GCC default setting for SSP. We enable it explicitly here.

[*`Support for uevent helper`*]{.term}

:   Having this option set may interfere with device management when using Udev.

[*`Maintain a devtmpfs`*]{.term}

:   This will create automated device nodes which are populated by the kernel, even without Udev running. Udev then runs on top of this, managing permissions and adding symlinks. This configuration item is required for all users of Udev.

[*`Automount devtmpfs at /dev`*]{.term}

:   This will mount the kernel view of the devices on /dev upon switching to root filesystem just before starting init.

[*`Display a user-friendly message when a kernel panic occurs`*]{.term}

:   This will make the kernel correctly display the message in case a kernel panic happens and a running DRM driver supports to do so. Without this, it would be more difficult to diagnose a panic: if no DRM driver is running, we\'d be on the VGA console which can only hold 24 lines and the relevant kernel message is often flushed away; if a DRM driver is running, the display is often completely messed up on panic. As of Linux-6.12, none of the dedicated drivers for mainstream GPU models really supports this, but it\'s supported by the ["[Simple framebuffer driver]{.quote}"]{.quote} which runs on the VESA (or EFI) framebuffer before the dedicated GPU driver is loaded. If the dedicated GPU driver is built as a module (instead of a part of the kernel image) and no initramfs is used, this functionality will work just fine before the root file system is mounted and it\'s already enough for providing information about most LFS configuration errors causing a panic (for example, an incorrect *`root=`* setting in [Section 10.4, "Using GRUB to Set Up the Boot Process"](grub.md "10.4. Using GRUB to Set Up the Boot Process"){.xref}).

[*`Panic screen formatter`*]{.term}

:   Set this `kmsg`{.literal} to make sure the last kernel messages lines are displayed when a kernel panic happens. The default, `user`{.literal}, would make the kernel show only a ["[user friendly]{.quote}"]{.quote} panic message which is not helpful on diagnostic. The third choice, `qr_code`{.literal}, would make the kernel to compress the last kernel message lines into a QR code and display it. The QR code can hold more message lines than plain text and it can be decoded with an external device (like a smart phone). But it requires a Rust compiler that LFS does not provide.

[*`Mark VGA/VBE/EFI FB as generic system framebuffer`* and *`Simple framebuffer driver`*]{.term}

:   These allow to use the VESA framebuffer (or the EFI framebuffer if booting the LFS system via UEFI) as a DRM device. The VESA framebuffer will be set up by GRUB (or the EFI framebuffer will be set up by the UEFI firmware), so the DRM panic handler can function before the GPU-specific DRM driver is loaded.

[*`Enable legacy fbdev support for your modesetting driver`* and *`Framebuffer Console support`*]{.term}

:   These are needed to display the Linux console on a GPU driven by a DRI (Direct Rendering Infrastructure) driver. As `CONFIG_DRM`{.option} (Direct Rendering Manager) is enabled, we should enable these two options as well or we\'ll see a blank screen once the DRI driver is loaded.

[*`Support x2apic`*]{.term}

:   Support running the interrupt controller of 64-bit x86 processors in x2APIC mode. x2APIC may be enabled by firmware on 64-bit x86 systems, and a kernel without this option enabled will panic on boot if x2APIC is enabled by firmware. This option has no effect, but also does no harm if x2APIC is disabled by the firmware.
:::

Alternatively, [**make oldconfig**]{.command} may be more appropriate in some situations. See the `README`{.filename} file for more information.

If desired, skip kernel configuration by copying the kernel config file, `.config`{.filename}, from the host system (assuming it is available) to the unpacked `linux-7.0.10`{.filename} directory. However, we do not recommend this option. It is often better to explore all the configuration menus and create the kernel configuration from scratch.

Compile the kernel image and modules:

``` userinput
make
```

If using kernel modules, module configuration in `/etc/modprobe.d`{.filename} may be required. Information pertaining to modules and kernel configuration is located in [Section 9.3, "Overview of Device and Module Handling"](../chapter09/udev.md "9.3. Overview of Device and Module Handling"){.xref} and in the kernel documentation in the `linux-7.0.10/Documentation`{.filename} directory. Also, [modprobe.d(5)](https://man.archlinux.org/man/modprobe.d.5){.ulink} may be of interest.

Unless module support has been disabled in the kernel configuration, install the modules with:

``` userinput
make modules_install
```

After kernel compilation is complete, additional steps are required to complete the installation. Some files need to be copied to the `/boot`{.filename} directory.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you\'ve decided to use a separate `/boot`{.filename} partition for the LFS system (maybe sharing a `/boot`{.filename} partition with the host distro), the files copied below should go there. The easiest way to do that is to create the entry for `/boot`{.filename} in `/etc/fstab`{.filename} first (read the previous section for details), then issue the following command as the `root`{.systemitem} user in the [*chroot environment*]{.emphasis}:

``` userinput
mount /boot
```

The path to the device node is omitted in the command because [**mount**]{.command} can read it from `/etc/fstab`{.filename}.
:::

The path to the kernel image may vary depending on the platform being used. The filename below can be changed to suit your taste, but the stem of the filename should be [*vmlinuz*]{.emphasis} to be compatible with the automatic setup of the boot process described in the next section. The following command assumes an x86 architecture:

``` userinput
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-7.0.10-lfs-r13.0-131-systemd
```

`System.map`{.filename} is a symbol file for the kernel. It maps the function entry points of every function in the kernel API, as well as the addresses of the kernel data structures for the running kernel. It is used as a resource when investigating kernel problems. Issue the following command to install the map file:

``` userinput
cp -iv System.map /boot/System.map-7.0.10
```

The kernel configuration file `.config`{.filename} produced by the [**make menuconfig**]{.command} step above contains all the configuration selections for the kernel that was just compiled. It is a good idea to keep this file for future reference:

``` userinput
cp -iv .config /boot/config-7.0.10
```

Install the documentation for the Linux kernel:

``` userinput
cp -r Documentation -T /usr/share/doc/linux-7.0.10
```

It is important to note that the files in the kernel source directory are not owned by [*root*]{.emphasis}. Whenever a package is unpacked as user [*root*]{.emphasis} (like we did inside chroot), the files have the user and group IDs of whatever they were on the packager\'s computer. This is usually not a problem for any other package to be installed because the source tree is removed after the installation. However, the Linux source tree is often retained for a long time. Because of this, there is a chance that whatever user ID the packager used will be assigned to somebody on the machine. That person would then have write access to the kernel source.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In many cases, the configuration of the kernel will need to be updated for packages that will be installed later in BLFS. Unlike other packages, it is not necessary to remove the kernel source tree after the newly built kernel is installed.

If the kernel source tree is going to be retained, run [**chown -R 0:0**]{.command} on the `linux-7.0.10`{.filename} directory to ensure all files are owned by user [*root*]{.emphasis}.

If you are updating the configuration and rebuilding the kernel from a retained kernel source tree, normally you should [**not**]{.bold} run the [**make mrproper**]{.command} command. The command would purge the `.config`{.filename} file and all the `.o`{.filename} files from the previous build. Despite it\'s easy to restore `.config`{.filename} from the copy in `/boot`{.filename}, purging all the `.o`{.filename} files is still a waste: for a simple configuration change, often only a few `.o`{.filename} files need to be (re)built and the kernel build system will correctly skip other `.o`{.filename} files if they are not purged.

On the other hand, if you\'ve upgraded GCC, you should run [**make clean**]{.command} to purge all the `.o`{.filename} files from the previous build, or the new build may fail.
:::

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Some kernel documentation recommends creating a symlink from `/usr/src/linux`{.filename} pointing to the kernel source directory. This is specific to kernels prior to the 2.6 series and [*must not*]{.emphasis} be created on an LFS system as it can cause problems for packages you may wish to build once your base LFS system is complete.
:::
:::::::::::

:::::::: {.content lang="en"}
## []{#contents-kernel}10.3.2. Contents of Linux {#contents-of-linux .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed files:** [config-7.0.10, vmlinuz-7.0.10-lfs-r13.0-131-systemd, and System.map-7.0.10]{.segbody}
:::

::: seg
**Installed directories:** [/lib/modules, /usr/share/doc/linux-7.0.10]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#config}[`config-7.0.10`{.filename}]{.term}                             Contains all the configuration selections for the kernel
  []{#lfskernel}[`vmlinuz-7.0.10-lfs-r13.0-131-systemd`{.filename}]{.term}   The engine of the Linux system. When turning on the computer, the kernel is the first part of the operating system that gets loaded. It detects and initializes all components of the computer\'s hardware, then makes these components available as a tree of files to the software and turns a single CPU into a multitasking machine capable of running scores of programs seemingly at the same time
  []{#System.map}[`System.map-7.0.10`{.filename}]{.term}                     A list of addresses and symbols; it maps the entry points and addresses of all the functions and data structures in the kernel
  -------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](fstab.md "Creating the /etc/fstab File"){accesskey="p"}

    Creating the /etc/fstab File

-   [Next](grub.md "Using GRUB to Set Up the Boot Process"){accesskey="n"}

    Using GRUB to Set Up the Boot Process

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
